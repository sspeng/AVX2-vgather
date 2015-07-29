/*********************************************************

 Copyright (c) 2011-2012, Naoya Maruyama

 All rights reserved.

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are
 met:

 * Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.

 * Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.

 * Neither the name of RIKEN AICS nor the names of its contributors may
   be used to endorse or promote products derived from this software
   without specific prior written permission.

   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
   A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
   HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
   DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
   THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

***********************************************************************************/
/*
Minor edits made to this program by Jim Dempsey of QuickThread Programming, LLC

	1) Change to use OpenMP timing function
	2) Change to permit NX to be optionally passed in as a compiler line -DNX=nnnn
	3) Add assert to assure array answer is allocated
	4) Add free(answer) at end of program
*/

/*
to run the single stencil multiple times to build a model to predicate performance 

by James Lin 
*/


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <math.h>
#include <omp.h>
#include <assert.h>
#include <immintrin.h>

#define REAL double
#if !defined(NX)
#define NX 256
#endif
#define NXP nx

#ifndef M_PI
#define M_PI (3.1415926535897932384626)
#endif


void init(REAL *buff, const int nx, const int ny, const int nz,
          const REAL kx, const REAL ky, const REAL kz,
          const REAL dx, const REAL dy, const REAL dz,
          const REAL kappa, const REAL time) {
  REAL ax, ay, az;
  int jz, jy, jx;
  ax = exp(-kappa*time*(kx*kx));
  ay = exp(-kappa*time*(ky*ky));
  az = exp(-kappa*time*(kz*kz));
  for (jz = 0; jz < nz; jz++) {
    for (jy = 0; jy < ny; jy++) {
      for (jx = 0; jx < nx; jx++) {
        int j = jz*NXP*ny + jy*NXP + jx;
        REAL x = dx*((REAL)(jx + 0.5));
        REAL y = dy*((REAL)(jy + 0.5));
        REAL z = dz*((REAL)(jz + 0.5));
        REAL f0 = (REAL)0.125
          *(1.0 - ax*cos(kx*x))
          *(1.0 - ay*cos(ky*y))
          *(1.0 - az*cos(kz*z));
        buff[j] = f0;
      }
    }
  }
}

REAL accuracy(const REAL *b1, REAL *b2, const int len, const int count) {
  REAL err = 0.0;
  int i;
  for (i = 0; i < len; i++) {
    err += (b1[i] - b2[i]) * (b1[i] - b2[i]);
  }
  return (REAL)sqrt(err/len) / count;
}

void
diffusion_baseline(REAL *restrict f1, REAL *restrict f2, int nx, int ny, int nz,
                   REAL ce, REAL cw, REAL cn, REAL cs, REAL ct,
                   REAL cb, REAL cc, REAL dt,
                   int count) {
  int i;
  for (i = 0; i < count; ++i) {
    for (int z = 0; z < nz; z++) {
      for (int y = 0; y < ny; y++) {
        for (int x = 0; x < nx; x+=4) {
          int c, w, e, n, s, b, t;
          __m256d _a, _b, _c, _f2_t;


          c =  x + y * NXP + z * NXP * ny;
          //w = (x == 0)    ? c : c - 1;
          //e = (x == NXP-1) ? c : c + 1;
          n = (y == 0)    ? c : c - NXP;
          s = (y == ny-1) ? c : c + NXP;
          b = (z == 0)    ? c : c - NXP * ny;
          t = (z == nz-1) ? c : c + NXP * ny;


_f2_t = _mm256_setzero_pd(); //init f2_t

          // Now compute cc * f1_t[c]
          _a = _mm256_load_pd(f1 + c); //load 4 double from f1_t[c]
          _b = _mm256_set1_pd(cc); // broadcast cc to 4 double
          _f2_t = _mm256_fmadd_pd(_a, _b, _f2_t);  // (_a*_b)+_f2_t equals to cc * f1_t[c] (since _f2_t == 0)


          // Now compute cw * f1_t[w]
          if (x == 0) {
              _a = _mm256_load_pd(f1+c); // low->high [c,c+1,c+2,c+3]
              _a = _mm256_permute4x64_pd(_a, _MM_SHUFFLE(2,1,0,0)); // n -> nth [c,c,c+1,c+2]
          } else {
              _a = _mm256_loadu_pd(f1+c-1); //unaligned load as [c+1] is not 32-byte aligned, load low portion
          }
          _b = _mm256_set1_pd(cw); // broadcast cw to 4 double
          _f2_t = _mm256_fmadd_pd(_a, _b, _f2_t);  // cw * f1_t[c]


          // Now compute ce * f1_t[e]
          if (x >= NXP-4) {
              _a = _mm256_load_pd(f1+c); // low->high [c,c+1,c+2,c+3]
              _a = _mm256_permute4x64_pd(_a, _MM_SHUFFLE(3,3,2,1)); // n -> nth [c+1,c+2,c+3,c+3]
          } else {
              _a = _mm256_loadu_pd(f1+c+1); //unaligned load as [c+1] is not 32-byte aligned, load low portion
          }
          _b = _mm256_set1_pd(ce); // broadcast ce to 4 double
          _f2_t = _mm256_fmadd_pd(_a, _b, _f2_t);  // ce * f1_t[c+1]


          // Now compute cs * f1_t[s]
          _a = _mm256_load_pd(f1 + s); //load 4 double from f1_t
          _b = _mm256_set1_pd(cs); // broadcast cs to 4 double
          _f2_t = _mm256_fmadd_pd(_a, _b, _f2_t);  // (_a*_b)+_f2_t equals to cs * f1_t[s]


          // Now compute cn * f1_t[n]
          _a = _mm256_load_pd(f1 + n); //load 4 double from f1_t
          _b = _mm256_set1_pd(cn); // broadcast cn to 4 double
          _f2_t = _mm256_fmadd_pd(_a, _b, _f2_t);  // (_a*_b)+_f2_t equals to cn * f1_t[n]


          // Now compute cb * f1_t[b]
          _a = _mm256_load_pd(f1 + b); //load 4 double from f1_t
          _b = _mm256_set1_pd(cb); // broadcast cb to 4 double
          _f2_t = _mm256_fmadd_pd(_a, _b, _f2_t);  // (_a*_b)+_f2_t equals to cb * f1_t[b]


          // Now compute ct * f1_t[t]
          _a = _mm256_load_pd(f1 + t); //load 4 double from f1_t
          _b = _mm256_set1_pd(ct); // broadcast ct to 4 double
          _f2_t = _mm256_fmadd_pd(_a, _b, _f2_t);  // (_a*_b)+_f2_t equals to ct * f1_t[t]


          // Now store result to f2_t[c]
          _mm256_store_pd(f2 + c, _f2_t); //aligned store for f2_t[c]
        }
      }
    }
    REAL *t = f1;
    f1 = f2;
    f2 = t;
  }
  return;
}

static double cur_second(void) {
	return omp_get_wtime();
}


void dump_result(REAL *f, int nx, int ny, int nz, char *out_path) {
  FILE *out = fopen(out_path, "w");
  assert(out);
  size_t nitems = nx * ny * nz;
  fwrite(f, sizeof(REAL), nitems, out);
  fclose(out);
}

int main(int argc, char *argv[])
{
  
  for (int nSize=16; nSize<=256; nSize+=4) { // begin of nSize loop
   
  double time_begin, time_end;

  int    nx    = nSize;
  int    ny    = nSize;
  int    nz    = nSize;

  REAL *f1 = (REAL *)_mm_malloc(sizeof(REAL)*nSize*nSize*nSize, 32);
  REAL *f2 = (REAL *)_mm_malloc(sizeof(REAL)*nSize*nSize*nSize, 32);
  REAL *answer = (REAL *)_mm_malloc(sizeof(REAL) * NXP*ny*nz, 32);
  assert(f1 != NULL);
  assert(f2 != NULL);
  assert(answer != NULL);
  REAL *f_final = NULL;

  REAL   time  = 0.0;
  int    count = 0;

  REAL l, dx, dy, dz, kx, ky, kz, kappa, dt;
  REAL ce, cw, cn, cs, ct, cb, cc;

  l = 1.0;
  kappa = 0.1;
  dx = dy = dz = l / nx;
  kx = ky = kz = 2.0 * M_PI;
  dt = 0.1*dx*dx / kappa;

  count = 6553;
//  // original count computed with NX==256 and used
////  count = 0.1 / dt;
//  // This produced a count of 6553
//  // adjust count to provide for different value of NX
//  // such that runtimes are approximately the same
//  count = 6553. * (256.*256.*256.) / ((REAL)nx*(REAL)ny*(REAL)nz);
#if defined(__MIC__)
  // reduce by factor of 100 to get reasonable serial runtime
  count /= 100;
#else
  // reduce by factor of 20 to get reasonable serial runtime
  count /= 100;
#endif
  f_final = (count % 2)? f2 : f1;

  // To avoid chaching effects for small message sizes //
  int fact = 1, nn = nx*ny*nz;
  for(;fact*nn*sizeof(REAL)<100e6;++fact);


  init(f1, nx, ny, nz, kx, ky, kz, dx, dy, dz, kappa, time);

  ce = cw = kappa*dt/(dx*dx);
  cn = cs = kappa*dt/(dy*dy);
  ct = cb = kappa*dt/(dz*dz);
  cc = 1.0 - (ce + cw + cn + cs + ct + cb);

//  printf("Running diffusion kernel %d times, NX is %d\n", count, nSize); fflush(stdout);
//  printf("Running diffusion kernel %d times\n", count); fflush(stdout);
  time_begin = cur_second();
  diffusion_baseline(f1, f2, nx, ny, nz, ce, cw, cn, cs, ct, cb, cc,
                 dt, count);
  time_end = cur_second();
  time = count * dt;
//  dump_result(f_final, nx, ny, nz, "diffusion_result.dat");

  init(answer, nx, ny, nz, kx, ky, kz, dx, dy, dz, kappa, time);
// compute error per iteration
  REAL err = accuracy(f_final, answer, nx*ny*nz, count);
  double elapsed_time = time_end - time_begin;
  REAL gflops = (nx*ny*nz)*13.0*count/elapsed_time * 1.0e-09;
  double thput = (nx * ny * nz) * sizeof(REAL) * 3.0 * count
      / elapsed_time * 1.0e-09;

//print out formated data to plot in mathematica 
printf ("{%d,%3f},", nSize, gflops);

 // fprintf(stderr, "Elapsed time : %.3f (s)\n", elapsed_time);
 // fprintf(stderr, "FLOPS        : %.3f (GFlops)\n", gflops);
 // fprintf(stderr, "Throughput   : %.3f (GB/s)\n", thput);
 // fprintf(stderr, "Accuracy     : %e\n", err);

  _mm_free(f1);
  _mm_free(f2);
  _mm_free(answer);
  
  } // end of multiple Running 
  
  return 0;
}
