# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 16.0.0.056 Beta Build 20150";
# mark_description "501";
# mark_description "-std=c99 -openmp -O3 -fno-alias -opt-prefetch=0 -xCORE-AVX2 -fma -S";
	.file "simd.cpu.c"
	.text
..TXTST0:
# -- Begin  main
	.text
# mark_begin;
       .align    16,0x90
	.globl main
# --- main(int, char **)
main:
# parameter 1: %edi
# parameter 2: %rsi
..B1.1:                         # Preds ..B1.0
..___tag_value_main.1:                                          #142.1
..L2:
                                                          #142.1
        pushq     %rbp                                          #142.1
..___tag_value_main.3:                                          #
        movq      %rsp, %rbp                                    #142.1
..___tag_value_main.4:                                          #
        andq      $-128, %rsp                                   #142.1
        pushq     %r12                                          #142.1
        pushq     %r13                                          #142.1
        pushq     %r14                                          #142.1
        pushq     %r15                                          #142.1
        pushq     %rbx                                          #142.1
        subq      $216, %rsp                                    #142.1
        movl      $10330110, %esi                               #142.1
        movl      $3, %edi                                      #142.1
        call      __intel_new_feature_proc_init                 #142.1
..___tag_value_main.6:                                          #
                                # LOE r12 r13
..B1.86:                        # Preds ..B1.1
        vstmxcsr  (%rsp)                                        #142.1
        movl      $.2.13_2_kmpc_loc_struct_pack.107, %edi       #142.1
        xorl      %esi, %esi                                    #142.1
        orl       $32832, (%rsp)                                #142.1
        xorl      %eax, %eax                                    #142.1
        vldmxcsr  (%rsp)                                        #142.1
..___tag_value_main.11:                                         #142.1
        call      __kmpc_begin                                  #142.1
..___tag_value_main.12:                                         #
                                # LOE r12 r13
..B1.2:                         # Preds ..B1.86
        movl      $134217728, %edi                              #151.22
        movl      $32, %esi                                     #151.22
#       _mm_malloc(unsigned long, unsigned long)
        call      _mm_malloc                                    #151.22
                                # LOE rax r12 r13
..B1.87:                        # Preds ..B1.2
        movq      %rax, %r15                                    #151.22
                                # LOE r12 r13 r15
..B1.3:                         # Preds ..B1.87
        movl      $134217728, %edi                              #152.22
        movl      $32, %esi                                     #152.22
#       _mm_malloc(unsigned long, unsigned long)
        call      _mm_malloc                                    #152.22
                                # LOE rax r12 r13 r15
..B1.88:                        # Preds ..B1.3
        movq      %rax, %rbx                                    #152.22
                                # LOE rbx r12 r13 r15
..B1.4:                         # Preds ..B1.88
        movl      $134217728, %edi                              #153.26
        movl      $32, %esi                                     #153.26
#       _mm_malloc(unsigned long, unsigned long)
        call      _mm_malloc                                    #153.26
                                # LOE rax rbx r12 r13 r15
..B1.89:                        # Preds ..B1.4
        movq      %rax, %r14                                    #153.26
                                # LOE rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.89
        testq     %r15, %r15                                    #156.3
        je        ..B1.83       # Prob 0%                       #156.3
                                # LOE rbx r12 r13 r14 r15
..B1.6:                         # Preds ..B1.5
        testq     %rbx, %rbx                                    #157.3
        je        ..B1.82       # Prob 0%                       #157.3
                                # LOE rbx r12 r13 r14 r15
..B1.7:                         # Preds ..B1.6
        testq     %r14, %r14                                    #158.3
        je        ..B1.81       # Prob 0%                       #158.3
                                # LOE rbx r12 r13 r14 r15
..B1.8:                         # Preds ..B1.7
        movl      $4, %eax                                      #187.3
        xorl      %edx, %edx                                    #187.3
        movq      %r14, (%rsp)                                  #187.3
        movl      %edx, %r12d                                   #187.3
        movq      %rbx, 8(%rsp)                                 #187.3
        movl      %edx, %r14d                                   #187.3
        vmovd     %eax, %xmm0                                   #187.3
        vpbroadcastd %xmm0, %xmm1                               #187.3
        movl      %edx, %ebx                                    #187.3
        vmovdqu   %xmm1, 64(%rsp)                               #187.3
                                # LOE r15 ebx r12d r14d
..B1.9:                         # Preds ..B1.13 ..B1.8
        vxorpd    %xmm0, %xmm0, %xmm0                           #187.3
        movl      %r14d, %r13d                                  #187.3
        vcvtsi2sd %r12d, %xmm0, %xmm0                           #187.3
        vaddsd    .L_2il0floatpacket.4(%rip), %xmm0, %xmm1      #187.3
        vmulsd    .L_2il0floatpacket.3(%rip), %xmm1, %xmm0      #187.3
        vzeroupper                                              #187.3
        call      cos                                           #187.3
                                # LOE r15 ebx r12d r13d r14d xmm0
..B1.90:                        # Preds ..B1.9
        vmovupd   .L_2il0floatpacket.6(%rip), %ymm1             #187.3
        movl      %r14d, %eax                                   #187.3
        vbroadcastsd %xmm0, %ymm2                               #187.3
        vsubpd    %ymm2, %ymm1, %ymm0                           #187.3
        vmovupd   %ymm0, 32(%rsp)                               #187.3
        movl      %r12d, 16(%rsp)                               #187.3
        movl      %r13d, %r12d                                  #187.3
        movl      %eax, %r13d                                   #187.3
                                # LOE r15 ebx r12d r13d
..B1.10:                        # Preds ..B1.12 ..B1.90
        vxorpd    %xmm1, %xmm1, %xmm1                           #187.3
        xorl      %r14d, %r14d                                  #187.3
        vcvtsi2sd %r12d, %xmm1, %xmm1                           #187.3
        vmovdqu   .L_2il0floatpacket.0(%rip), %xmm0             #187.3
        vmovdqu   %xmm0, 80(%rsp)                               #187.3
        vaddsd    .L_2il0floatpacket.4(%rip), %xmm1, %xmm2      #187.3
        vmulsd    .L_2il0floatpacket.3(%rip), %xmm2, %xmm0      #187.3
        vzeroupper                                              #187.3
        call      cos                                           #187.3
                                # LOE r14 r15 ebx r12d r13d xmm0
..B1.91:                        # Preds ..B1.10
        vmovupd   .L_2il0floatpacket.6(%rip), %ymm1             #187.3
        lea       (%rbx,%r13), %edx                             #187.3
        vmovdqu   80(%rsp), %xmm12                              #187.3
        vbroadcastsd %xmm0, %ymm2                               #187.3
        vmovdqu   64(%rsp), %xmm15                              #187.3
        vmovupd   32(%rsp), %ymm9                               #187.3
        vmovupd   .L_2il0floatpacket.5(%rip), %ymm11            #187.3
        vmovupd   .L_2il0floatpacket.2(%rip), %ymm13            #187.3
        vmovupd   .L_2il0floatpacket.1(%rip), %ymm14            #187.3
        vsubpd    %ymm2, %ymm1, %ymm8                           #187.3
        movslq    %edx, %rdx                                    #187.3
        vmovdqa   %ymm1, %ymm10                                 #187.3
        lea       (%r15,%rdx,8), %rsi                           #187.3
                                # LOE rsi r14 r15 ebx r12d r13d xmm12 xmm15 ymm8 ymm9 ymm10 ymm11 ymm13 ymm14
..B1.11:                        # Preds ..B1.92 ..B1.91
        vcvtdq2pd %xmm12, %ymm1                                 #187.3
        vaddpd    %ymm1, %ymm13, %ymm2                          #187.3
        vmulpd    %ymm2, %ymm14, %ymm0                          #187.3
        call      __svml_cos4                                   #187.3
                                # LOE rsi r14 r15 ebx r12d r13d xmm12 xmm15 ymm0 ymm8 ymm9 ymm10 ymm11 ymm13 ymm14
..B1.92:                        # Preds ..B1.11
        vsubpd    %ymm0, %ymm10, %ymm1                          #187.3
        vpaddd    %xmm15, %xmm12, %xmm12                        #187.3
        vmulpd    %ymm1, %ymm11, %ymm2                          #187.3
        vmulpd    %ymm8, %ymm2, %ymm3                           #187.3
        vmulpd    %ymm9, %ymm3, %ymm4                           #187.3
        vmovupd   %ymm4, (%rsi,%r14,8)                          #187.3
        addq      $4, %r14                                      #187.3
        cmpq      $256, %r14                                    #187.3
        jb        ..B1.11       # Prob 82%                      #187.3
                                # LOE rsi r14 r15 ebx r12d r13d xmm12 xmm15 ymm8 ymm9 ymm10 ymm11 ymm13 ymm14
..B1.12:                        # Preds ..B1.92
        incl      %r12d                                         #187.3
        addl      $256, %r13d                                   #187.3
        cmpl      $256, %r12d                                   #187.3
        jb        ..B1.10       # Prob 91%                      #187.3
                                # LOE r15 ebx r12d r13d
..B1.13:                        # Preds ..B1.12
        movl      16(%rsp), %r12d                               #
        addl      $65536, %ebx                                  #187.3
        incl      %r12d                                         #187.3
        xorl      %r14d, %r14d                                  #
        cmpl      $256, %r12d                                   #187.3
        jb        ..B1.9        # Prob 99%                      #187.3
                                # LOE r15 ebx r12d r14d
..B1.14:                        # Preds ..B1.13
        movl      $.L_2__STRING.6, %edi                         #194.3
        movl      $65, %esi                                     #194.3
        xorl      %eax, %eax                                    #194.3
        movq      (%rsp), %r14                                  #
        movq      8(%rsp), %rbx                                 #
        vzeroupper                                              #194.3
..___tag_value_main.13:                                         #194.3
#       printf(const char *__restrict__, ...)
        call      printf                                        #194.3
..___tag_value_main.14:                                         #
                                # LOE rbx r12 r13 r14 r15 ebx r14d bl bh r14b
..B1.15:                        # Preds ..B1.14
        movq      stdout(%rip), %rdi                            #194.57
#       fflush(FILE *)
        call      fflush                                        #194.57
                                # LOE rbx r12 r13 r14 r15 ebx r14d bl bh r14b
..B1.16:                        # Preds ..B1.15
..___tag_value_main.15:                                         #195.16
#       omp_get_wtime(void)
        call      omp_get_wtime                                 #195.16
..___tag_value_main.16:                                         #
                                # LOE rbx r12 r13 r14 r15 ebx r14d bl bh r14b xmm0
..B1.93:                        # Preds ..B1.16
        vmovsd    %xmm0, 32(%rsp)                               #195.16
                                # LOE rbx r12 r13 r14 r15 ebx r14d bl bh r14b
..B1.17:                        # Preds ..B1.93
        movl      $8, %edx                                      #196.3
        movq      $0xfa000000f9, %rsi                           #196.3
        movl      $2, %ecx                                      #196.3
        movq      $0xfffa0000fff9, %r10                         #196.3
        movq      $0xff00fa00ff00f9, %r11                       #196.3
        movq      %r15, %r9                                     #196.3
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm7             #189.8
        vmovd     %edx, %xmm3                                   #196.3
        movq      $0xfffffa00fffff9, %rdx                       #196.3
        vpbroadcastd %xmm3, %ymm3                               #196.3
        vmovd     %ecx, %xmm0                                   #196.3
        movq      %rbx, %r8                                     #196.3
        vmovd     %rsi, %xmm4                                   #196.3
        vmovdqu   %ymm3, 96(%rsp)                               #196.3
        vmovd     %r10, %xmm1                                   #196.3
        vmovsd    .L_2il0floatpacket.8(%rip), %xmm10            #192.3
        vmovd     %r11, %xmm12                                  #196.3
        vmovupd   .L_2il0floatpacket.11(%rip), %xmm6            #192.3
        vmovupd   .L_2il0floatpacket.12(%rip), %xmm8            #189.8
        vmovsd    .L_2il0floatpacket.13(%rip), %xmm2            #196.3
        vpbroadcastd %xmm0, %xmm9                               #196.3
        xorb      %al, %al                                      #196.3
        vmovdqu   .L_2il0floatpacket.21(%rip), %ymm13           #196.3
        xorl      %esi, %esi                                    #196.3
        vmovd     %rdx, %xmm0                                   #196.3
        vmovdqu   .L_2il0floatpacket.23(%rip), %ymm11           #196.3
        vmovdqu   .L_2il0floatpacket.22(%rip), %ymm5            #196.3
        vmovdqu   .L_2il0floatpacket.20(%rip), %ymm3            #196.3
        xorl      %edx, %edx                                    #196.3
        movq      %r14, (%rsp)                                  #196.3
        movq      %rbx, 8(%rsp)                                 #196.3
        movq      %r15, 16(%rsp)                                #196.3
                                # LOE rsi r8 r9 edx al xmm0 xmm1 xmm2 xmm4 xmm6 xmm7 xmm8 xmm9 xmm10 xmm12 ymm3 ymm5 ymm11 ymm13
..B1.18:                        # Preds ..B1.62 ..B1.17
        vmovsd    (%r9), %xmm15                                 #196.3
        vmovapd   %xmm2, %xmm14                                 #196.3
        vfmadd213sd 8(%r9), %xmm15, %xmm14                      #196.3
        movq      %rsi, %rdi                                    #196.3
        vmovdqu   %xmm9, 80(%rsp)                               #196.3
        vmovdqu   %xmm4, 48(%rsp)                               #196.3
        vmovupd   .L_2il0floatpacket.10(%rip), %ymm9            #196.3
        vaddsd    2048(%r9), %xmm14, %xmm14                     #196.3
        vpcmpeqd  %ymm8, %ymm8, %ymm8                           #196.3
        movq      %r9, %rbx                                     #196.3
        movq      %r8, %rcx                                     #196.3
        vaddsd    %xmm15, %xmm14, %xmm14                        #196.3
        vmulsd    %xmm15, %xmm10, %xmm15                        #196.3
        vmovupd   .L_2il0floatpacket.9(%rip), %ymm10            #196.3
        vaddsd    524288(%r9), %xmm14, %xmm14                   #196.3
        vfmadd213sd %xmm15, %xmm7, %xmm14                       #196.3
        vmovdqu   96(%rsp), %ymm15                              #196.3
        vmovsd    %xmm14, (%r8)                                 #196.3
        vmovdqa   %ymm3, %ymm14                                 #196.3
                                # LOE rcx rbx rsi rdi r8 r9 edx al xmm0 xmm1 xmm12 ymm5 ymm8 ymm9 ymm10 ymm11 ymm13 ymm14 ymm15
..B1.19:                        # Preds ..B1.19 ..B1.18
        vmovdqa   %ymm8, %ymm3                                  #196.3
        vxorpd    %ymm2, %ymm2, %ymm2                           #196.3
        vmovupd   8(%rbx), %ymm6                                #196.3
        vmovupd   40(%rbx), %ymm7                               #196.3
        vgatherdpd %ymm3, (%r9,%xmm14,8), %ymm2                 #196.3
        vmulpd    %ymm2, %ymm9, %ymm4                           #196.3
        vfmadd213pd %ymm4, %ymm10, %ymm6                        #196.3
        vaddpd    %ymm4, %ymm6, %ymm4                           #196.3
        vextracti128 $1, %ymm14, %xmm6                          #196.3
        vpaddd    %ymm15, %ymm14, %ymm14                        #196.3
        vxorpd    %ymm2, %ymm2, %ymm2                           #196.3
        vmovdqa   %ymm8, %ymm3                                  #196.3
        vgatherdpd %ymm3, (%r9,%xmm6,8), %ymm2                  #196.3
        vmulpd    %ymm2, %ymm9, %ymm6                           #196.3
        vfmadd213pd %ymm6, %ymm10, %ymm7                        #196.3
        vaddpd    %ymm6, %ymm7, %ymm3                           #196.3
        vmovupd   2056(%r9,%rdi,8), %ymm7                       #196.3
        vaddpd    524296(%r9,%rdi,8), %ymm7, %ymm2              #196.3
        vaddpd    16(%r9,%rdi,8), %ymm2, %ymm2                  #196.3
        vfmadd213pd %ymm4, %ymm9, %ymm2                         #196.3
        vmovupd   2088(%r9,%rdi,8), %ymm4                       #196.3
        vfmadd231pd (%rbx), %ymm9, %ymm2                        #196.3
        vaddpd    524328(%r9,%rdi,8), %ymm4, %ymm6              #196.3
        vaddpd    48(%r9,%rdi,8), %ymm6, %ymm4                  #196.3
        addq      $8, %rdi                                      #196.3
        vfmadd213pd %ymm3, %ymm9, %ymm4                         #196.3
        vfmadd231pd 32(%rbx), %ymm9, %ymm4                      #196.3
        addq      $64, %rbx                                     #196.3
        vmovupd   %ymm2, 8(%rcx)                                #196.3
        vmovupd   %ymm4, 40(%rcx)                               #196.3
        addq      $64, %rcx                                     #196.3
        cmpq      $248, %rdi                                    #196.3
        jb        ..B1.19       # Prob 82%                      #196.3
                                # LOE rcx rbx rsi rdi r8 r9 edx al xmm0 xmm1 xmm12 ymm5 ymm8 ymm9 ymm10 ymm11 ymm13 ymm14 ymm15
..B1.20:                        # Preds ..B1.19
        vmovdqu   48(%rsp), %xmm4                               #
        xorb      %r10b, %r10b                                  #196.3
        vmovdqu   80(%rsp), %xmm9                               #
        vmovdqa   %xmm4, %xmm14                                 #196.3
        vmovdqu   .L_2il0floatpacket.20(%rip), %ymm3            #
        movq      %r9, %rdi                                     #196.3
        vmovsd    .L_2il0floatpacket.13(%rip), %xmm2            #
        vmovupd   .L_2il0floatpacket.12(%rip), %xmm8            #
        vmovupd   .L_2il0floatpacket.11(%rip), %xmm6            #
        vmovsd    .L_2il0floatpacket.8(%rip), %xmm10            #
        movq      %r8, %rbx                                     #196.3
        movl      $526280, %ecx                                 #196.3
        .align    16,0x90
                                # LOE rcx rbx rsi rdi r8 r9 edx al r10b xmm0 xmm1 xmm2 xmm4 xmm6 xmm8 xmm9 xmm10 xmm12 xmm14 ymm3 ymm5 ymm11 ymm13
..B1.21:                        # Preds ..B1.21 ..B1.20
        vmovd     %xmm14, %r12                                  #196.3
        addb      $2, %r10b                                     #196.3
        vmovupd   1992(%rdi), %xmm15                            #196.3
        movslq    %r12d, %r11                                   #196.3
        addq      $16, %rdi                                     #196.3
        sarq      $32, %r12                                     #196.3
        vpaddd    %xmm9, %xmm14, %xmm14                         #196.3
        vmovq     (%r9,%r11,8), %xmm7                           #196.3
        vmovhpd   (%r9,%r12,8), %xmm7, %xmm7                    #196.3
        vmulpd    %xmm7, %xmm8, %xmm7                           #196.3
        vfmadd213pd %xmm7, %xmm6, %xmm15                        #196.3
        vaddpd    %xmm7, %xmm15, %xmm7                          #196.3
        vmovupd   -522240(%rcx,%r9), %xmm15                     #196.3
        vaddpd    (%rcx,%r9), %xmm15, %xmm15                    #196.3
        vaddpd    -524280(%rcx,%r9), %xmm15, %xmm15             #196.3
        vfmadd213pd %xmm7, %xmm8, %xmm15                        #196.3
        vfmadd231pd -524296(%rcx,%r9), %xmm8, %xmm15            #196.3
        addq      $16, %rcx                                     #196.3
        vmovupd   %xmm15, 1992(%rbx)                            #196.3
        addq      $16, %rbx                                     #196.3
        cmpb      $6, %r10b                                     #196.3
        jb        ..B1.21       # Prob 82%                      #196.3
                                # LOE rcx rbx rsi rdi r8 r9 edx al r10b xmm0 xmm1 xmm2 xmm4 xmm6 xmm8 xmm9 xmm10 xmm12 xmm14 ymm3 ymm5 ymm11 ymm13
..B1.22:                        # Preds ..B1.21
        vmovsd    2040(%r9), %xmm15                             #196.3
        vmovapd   %xmm2, %xmm14                                 #196.3
        vfmadd213sd 2032(%r9), %xmm15, %xmm14                   #196.3
        movl      %edx, %edi                                    #196.3
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm7             #
        vmovdqu   %xmm0, 128(%rsp)                              #196.3
        vmovdqu   %xmm1, 160(%rsp)                              #196.3
        vmovdqu   %xmm4, 48(%rsp)                               #196.3
        vpxor     %xmm1, %xmm1, %xmm1                           #196.3
        vmovdqu   %xmm12, 144(%rsp)                             #196.3
        movq      %rsi, %r10                                    #196.3
        vpcmpeqd  %ymm0, %ymm0, %ymm0                           #196.3
        vmovupd   .L_2il0floatpacket.10(%rip), %ymm4            #196.3
        vmovupd   .L_2il0floatpacket.9(%rip), %ymm2             #196.3
        vmovdqu   96(%rsp), %ymm3                               #196.3
        vaddsd    4088(%r9), %xmm14, %xmm14                     #196.3
        vaddsd    %xmm15, %xmm14, %xmm14                        #196.3
        vmulsd    %xmm15, %xmm10, %xmm15                        #196.3
        vaddsd    526328(%r9), %xmm14, %xmm14                   #196.3
        vfmadd213sd %xmm15, %xmm7, %xmm14                       #196.3
        vmovsd    %xmm14, 2040(%r8)                             #196.3
                                # LOE rsi r8 r9 r10 edx edi al xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 ymm0 ymm2 ymm3 ymm4
..B1.23:                        # Preds ..B1.27 ..B1.22
        vmovsd    2048(%r9,%r10,8), %xmm13                      #196.3
        movl      %edi, %ecx                                    #196.3
        shll      $8, %ecx                                      #196.3
        movq      %rsi, %r14                                    #196.3
        movl      %ecx, %r11d                                   #196.3
        vmulsd    2048(%r9,%r11,8), %xmm10, %xmm15              #196.3
        lea       (%r8,%r11,8), %r12                            #196.3
        vaddsd    2056(%r9,%r10,8), %xmm13, %xmm5               #196.3
        movq      %r10, %r13                                    #196.3
        lea       257(%rcx), %ebx                               #196.3
        vaddsd    (%r9,%r10,8), %xmm5, %xmm11                   #196.3
        vaddsd    4096(%r9,%r10,8), %xmm11, %xmm12              #196.3
        vmovd     %ebx, %xmm11                                  #196.3
        vaddsd    %xmm13, %xmm12, %xmm14                        #196.3
        vpbroadcastd %xmm11, %ymm12                             #196.3
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm12, %ymm13   #196.3
        vaddsd    526336(%r9,%r10,8), %xmm14, %xmm5             #196.3
        vfmadd213sd %xmm15, %xmm7, %xmm5                        #196.3
        lea       (%r9,%r11,8), %rbx                            #196.3
        vmovsd    %xmm5, 2048(%r8,%r11,8)                       #196.3
                                # LOE rbx rsi r8 r9 r10 r11 r12 r13 r14 edx ecx edi al xmm1 xmm6 xmm8 xmm9 ymm0 ymm2 ymm3 ymm4 ymm13
..B1.24:                        # Preds ..B1.24 ..B1.23
        vmovupd   8(%r9,%r13,8), %ymm5                          #196.3
        vmovupd   2048(%r9,%r13,8), %ymm14                      #196.3
        vmovupd   2080(%r9,%r13,8), %ymm15                      #196.3
        vmovupd   40(%r9,%r13,8), %ymm10                        #196.3
        vaddpd    4104(%r9,%r13,8), %ymm5, %ymm7                #196.3
        vaddpd    2064(%r9,%r13,8), %ymm14, %ymm12              #196.3
        vaddpd    2096(%r9,%r13,8), %ymm15, %ymm11              #196.3
        vaddpd    4136(%r9,%r13,8), %ymm10, %ymm10              #196.3
        vxorpd    %ymm5, %ymm5, %ymm5                           #196.3
        vmovdqa   %ymm0, %ymm14                                 #196.3
        vgatherdpd %ymm14, (%r9,%xmm13,8), %ymm5                #196.3
        vaddpd    526344(%r9,%r13,8), %ymm5, %ymm15             #196.3
        vaddpd    %ymm15, %ymm7, %ymm5                          #196.3
        vextracti128 $1, %ymm13, %xmm7                          #196.3
        vpaddd    %ymm3, %ymm13, %ymm13                         #196.3
        vxorpd    %ymm15, %ymm15, %ymm15                        #196.3
        vmovdqa   %ymm0, %ymm14                                 #196.3
        vgatherdpd %ymm14, (%r9,%xmm7,8), %ymm15                #196.3
        vaddpd    526376(%r9,%r13,8), %ymm15, %ymm7             #196.3
        addq      $8, %r13                                      #196.3
        vaddpd    %ymm7, %ymm10, %ymm7                          #196.3
        vmulpd    2056(%rbx,%r14,8), %ymm2, %ymm10              #196.3
        vfmadd213pd %ymm10, %ymm4, %ymm12                       #196.3
        vfmadd213pd %ymm12, %ymm4, %ymm5                        #196.3
        vmulpd    2088(%rbx,%r14,8), %ymm2, %ymm12              #196.3
        vmovupd   %ymm5, 2056(%r12,%r14,8)                      #196.3
        vfmadd213pd %ymm12, %ymm4, %ymm11                       #196.3
        vfmadd213pd %ymm11, %ymm4, %ymm7                        #196.3
        vmovupd   %ymm7, 2088(%r12,%r14,8)                      #196.3
        addq      $8, %r14                                      #196.3
        cmpq      $248, %r14                                    #196.3
        jb        ..B1.24       # Prob 82%                      #196.3
                                # LOE rbx rsi r8 r9 r10 r11 r12 r13 r14 edx ecx edi al xmm1 xmm6 xmm8 xmm9 ymm0 ymm2 ymm3 ymm4 ymm13
..B1.25:                        # Preds ..B1.24
        vmovsd    .L_2il0floatpacket.8(%rip), %xmm10            #
        lea       505(%rcx), %r13d                              #196.3
        addl      $506, %ecx                                    #196.3
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm7             #
        vmovd     %r13d, %xmm5                                  #196.3
        movq      %rsi, %r13                                    #196.3
        vmovd     %ecx, %xmm11                                  #196.3
        movq      %r10, %rcx                                    #196.3
        vpunpckldq %xmm11, %xmm5, %xmm12                        #196.3
        vpunpcklqdq %xmm1, %xmm12, %xmm11                       #196.3
        .align    16,0x90
                                # LOE rcx rbx rsi r8 r9 r10 r11 r12 r13 edx edi al xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 ymm0 ymm2 ymm3 ymm4
..B1.26:                        # Preds ..B1.26 ..B1.25
        vmovd     %xmm11, %r15                                  #196.3
        vpaddd    %xmm9, %xmm11, %xmm11                         #196.3
        vmovupd   4032(%r9,%rcx,8), %xmm12                      #196.3
        vmovupd   1992(%r9,%rcx,8), %xmm13                      #196.3
        vaddpd    4048(%r9,%rcx,8), %xmm12, %xmm5               #196.3
        vaddpd    6088(%r9,%rcx,8), %xmm13, %xmm12              #196.3
        movslq    %r15d, %r14                                   #196.3
        sarq      $32, %r15                                     #196.3
        vmovq     (%r9,%r14,8), %xmm14                          #196.3
        vmovhpd   (%r9,%r15,8), %xmm14, %xmm15                  #196.3
        vmulpd    4040(%rbx,%r13,8), %xmm6, %xmm14              #196.3
        vaddpd    528328(%r9,%rcx,8), %xmm15, %xmm13            #196.3
        vfmadd213pd %xmm14, %xmm8, %xmm5                        #196.3
        vaddpd    %xmm13, %xmm12, %xmm12                        #196.3
        vfmadd213pd %xmm5, %xmm8, %xmm12                        #196.3
        addq      $2, %rcx                                      #196.3
        vmovupd   %xmm12, 4040(%r12,%r13,8)                     #196.3
        addq      $2, %r13                                      #196.3
        cmpq      $6, %r13                                      #196.3
        jb        ..B1.26       # Prob 82%                      #196.3
                                # LOE rcx rbx rsi r8 r9 r10 r11 r12 r13 edx edi al xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 ymm0 ymm2 ymm3 ymm4
..B1.27:                        # Preds ..B1.26
        vmovsd    4088(%r9,%r10,8), %xmm13                      #196.3
        incl      %edi                                          #196.3
        vmulsd    4088(%r9,%r11,8), %xmm10, %xmm15              #196.3
        vaddsd    4080(%r9,%r10,8), %xmm13, %xmm5               #196.3
        vaddsd    2040(%r9,%r10,8), %xmm5, %xmm11               #196.3
        vaddsd    6136(%r9,%r10,8), %xmm11, %xmm12              #196.3
        vaddsd    %xmm13, %xmm12, %xmm14                        #196.3
        vaddsd    528376(%r9,%r10,8), %xmm14, %xmm5             #196.3
        addq      $256, %r10                                    #196.3
        vfmadd213sd %xmm15, %xmm7, %xmm5                        #196.3
        vmovsd    %xmm5, 4088(%r8,%r11,8)                       #196.3
        cmpl      $254, %edi                                    #196.3
        jb        ..B1.23       # Prob 91%                      #196.3
                                # LOE rsi r8 r9 r10 edx edi al xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 ymm0 ymm2 ymm3 ymm4
..B1.28:                        # Preds ..B1.27
        vmovsd    522240(%r9), %xmm15                           #196.3
        movq      %rsi, %rdi                                    #196.3
        vmovdqu   .L_2il0floatpacket.21(%rip), %ymm13           #
        movq      %r9, %rbx                                     #196.3
        vmovdqu   %xmm9, 80(%rsp)                               #196.3
        vmovdqu   128(%rsp), %xmm0                              #
        vmovdqu   144(%rsp), %xmm12                             #
        vmovdqu   160(%rsp), %xmm1                              #
        movq      %r8, %rcx                                     #196.3
        vmovdqu   .L_2il0floatpacket.23(%rip), %ymm11           #
        vmovdqu   .L_2il0floatpacket.22(%rip), %ymm5            #
        vaddsd    522248(%r9), %xmm15, %xmm14                   #196.3
        vpcmpeqd  %ymm9, %ymm9, %ymm9                           #196.3
        vaddsd    520192(%r9), %xmm14, %xmm14                   #196.3
        vaddsd    %xmm15, %xmm14, %xmm14                        #196.3
        vaddsd    %xmm15, %xmm14, %xmm14                        #196.3
        vmulsd    %xmm15, %xmm10, %xmm15                        #196.3
        vmovupd   .L_2il0floatpacket.10(%rip), %ymm10           #196.3
        vaddsd    1046528(%r9), %xmm14, %xmm14                  #196.3
        vfmadd213sd %xmm15, %xmm7, %xmm14                       #196.3
        vmovdqu   96(%rsp), %ymm15                              #196.3
        vmovsd    %xmm14, 522240(%r8)                           #196.3
        vmovdqa   %ymm13, %ymm14                                #196.3
        vmovupd   .L_2il0floatpacket.9(%rip), %ymm13            #196.3
                                # LOE rcx rbx rsi rdi r8 r9 edx al xmm0 xmm1 xmm12 ymm5 ymm9 ymm10 ymm11 ymm13 ymm14 ymm15
..B1.29:                        # Preds ..B1.29 ..B1.28
        vmovupd   520232(%r9,%rdi,8), %ymm2                     #196.3
        vmovupd   522248(%rbx), %ymm8                           #196.3
        vmovupd   520200(%r9,%rdi,8), %ymm6                     #196.3
        vmovupd   522280(%rbx), %ymm7                           #196.3
        vaddpd    1046568(%r9,%rdi,8), %ymm2, %ymm3             #196.3
        vaddpd    1046536(%r9,%rdi,8), %ymm6, %ymm6             #196.3
        vaddpd    522288(%r9,%rdi,8), %ymm3, %ymm2              #196.3
        vaddpd    522256(%r9,%rdi,8), %ymm6, %ymm6              #196.3
        vxorpd    %ymm4, %ymm4, %ymm4                           #196.3
        addq      $64, %rbx                                     #196.3
        vmovdqa   %ymm9, %ymm3                                  #196.3
        vgatherdpd %ymm3, (%r9,%xmm14,8), %ymm4                 #196.3
        vextracti128 $1, %ymm14, %xmm3                          #196.3
        vpaddd    %ymm15, %ymm14, %ymm14                        #196.3
        vmulpd    %ymm4, %ymm10, %ymm4                          #196.3
        vfmadd213pd %ymm4, %ymm13, %ymm8                        #196.3
        vaddpd    %ymm4, %ymm8, %ymm8                           #196.3
        vfmadd213pd %ymm8, %ymm10, %ymm6                        #196.3
        vxorpd    %ymm8, %ymm8, %ymm8                           #196.3
        vmovdqa   %ymm9, %ymm4                                  #196.3
        vgatherdpd %ymm4, (%r9,%xmm3,8), %ymm8                  #196.3
        vfmadd231pd 522240(%r9,%rdi,8), %ymm10, %ymm6           #196.3
        vmulpd    %ymm8, %ymm10, %ymm3                          #196.3
        vfmadd213pd %ymm3, %ymm13, %ymm7                        #196.3
        vaddpd    %ymm3, %ymm7, %ymm7                           #196.3
        vfmadd213pd %ymm7, %ymm10, %ymm2                        #196.3
        vfmadd231pd 522272(%r9,%rdi,8), %ymm10, %ymm2           #196.3
        addq      $8, %rdi                                      #196.3
        vmovupd   %ymm6, 522248(%rcx)                           #196.3
        vmovupd   %ymm2, 522280(%rcx)                           #196.3
        addq      $64, %rcx                                     #196.3
        cmpq      $248, %rdi                                    #196.3
        jb        ..B1.29       # Prob 82%                      #196.3
                                # LOE rcx rbx rsi rdi r8 r9 edx al xmm0 xmm1 xmm12 ymm5 ymm9 ymm10 ymm11 ymm13 ymm14 ymm15
..B1.30:                        # Preds ..B1.29
        vmovdqu   .L_2il0floatpacket.21(%rip), %ymm13           #
        xorb      %r10b, %r10b                                  #196.3
        vmovdqu   48(%rsp), %xmm4                               #
        vmovdqa   %xmm1, %xmm14                                 #196.3
        vmovdqu   80(%rsp), %xmm9                               #
        vmovsd    .L_2il0floatpacket.13(%rip), %xmm2            #
        vmovupd   .L_2il0floatpacket.12(%rip), %xmm8            #
        vmovdqu   .L_2il0floatpacket.20(%rip), %ymm3            #
        movq      %r9, %rdi                                     #196.3
        vmovupd   .L_2il0floatpacket.11(%rip), %xmm6            #
        movq      %r8, %rbx                                     #196.3
        movl      $1048520, %ecx                                #196.3
        .align    16,0x90
                                # LOE rcx rbx rsi rdi r8 r9 edx al r10b xmm0 xmm1 xmm2 xmm4 xmm6 xmm8 xmm9 xmm12 xmm14 ymm3 ymm5 ymm11 ymm13
..B1.31:                        # Preds ..B1.31 ..B1.30
        vmovd     %xmm14, %r12                                  #196.3
        addb      $2, %r10b                                     #196.3
        vmovupd   -526336(%rcx,%r9), %xmm15                     #196.3
        vmovupd   524232(%rdi), %xmm10                          #196.3
        vaddpd    (%rcx,%r9), %xmm15, %xmm7                     #196.3
        movslq    %r12d, %r11                                   #196.3
        addq      $16, %rdi                                     #196.3
        sarq      $32, %r12                                     #196.3
        vpaddd    %xmm9, %xmm14, %xmm14                         #196.3
        vaddpd    -524280(%rcx,%r9), %xmm7, %xmm7               #196.3
        vmovq     (%r9,%r11,8), %xmm15                          #196.3
        vmovhpd   (%r9,%r12,8), %xmm15, %xmm15                  #196.3
        vmulpd    %xmm15, %xmm8, %xmm15                         #196.3
        vfmadd213pd %xmm15, %xmm6, %xmm10                       #196.3
        vaddpd    %xmm15, %xmm10, %xmm10                        #196.3
        vfmadd213pd %xmm10, %xmm8, %xmm7                        #196.3
        vfmadd231pd -524296(%rcx,%r9), %xmm8, %xmm7             #196.3
        addq      $16, %rcx                                     #196.3
        vmovupd   %xmm7, 524232(%rbx)                           #196.3
        addq      $16, %rbx                                     #196.3
        cmpb      $6, %r10b                                     #196.3
        jb        ..B1.31       # Prob 82%                      #196.3
                                # LOE rcx rbx rsi rdi r8 r9 edx al r10b xmm0 xmm1 xmm2 xmm4 xmm6 xmm8 xmm9 xmm12 xmm14 ymm3 ymm5 ymm11 ymm13
..B1.32:                        # Preds ..B1.31
        vmovsd    524280(%r9), %xmm15                           #196.3
        movl      %edx, %r12d                                   #196.3
        vmovsd    .L_2il0floatpacket.8(%rip), %xmm10            #
        movl      %r12d, %edi                                   #196.3
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm7             #
        vpxor     %xmm3, %xmm3, %xmm3                           #196.3
        vmovdqu   %xmm12, 144(%rsp)                             #196.3
        movq      %rsi, %r13                                    #196.3
        vmovdqu   %xmm4, 48(%rsp)                               #196.3
        vmovdqu   %xmm0, 128(%rsp)                              #196.3
        vmovdqu   %xmm1, 160(%rsp)                              #196.3
        movb      %al, 192(%rsp)                                #196.3
        vpcmpeqd  %ymm11, %ymm11, %ymm11                        #196.3
        vmovupd   .L_2il0floatpacket.10(%rip), %ymm12           #196.3
        vmovupd   .L_2il0floatpacket.9(%rip), %ymm4             #196.3
        vmovdqu   96(%rsp), %ymm5                               #196.3
        vaddsd    524272(%r9), %xmm15, %xmm14                   #196.3
        vaddsd    522232(%r9), %xmm14, %xmm14                   #196.3
        vaddsd    %xmm15, %xmm14, %xmm14                        #196.3
        vaddsd    %xmm15, %xmm14, %xmm14                        #196.3
        vmulsd    %xmm15, %xmm10, %xmm15                        #196.3
        vaddsd    1048568(%r9), %xmm14, %xmm14                  #196.3
        vfmadd213sd %xmm15, %xmm7, %xmm14                       #196.3
        vmovsd    %xmm14, 524280(%r8)                           #196.3
                                # LOE rsi r8 r9 r13 edx edi r12d xmm2 xmm3 xmm6 xmm7 xmm8 xmm9 xmm10 ymm4 ymm5 ymm11 ymm12
..B1.33:                        # Preds ..B1.47 ..B1.32
        vmovsd    524288(%r9,%r13,8), %xmm0                     #196.3
        lea       65537(%rdi), %eax                             #196.3
        vfmadd213sd 524296(%r9,%r13,8), %xmm2, %xmm0            #196.3
        movq      %r13, %rbx                                    #196.3
        movslq    %edi, %r11                                    #196.3
        vaddsd    526336(%r9,%r13,8), %xmm0, %xmm1              #196.3
        vmulsd    524288(%r9,%r11,8), %xmm10, %xmm14            #196.3
        vaddsd    (%r9,%r13,8), %xmm1, %xmm13                   #196.3
        vmovd     %eax, %xmm0                                   #196.3
        lea       (%r9,%r11,8), %r10                            #196.3
        vpbroadcastd %xmm0, %ymm1                               #196.3
        movq      %rsi, %rcx                                    #196.3
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm1, %ymm0     #196.3
        lea       (%r8,%r11,8), %rax                            #196.3
        vaddsd    1048576(%r9,%r13,8), %xmm13, %xmm15           #196.3
        vfmadd213sd %xmm14, %xmm7, %xmm15                       #196.3
        vmovsd    %xmm15, 524288(%rax)                          #196.3
                                # LOE rax rcx rbx rsi r8 r9 r10 r11 r13 edx edi r12d xmm2 xmm3 xmm6 xmm8 xmm9 ymm0 ymm4 ymm5 ymm11 ymm12
..B1.34:                        # Preds ..B1.34 ..B1.33
        vmovdqa   %ymm11, %ymm1                                 #196.3
        vxorpd    %ymm7, %ymm7, %ymm7                           #196.3
        vmovupd   524288(%r9,%rbx,8), %ymm15                    #196.3
        vmovupd   524320(%r9,%rbx,8), %ymm13                    #196.3
        vaddpd    524304(%r9,%rbx,8), %ymm15, %ymm14            #196.3
        vaddpd    524336(%r9,%rbx,8), %ymm13, %ymm13            #196.3
        vgatherdpd %ymm1, (%r9,%xmm0,8), %ymm7                  #196.3
        vextracti128 $1, %ymm0, %xmm15                          #196.3
        vpaddd    %ymm5, %ymm0, %ymm0                           #196.3
        vaddpd    526344(%r9,%rbx,8), %ymm7, %ymm10             #196.3
        vxorpd    %ymm7, %ymm7, %ymm7                           #196.3
        vmovdqa   %ymm11, %ymm1                                 #196.3
        vgatherdpd %ymm1, (%r9,%xmm15,8), %ymm7                 #196.3
        vmovupd   8(%r9,%rbx,8), %ymm15                         #196.3
        vaddpd    526376(%r9,%rbx,8), %ymm7, %ymm7              #196.3
        vaddpd    1048584(%r9,%rbx,8), %ymm15, %ymm1            #196.3
        vaddpd    %ymm1, %ymm10, %ymm1                          #196.3
        vmovupd   40(%r9,%rbx,8), %ymm10                        #196.3
        vaddpd    1048616(%r9,%rbx,8), %ymm10, %ymm10           #196.3
        addq      $8, %rbx                                      #196.3
        vaddpd    %ymm10, %ymm7, %ymm15                         #196.3
        vmulpd    524296(%r10,%rcx,8), %ymm4, %ymm7             #196.3
        vfmadd213pd %ymm7, %ymm12, %ymm14                       #196.3
        vfmadd213pd %ymm14, %ymm12, %ymm1                       #196.3
        vmulpd    524328(%r10,%rcx,8), %ymm4, %ymm14            #196.3
        vmovupd   %ymm1, 524296(%rax,%rcx,8)                    #196.3
        vfmadd213pd %ymm14, %ymm12, %ymm13                      #196.3
        vfmadd213pd %ymm13, %ymm12, %ymm15                      #196.3
        vmovupd   %ymm15, 524328(%rax,%rcx,8)                   #196.3
        addq      $8, %rcx                                      #196.3
        cmpq      $248, %rcx                                    #196.3
        jb        ..B1.34       # Prob 82%                      #196.3
                                # LOE rax rcx rbx rsi r8 r9 r10 r11 r13 edx edi r12d xmm2 xmm3 xmm6 xmm8 xmm9 ymm0 ymm4 ymm5 ymm11 ymm12
..B1.35:                        # Preds ..B1.34
        vmovsd    .L_2il0floatpacket.8(%rip), %xmm10            #
        lea       65785(%rdi), %ecx                             #196.3
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm7             #
        lea       65786(%rdi), %ebx                             #196.3
        vmovd     %ecx, %xmm0                                   #196.3
        movq      %r13, %rcx                                    #196.3
        vmovd     %ebx, %xmm1                                   #196.3
        movq      %rsi, %rbx                                    #196.3
        vpunpckldq %xmm1, %xmm0, %xmm13                         #196.3
        vpunpcklqdq %xmm3, %xmm13, %xmm1                        #196.3
        .align    16,0x90
                                # LOE rax rcx rbx rsi r8 r9 r10 r11 r13 edx edi r12d xmm1 xmm2 xmm3 xmm6 xmm7 xmm8 xmm9 xmm10 ymm4 ymm5 ymm11 ymm12
..B1.36:                        # Preds ..B1.36 ..B1.35
        vmovd     %xmm1, %r15                                   #196.3
        vpaddd    %xmm9, %xmm1, %xmm1                           #196.3
        vmovupd   526272(%r9,%rcx,8), %xmm13                    #196.3
        movslq    %r15d, %r14                                   #196.3
        sarq      $32, %r15                                     #196.3
        vaddpd    526288(%r9,%rcx,8), %xmm13, %xmm0             #196.3
        vmovupd   1992(%r9,%rcx,8), %xmm13                      #196.3
        vmovq     (%r9,%r14,8), %xmm14                          #196.3
        vmovhpd   (%r9,%r15,8), %xmm14, %xmm15                  #196.3
        vaddpd    528328(%r9,%rcx,8), %xmm15, %xmm14            #196.3
        vaddpd    1050568(%r9,%rcx,8), %xmm13, %xmm15           #196.3
        vmulpd    526280(%r10,%rbx,8), %xmm6, %xmm13            #196.3
        vaddpd    %xmm15, %xmm14, %xmm14                        #196.3
        vfmadd213pd %xmm13, %xmm8, %xmm0                        #196.3
        vfmadd213pd %xmm0, %xmm8, %xmm14                        #196.3
        addq      $2, %rcx                                      #196.3
        vmovupd   %xmm14, 526280(%rax,%rbx,8)                   #196.3
        addq      $2, %rbx                                      #196.3
        cmpq      $6, %rbx                                      #196.3
        jb        ..B1.36       # Prob 82%                      #196.3
                                # LOE rax rcx rbx rsi r8 r9 r10 r11 r13 edx edi r12d xmm1 xmm2 xmm3 xmm6 xmm7 xmm8 xmm9 xmm10 ymm4 ymm5 ymm11 ymm12
..B1.37:                        # Preds ..B1.36
        vmovsd    526328(%r9,%r13,8), %xmm0                     #196.3
        movl      %edx, %ecx                                    #196.3
        vfmadd213sd 526320(%r9,%r13,8), %xmm2, %xmm0            #196.3
        movl      %ecx, %ebx                                    #196.3
        vmulsd    526328(%r9,%r11,8), %xmm10, %xmm14            #196.3
        vaddsd    528376(%r9,%r13,8), %xmm0, %xmm1              #196.3
        movq      %r10, 184(%rsp)                               #196.3
        movq      %r11, 176(%rsp)                               #196.3
        movq      %r13, 40(%rsp)                                #196.3
        movl      %r12d, 24(%rsp)                               #196.3
        vaddsd    2040(%r9,%r13,8), %xmm1, %xmm13               #196.3
        vaddsd    1050616(%r9,%r13,8), %xmm13, %xmm15           #196.3
        vfmadd213sd %xmm14, %xmm7, %xmm15                       #196.3
        vmovsd    %xmm15, 526328(%r8,%r11,8)                    #196.3
                                # LOE rax rsi r8 r9 ecx ebx edi xmm2 xmm3 xmm6 xmm7 xmm8 xmm9 xmm10 ymm4 ymm5 ymm11 ymm12
..B1.38:                        # Preds ..B1.42 ..B1.37
        movq      %rsi, %r14                                    #196.3
        lea       (%rdi,%rbx), %r13d                            #196.3
        movslq    %r13d, %r13                                   #196.3
        movq      %r13, %r15                                    #196.3
        movq      %r15, %r11                                    #196.3
        movq      %r15, %rdx                                    #196.3
        vmovsd    526336(%r9,%r13,8), %xmm0                     #196.3
        vaddsd    526344(%r9,%r13,8), %xmm0, %xmm1              #196.3
        vmulsd    526336(%r9,%r11,8), %xmm10, %xmm0             #196.3
        vaddsd    524288(%r9,%r13,8), %xmm1, %xmm13             #196.3
        vaddsd    528384(%r9,%r13,8), %xmm13, %xmm14            #196.3
        vaddsd    2048(%r9,%r13,8), %xmm14, %xmm15              #196.3
        vaddsd    1050624(%r9,%r13,8), %xmm15, %xmm1            #196.3
        vfmadd213sd %xmm0, %xmm7, %xmm1                         #196.3
        lea       (%r8,%r11,8), %r12                            #196.3
        vmovsd    %xmm1, 526336(%r8,%r11,8)                     #196.3
        lea       (%r9,%r11,8), %r10                            #196.3
                                # LOE rax rdx rsi r8 r9 r10 r11 r12 r13 r14 r15 ecx ebx edi xmm2 xmm3 xmm6 xmm7 xmm8 xmm9 xmm10 ymm4 ymm5 ymm11 ymm12
..B1.39:                        # Preds ..B1.39 ..B1.38
        vmovupd   526336(%r9,%r15,8), %ymm1                     #196.3
        vmovupd   526368(%r9,%r15,8), %ymm14                    #196.3
        vmovupd   524296(%r9,%r15,8), %ymm15                    #196.3
        vmovupd   524328(%r9,%r15,8), %ymm13                    #196.3
        vaddpd    526352(%r9,%r15,8), %ymm1, %ymm0              #196.3
        vaddpd    526384(%r9,%r15,8), %ymm14, %ymm1             #196.3
        vaddpd    528392(%r9,%r15,8), %ymm15, %ymm15            #196.3
        vaddpd    528424(%r9,%r15,8), %ymm13, %ymm13            #196.3
        vmovupd   2056(%r9,%r15,8), %ymm14                      #196.3
        vaddpd    1050632(%r9,%r15,8), %ymm14, %ymm14           #196.3
        vaddpd    %ymm14, %ymm15, %ymm14                        #196.3
        vmovupd   2088(%r9,%r15,8), %ymm15                      #196.3
        vaddpd    1050664(%r9,%r15,8), %ymm15, %ymm15           #196.3
        addq      $8, %r15                                      #196.3
        vaddpd    %ymm15, %ymm13, %ymm13                        #196.3
        vmulpd    526344(%r10,%r14,8), %ymm4, %ymm15            #196.3
        vfmadd213pd %ymm15, %ymm12, %ymm0                       #196.3
        vfmadd213pd %ymm0, %ymm12, %ymm14                       #196.3
        vmulpd    526376(%r10,%r14,8), %ymm4, %ymm0             #196.3
        vmovupd   %ymm14, 526344(%r12,%r14,8)                   #196.3
        vfmadd213pd %ymm0, %ymm12, %ymm1                        #196.3
        vfmadd213pd %ymm1, %ymm12, %ymm13                       #196.3
        vmovupd   %ymm13, 526376(%r12,%r14,8)                   #196.3
        addq      $8, %r14                                      #196.3
        cmpq      $248, %r14                                    #196.3
        jb        ..B1.39       # Prob 82%                      #196.3
                                # LOE rax rdx rsi r8 r9 r10 r11 r12 r13 r14 r15 ecx ebx edi xmm2 xmm3 xmm6 xmm7 xmm8 xmm9 xmm10 ymm4 ymm5 ymm11 ymm12
..B1.40:                        # Preds ..B1.39
        movq      %rsi, %r14                                    #196.3
        .align    16,0x90
                                # LOE rax rdx rsi r8 r9 r10 r11 r12 r13 r14 ecx ebx edi xmm2 xmm3 xmm6 xmm7 xmm8 xmm9 xmm10 ymm4 ymm5 ymm11 ymm12
..B1.41:                        # Preds ..B1.41 ..B1.40
        vmovupd   526280(%r9,%rdx,8), %xmm13                    #196.3
        vmovupd   528320(%r9,%rdx,8), %xmm1                     #196.3
        vmovupd   4040(%r9,%rdx,8), %xmm14                      #196.3
        vaddpd    530376(%r9,%rdx,8), %xmm13, %xmm15            #196.3
        vaddpd    528336(%r9,%rdx,8), %xmm1, %xmm0              #196.3
        vaddpd    1052616(%r9,%rdx,8), %xmm14, %xmm1            #196.3
        vmulpd    528328(%r10,%r14,8), %xmm6, %xmm13            #196.3
        vaddpd    %xmm1, %xmm15, %xmm14                         #196.3
        vfmadd213pd %xmm13, %xmm8, %xmm0                        #196.3
        vfmadd213pd %xmm0, %xmm8, %xmm14                        #196.3
        addq      $2, %rdx                                      #196.3
        vmovupd   %xmm14, 528328(%r12,%r14,8)                   #196.3
        addq      $2, %r14                                      #196.3
        cmpq      $6, %r14                                      #196.3
        jb        ..B1.41       # Prob 82%                      #196.3
                                # LOE rax rdx rsi r8 r9 r10 r11 r12 r13 r14 ecx ebx edi xmm2 xmm3 xmm6 xmm7 xmm8 xmm9 xmm10 ymm4 ymm5 ymm11 ymm12
..B1.42:                        # Preds ..B1.41
        vmovsd    528368(%r9,%r13,8), %xmm0                     #196.3
        incl      %ecx                                          #196.3
        addl      $256, %ebx                                    #196.3
        vaddsd    528376(%r9,%r13,8), %xmm0, %xmm1              #196.3
        vmulsd    528376(%r9,%r11,8), %xmm10, %xmm0             #196.3
        vaddsd    526328(%r9,%r13,8), %xmm1, %xmm13             #196.3
        vaddsd    530424(%r9,%r13,8), %xmm13, %xmm14            #196.3
        vaddsd    4088(%r9,%r13,8), %xmm14, %xmm15              #196.3
        vaddsd    1052664(%r9,%r13,8), %xmm15, %xmm1            #196.3
        vfmadd213sd %xmm0, %xmm7, %xmm1                         #196.3
        vmovsd    %xmm1, 528376(%r8,%r11,8)                     #196.3
        cmpl      $254, %ecx                                    #196.3
        jb        ..B1.38       # Prob 91%                      #196.3
                                # LOE rax rsi r8 r9 ecx ebx edi xmm2 xmm3 xmm6 xmm7 xmm8 xmm9 xmm10 ymm4 ymm5 ymm11 ymm12
..B1.43:                        # Preds ..B1.42
        movq      40(%rsp), %r13                                #
        lea       130817(%rdi), %ecx                            #196.3
        vmovsd    1046528(%r9,%r13,8), %xmm13                   #196.3
        xorl      %edx, %edx                                    #
        movq      176(%rsp), %r11                               #
        movq      %rsi, %rbx                                    #196.3
        movq      184(%rsp), %r10                               #
        movl      24(%rsp), %r12d                               #
        vaddsd    1046536(%r9,%r13,8), %xmm13, %xmm0            #196.3
        vaddsd    1044480(%r9,%r13,8), %xmm0, %xmm1             #196.3
        vmulsd    1046528(%r9,%r11,8), %xmm10, %xmm0            #196.3
        vaddsd    %xmm13, %xmm1, %xmm14                         #196.3
        vmovd     %ecx, %xmm13                                  #196.3
        movq      %r13, %rcx                                    #196.3
        vaddsd    522240(%r9,%r13,8), %xmm14, %xmm15            #196.3
        vpbroadcastd %xmm13, %ymm14                             #196.3
        vaddsd    1570816(%r9,%r13,8), %xmm15, %xmm1            #196.3
        vfmadd213sd %xmm0, %xmm7, %xmm1                         #196.3
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm14, %ymm0    #196.3
        vmovsd    %xmm1, 1046528(%r8,%r11,8)                    #196.3
                                # LOE rax rcx rbx rsi r8 r9 r10 r11 r13 edx edi r12d xmm2 xmm3 xmm6 xmm8 xmm9 ymm0 ymm4 ymm5 ymm11 ymm12
..B1.44:                        # Preds ..B1.44 ..B1.43
        vmovdqa   %ymm11, %ymm1                                 #196.3
        vxorpd    %ymm7, %ymm7, %ymm7                           #196.3
        vmovupd   1046528(%r9,%rcx,8), %ymm15                   #196.3
        vmovupd   1046560(%r9,%rcx,8), %ymm13                   #196.3
        vaddpd    1046544(%r9,%rcx,8), %ymm15, %ymm14           #196.3
        vaddpd    1046576(%r9,%rcx,8), %ymm13, %ymm13           #196.3
        vgatherdpd %ymm1, (%r9,%xmm0,8), %ymm7                  #196.3
        vextracti128 $1, %ymm0, %xmm15                          #196.3
        vpaddd    %ymm5, %ymm0, %ymm0                           #196.3
        vaddpd    1044488(%r9,%rcx,8), %ymm7, %ymm10            #196.3
        vxorpd    %ymm7, %ymm7, %ymm7                           #196.3
        vmovdqa   %ymm11, %ymm1                                 #196.3
        vgatherdpd %ymm1, (%r9,%xmm15,8), %ymm7                 #196.3
        vmovupd   522248(%r9,%rcx,8), %ymm15                    #196.3
        vaddpd    1044520(%r9,%rcx,8), %ymm7, %ymm7             #196.3
        vaddpd    1570824(%r9,%rcx,8), %ymm15, %ymm1            #196.3
        vaddpd    %ymm1, %ymm10, %ymm1                          #196.3
        vmovupd   522280(%r9,%rcx,8), %ymm10                    #196.3
        vaddpd    1570856(%r9,%rcx,8), %ymm10, %ymm10           #196.3
        addq      $8, %rcx                                      #196.3
        vaddpd    %ymm10, %ymm7, %ymm15                         #196.3
        vmulpd    1046536(%r10,%rbx,8), %ymm4, %ymm7            #196.3
        vfmadd213pd %ymm7, %ymm12, %ymm14                       #196.3
        vfmadd213pd %ymm14, %ymm12, %ymm1                       #196.3
        vmulpd    1046568(%r10,%rbx,8), %ymm4, %ymm14           #196.3
        vmovupd   %ymm1, 1046536(%rax,%rbx,8)                   #196.3
        vfmadd213pd %ymm14, %ymm12, %ymm13                      #196.3
        vfmadd213pd %ymm13, %ymm12, %ymm15                      #196.3
        vmovupd   %ymm15, 1046568(%rax,%rbx,8)                  #196.3
        addq      $8, %rbx                                      #196.3
        cmpq      $248, %rbx                                    #196.3
        jb        ..B1.44       # Prob 82%                      #196.3
                                # LOE rax rcx rbx rsi r8 r9 r10 r11 r13 edx edi r12d xmm2 xmm3 xmm6 xmm8 xmm9 ymm0 ymm4 ymm5 ymm11 ymm12
..B1.45:                        # Preds ..B1.44
        vmovsd    .L_2il0floatpacket.8(%rip), %xmm10            #
        lea       131065(%rdi), %ecx                            #196.3
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm7             #
        lea       131066(%rdi), %ebx                            #196.3
        vmovd     %ecx, %xmm0                                   #196.3
        movq      %r13, %rcx                                    #196.3
        vmovd     %ebx, %xmm1                                   #196.3
        movq      %rsi, %rbx                                    #196.3
        vpunpckldq %xmm1, %xmm0, %xmm13                         #196.3
        vpunpcklqdq %xmm3, %xmm13, %xmm1                        #196.3
        .align    16,0x90
                                # LOE rax rcx rbx rsi r8 r9 r10 r11 r13 edx edi r12d xmm1 xmm2 xmm3 xmm6 xmm7 xmm8 xmm9 xmm10 ymm4 ymm5 ymm11 ymm12
..B1.46:                        # Preds ..B1.46 ..B1.45
        vmovd     %xmm1, %r15                                   #196.3
        vpaddd    %xmm9, %xmm1, %xmm1                           #196.3
        vmovupd   1048512(%r9,%rcx,8), %xmm13                   #196.3
        movslq    %r15d, %r14                                   #196.3
        sarq      $32, %r15                                     #196.3
        vaddpd    1048528(%r9,%rcx,8), %xmm13, %xmm0            #196.3
        vmovupd   524232(%r9,%rcx,8), %xmm13                    #196.3
        vmovq     (%r9,%r14,8), %xmm14                          #196.3
        vmovhpd   (%r9,%r15,8), %xmm14, %xmm15                  #196.3
        vaddpd    1046472(%r9,%rcx,8), %xmm15, %xmm14           #196.3
        vaddpd    1572808(%r9,%rcx,8), %xmm13, %xmm15           #196.3
        vmulpd    1048520(%r10,%rbx,8), %xmm6, %xmm13           #196.3
        vaddpd    %xmm15, %xmm14, %xmm14                        #196.3
        vfmadd213pd %xmm13, %xmm8, %xmm0                        #196.3
        vfmadd213pd %xmm0, %xmm8, %xmm14                        #196.3
        addq      $2, %rcx                                      #196.3
        vmovupd   %xmm14, 1048520(%rax,%rbx,8)                  #196.3
        addq      $2, %rbx                                      #196.3
        cmpq      $6, %rbx                                      #196.3
        jb        ..B1.46       # Prob 82%                      #196.3
                                # LOE rax rcx rbx rsi r8 r9 r10 r11 r13 edx edi r12d xmm1 xmm2 xmm3 xmm6 xmm7 xmm8 xmm9 xmm10 ymm4 ymm5 ymm11 ymm12
..B1.47:                        # Preds ..B1.46
        vmovsd    1048568(%r9,%r13,8), %xmm13                   #196.3
        incl      %r12d                                         #196.3
        addl      $65536, %edi                                  #196.3
        vaddsd    1048560(%r9,%r13,8), %xmm13, %xmm0            #196.3
        vaddsd    1046520(%r9,%r13,8), %xmm0, %xmm1             #196.3
        vmulsd    1048568(%r9,%r11,8), %xmm10, %xmm0            #196.3
        vaddsd    %xmm13, %xmm1, %xmm14                         #196.3
        vaddsd    524280(%r9,%r13,8), %xmm14, %xmm15            #196.3
        vaddsd    1572856(%r9,%r13,8), %xmm15, %xmm1            #196.3
        addq      $65536, %r13                                  #196.3
        vfmadd213sd %xmm0, %xmm7, %xmm1                         #196.3
        vmovsd    %xmm1, 1048568(%r8,%r11,8)                    #196.3
        cmpl      $254, %r12d                                   #196.3
        jb        ..B1.33       # Prob 99%                      #196.3
                                # LOE rsi r8 r9 r13 edx edi r12d xmm2 xmm3 xmm6 xmm7 xmm8 xmm9 xmm10 ymm4 ymm5 ymm11 ymm12
..B1.48:                        # Preds ..B1.47
        vmovsd    133693440(%r9), %xmm15                        #196.3
        vmovapd   %xmm2, %xmm14                                 #196.3
        vfmadd213sd 133693448(%r9), %xmm15, %xmm14              #196.3
        movq      %rsi, %rdi                                    #196.3
        vmovdqu   %ymm5, 96(%rsp)                               #
        vmovdqu   .L_2il0floatpacket.22(%rip), %ymm5            #
        vmovdqu   %xmm9, 80(%rsp)                               #196.3
        vmovdqu   128(%rsp), %xmm0                              #
        vmovdqu   144(%rsp), %xmm12                             #
        vmovdqu   160(%rsp), %xmm1                              #
        movq      %r9, %rbx                                     #196.3
        movb      192(%rsp), %al                                #
        movq      %r8, %rcx                                     #196.3
        vmovdqu   .L_2il0floatpacket.23(%rip), %ymm11           #
        vmovdqu   .L_2il0floatpacket.21(%rip), %ymm13           #
        vmovupd   .L_2il0floatpacket.10(%rip), %ymm9            #196.3
        vaddsd    133695488(%r9), %xmm14, %xmm14                #196.3
        vpcmpeqd  %ymm8, %ymm8, %ymm8                           #196.3
        vaddsd    133169152(%r9), %xmm14, %xmm14                #196.3
        vaddsd    %xmm15, %xmm14, %xmm14                        #196.3
        vmulsd    %xmm15, %xmm10, %xmm15                        #196.3
        vmovupd   .L_2il0floatpacket.9(%rip), %ymm10            #196.3
        vfmadd213sd %xmm15, %xmm7, %xmm14                       #196.3
        vmovdqu   96(%rsp), %ymm15                              #196.3
        vmovsd    %xmm14, 133693440(%r8)                        #196.3
        vmovdqa   %ymm5, %ymm14                                 #196.3
                                # LOE rcx rbx rsi rdi r8 r9 edx al xmm0 xmm1 xmm12 ymm5 ymm8 ymm9 ymm10 ymm11 ymm13 ymm14 ymm15
..B1.49:                        # Preds ..B1.49 ..B1.48
        vmovdqa   %ymm8, %ymm3                                  #196.3
        vxorpd    %ymm2, %ymm2, %ymm2                           #196.3
        vmovupd   133693448(%rbx), %ymm6                        #196.3
        vmovupd   133693480(%rbx), %ymm7                        #196.3
        addq      $64, %rbx                                     #196.3
        vgatherdpd %ymm3, (%r9,%xmm14,8), %ymm2                 #196.3
        vmulpd    %ymm2, %ymm9, %ymm4                           #196.3
        vfmadd213pd %ymm4, %ymm10, %ymm6                        #196.3
        vaddpd    %ymm4, %ymm6, %ymm4                           #196.3
        vextracti128 $1, %ymm14, %xmm6                          #196.3
        vpaddd    %ymm15, %ymm14, %ymm14                        #196.3
        vxorpd    %ymm2, %ymm2, %ymm2                           #196.3
        vmovdqa   %ymm8, %ymm3                                  #196.3
        vgatherdpd %ymm3, (%r9,%xmm6,8), %ymm2                  #196.3
        vmulpd    %ymm2, %ymm9, %ymm6                           #196.3
        vfmadd213pd %ymm6, %ymm10, %ymm7                        #196.3
        vaddpd    %ymm6, %ymm7, %ymm3                           #196.3
        vmovupd   133695496(%r9,%rdi,8), %ymm7                  #196.3
        vaddpd    133169160(%r9,%rdi,8), %ymm7, %ymm2           #196.3
        vaddpd    133693456(%r9,%rdi,8), %ymm2, %ymm2           #196.3
        vfmadd213pd %ymm4, %ymm9, %ymm2                         #196.3
        vmovupd   133695528(%r9,%rdi,8), %ymm4                  #196.3
        vfmadd231pd 133693440(%r9,%rdi,8), %ymm9, %ymm2         #196.3
        vaddpd    133169192(%r9,%rdi,8), %ymm4, %ymm6           #196.3
        vaddpd    133693488(%r9,%rdi,8), %ymm6, %ymm4           #196.3
        vfmadd213pd %ymm3, %ymm9, %ymm4                         #196.3
        vfmadd231pd 133693472(%r9,%rdi,8), %ymm9, %ymm4         #196.3
        addq      $8, %rdi                                      #196.3
        vmovupd   %ymm2, 133693448(%rcx)                        #196.3
        vmovupd   %ymm4, 133693480(%rcx)                        #196.3
        addq      $64, %rcx                                     #196.3
        cmpq      $248, %rdi                                    #196.3
        jb        ..B1.49       # Prob 82%                      #196.3
                                # LOE rcx rbx rsi rdi r8 r9 edx al xmm0 xmm1 xmm12 ymm5 ymm8 ymm9 ymm10 ymm11 ymm13 ymm14 ymm15
..B1.50:                        # Preds ..B1.49
        vmovdqu   48(%rsp), %xmm4                               #
        vmovdqa   %xmm12, %xmm14                                #196.3
        vmovdqu   80(%rsp), %xmm9                               #
        xorb      %r10b, %r10b                                  #196.3
        vmovdqu   .L_2il0floatpacket.20(%rip), %ymm3            #
        movq      %r9, %rdi                                     #196.3
        vmovsd    .L_2il0floatpacket.13(%rip), %xmm2            #
        vmovupd   .L_2il0floatpacket.12(%rip), %xmm8            #
        vmovupd   .L_2il0floatpacket.11(%rip), %xmm6            #
        vmovsd    .L_2il0floatpacket.8(%rip), %xmm10            #
        movq      %r8, %rbx                                     #196.3
        movl      $133171144, %ecx                              #196.3
        .align    16,0x90
                                # LOE rcx rbx rsi rdi r8 r9 edx al r10b xmm0 xmm1 xmm2 xmm4 xmm6 xmm8 xmm9 xmm10 xmm12 xmm14 ymm3 ymm5 ymm11 ymm13
..B1.51:                        # Preds ..B1.51 ..B1.50
        vmovd     %xmm14, %r12                                  #196.3
        addb      $2, %r10b                                     #196.3
        vmovupd   133695432(%rdi), %xmm15                       #196.3
        movslq    %r12d, %r11                                   #196.3
        addq      $16, %rdi                                     #196.3
        sarq      $32, %r12                                     #196.3
        vpaddd    %xmm9, %xmm14, %xmm14                         #196.3
        vmovq     (%r9,%r11,8), %xmm7                           #196.3
        vmovhpd   (%r9,%r12,8), %xmm7, %xmm7                    #196.3
        vmulpd    %xmm7, %xmm8, %xmm7                           #196.3
        vfmadd213pd %xmm7, %xmm6, %xmm15                        #196.3
        vaddpd    %xmm7, %xmm15, %xmm7                          #196.3
        vmovupd   526336(%rcx,%r9), %xmm15                      #196.3
        vaddpd    (%rcx,%r9), %xmm15, %xmm15                    #196.3
        vaddpd    524296(%rcx,%r9), %xmm15, %xmm15              #196.3
        vfmadd213pd %xmm7, %xmm8, %xmm15                        #196.3
        vfmadd231pd 524280(%rcx,%r9), %xmm8, %xmm15             #196.3
        addq      $16, %rcx                                     #196.3
        vmovupd   %xmm15, 133695432(%rbx)                       #196.3
        addq      $16, %rbx                                     #196.3
        cmpb      $6, %r10b                                     #196.3
        jb        ..B1.51       # Prob 82%                      #196.3
                                # LOE rcx rbx rsi rdi r8 r9 edx al r10b xmm0 xmm1 xmm2 xmm4 xmm6 xmm8 xmm9 xmm10 xmm12 xmm14 ymm3 ymm5 ymm11 ymm13
..B1.52:                        # Preds ..B1.51
        vmovsd    133695480(%r9), %xmm15                        #196.3
        vmovapd   %xmm2, %xmm14                                 #196.3
        vfmadd213sd 133695472(%r9), %xmm15, %xmm14              #196.3
        movl      %edx, %edi                                    #196.3
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm7             #
        vmovdqu   %xmm0, 128(%rsp)                              #196.3
        vmovdqu   %xmm1, 160(%rsp)                              #196.3
        vmovdqu   %xmm4, 48(%rsp)                               #196.3
        vpxor     %xmm1, %xmm1, %xmm1                           #196.3
        vmovdqu   %xmm12, 144(%rsp)                             #196.3
        movq      %rsi, %r10                                    #196.3
        vpcmpeqd  %ymm0, %ymm0, %ymm0                           #196.3
        vmovupd   .L_2il0floatpacket.10(%rip), %ymm4            #196.3
        vmovupd   .L_2il0floatpacket.9(%rip), %ymm2             #196.3
        vmovdqu   96(%rsp), %ymm3                               #196.3
        vaddsd    133697528(%r9), %xmm14, %xmm14                #196.3
        vaddsd    133171192(%r9), %xmm14, %xmm14                #196.3
        vaddsd    %xmm15, %xmm14, %xmm14                        #196.3
        vmulsd    %xmm15, %xmm10, %xmm15                        #196.3
        vfmadd213sd %xmm15, %xmm7, %xmm14                       #196.3
        vmovsd    %xmm14, 133695480(%r8)                        #196.3
                                # LOE rsi r8 r9 r10 edx edi al xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 ymm0 ymm2 ymm3 ymm4
..B1.53:                        # Preds ..B1.57 ..B1.52
        vmovsd    133695488(%r9,%r10,8), %xmm14                 #196.3
        movl      %edi, %ecx                                    #196.3
        shll      $8, %ecx                                      #196.3
        movq      %rsi, %r14                                    #196.3
        movl      %ecx, %r11d                                   #196.3
        vmulsd    133695488(%r9,%r11,8), %xmm10, %xmm15         #196.3
        lea       (%r8,%r11,8), %r12                            #196.3
        vaddsd    133695496(%r9,%r10,8), %xmm14, %xmm5          #196.3
        movq      %r10, %r13                                    #196.3
        lea       16711937(%rcx), %ebx                          #196.3
        vaddsd    133693440(%r9,%r10,8), %xmm5, %xmm11          #196.3
        vaddsd    133697536(%r9,%r10,8), %xmm11, %xmm12         #196.3
        vmovd     %ebx, %xmm11                                  #196.3
        vaddsd    133171200(%r9,%r10,8), %xmm12, %xmm13         #196.3
        vpbroadcastd %xmm11, %ymm12                             #196.3
        lea       (%r9,%r11,8), %rbx                            #196.3
        vaddsd    %xmm14, %xmm13, %xmm5                         #196.3
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm12, %ymm13   #196.3
        vfmadd213sd %xmm15, %xmm7, %xmm5                        #196.3
        vmovsd    %xmm5, 133695488(%r8,%r11,8)                  #196.3
                                # LOE rbx rsi r8 r9 r10 r11 r12 r13 r14 edx ecx edi al xmm1 xmm6 xmm8 xmm9 ymm0 ymm2 ymm3 ymm4 ymm13
..B1.54:                        # Preds ..B1.54 ..B1.53
        vmovupd   133693448(%r9,%r13,8), %ymm5                  #196.3
        vmovupd   133695488(%r9,%r13,8), %ymm14                 #196.3
        vmovupd   133695520(%r9,%r13,8), %ymm15                 #196.3
        vmovupd   133693480(%r9,%r13,8), %ymm10                 #196.3
        vaddpd    133697544(%r9,%r13,8), %ymm5, %ymm7           #196.3
        vaddpd    133695504(%r9,%r13,8), %ymm14, %ymm12         #196.3
        vaddpd    133695536(%r9,%r13,8), %ymm15, %ymm11         #196.3
        vaddpd    133697576(%r9,%r13,8), %ymm10, %ymm10         #196.3
        vxorpd    %ymm5, %ymm5, %ymm5                           #196.3
        vmovdqa   %ymm0, %ymm14                                 #196.3
        vgatherdpd %ymm14, (%r9,%xmm13,8), %ymm5                #196.3
        vaddpd    133171208(%r9,%r13,8), %ymm5, %ymm15          #196.3
        vaddpd    %ymm15, %ymm7, %ymm5                          #196.3
        vextracti128 $1, %ymm13, %xmm7                          #196.3
        vpaddd    %ymm3, %ymm13, %ymm13                         #196.3
        vxorpd    %ymm15, %ymm15, %ymm15                        #196.3
        vmovdqa   %ymm0, %ymm14                                 #196.3
        vgatherdpd %ymm14, (%r9,%xmm7,8), %ymm15                #196.3
        vaddpd    133171240(%r9,%r13,8), %ymm15, %ymm7          #196.3
        addq      $8, %r13                                      #196.3
        vaddpd    %ymm7, %ymm10, %ymm7                          #196.3
        vmulpd    133695496(%rbx,%r14,8), %ymm2, %ymm10         #196.3
        vfmadd213pd %ymm10, %ymm4, %ymm12                       #196.3
        vfmadd213pd %ymm12, %ymm4, %ymm5                        #196.3
        vmulpd    133695528(%rbx,%r14,8), %ymm2, %ymm12         #196.3
        vmovupd   %ymm5, 133695496(%r12,%r14,8)                 #196.3
        vfmadd213pd %ymm12, %ymm4, %ymm11                       #196.3
        vfmadd213pd %ymm11, %ymm4, %ymm7                        #196.3
        vmovupd   %ymm7, 133695528(%r12,%r14,8)                 #196.3
        addq      $8, %r14                                      #196.3
        cmpq      $248, %r14                                    #196.3
        jb        ..B1.54       # Prob 82%                      #196.3
                                # LOE rbx rsi r8 r9 r10 r11 r12 r13 r14 edx ecx edi al xmm1 xmm6 xmm8 xmm9 ymm0 ymm2 ymm3 ymm4 ymm13
..B1.55:                        # Preds ..B1.54
        vmovsd    .L_2il0floatpacket.8(%rip), %xmm10            #
        lea       16712185(%rcx), %r13d                         #196.3
        addl      $16712186, %ecx                               #196.3
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm7             #
        vmovd     %r13d, %xmm5                                  #196.3
        movq      %rsi, %r13                                    #196.3
        vmovd     %ecx, %xmm11                                  #196.3
        movq      %r10, %rcx                                    #196.3
        vpunpckldq %xmm11, %xmm5, %xmm12                        #196.3
        vpunpcklqdq %xmm1, %xmm12, %xmm11                       #196.3
        .align    16,0x90
                                # LOE rcx rbx rsi r8 r9 r10 r11 r12 r13 edx edi al xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 ymm0 ymm2 ymm3 ymm4
..B1.56:                        # Preds ..B1.56 ..B1.55
        vmovd     %xmm11, %r15                                  #196.3
        vpaddd    %xmm9, %xmm11, %xmm11                         #196.3
        vmovupd   133697472(%r9,%rcx,8), %xmm12                 #196.3
        vmovupd   133695432(%r9,%rcx,8), %xmm13                 #196.3
        vaddpd    133697488(%r9,%rcx,8), %xmm12, %xmm5          #196.3
        vaddpd    133699528(%r9,%rcx,8), %xmm13, %xmm12         #196.3
        movslq    %r15d, %r14                                   #196.3
        sarq      $32, %r15                                     #196.3
        vmovq     (%r9,%r14,8), %xmm14                          #196.3
        vmovhpd   (%r9,%r15,8), %xmm14, %xmm15                  #196.3
        vmulpd    133697480(%rbx,%r13,8), %xmm6, %xmm14         #196.3
        vaddpd    133173192(%r9,%rcx,8), %xmm15, %xmm13         #196.3
        vfmadd213pd %xmm14, %xmm8, %xmm5                        #196.3
        vaddpd    %xmm13, %xmm12, %xmm12                        #196.3
        vfmadd213pd %xmm5, %xmm8, %xmm12                        #196.3
        addq      $2, %rcx                                      #196.3
        vmovupd   %xmm12, 133697480(%r12,%r13,8)                #196.3
        addq      $2, %r13                                      #196.3
        cmpq      $6, %r13                                      #196.3
        jb        ..B1.56       # Prob 82%                      #196.3
                                # LOE rcx rbx rsi r8 r9 r10 r11 r12 r13 edx edi al xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 ymm0 ymm2 ymm3 ymm4
..B1.57:                        # Preds ..B1.56
        vmovsd    133697528(%r9,%r10,8), %xmm14                 #196.3
        incl      %edi                                          #196.3
        vmulsd    133697528(%r9,%r11,8), %xmm10, %xmm15         #196.3
        vaddsd    133697520(%r9,%r10,8), %xmm14, %xmm5          #196.3
        vaddsd    133695480(%r9,%r10,8), %xmm5, %xmm11          #196.3
        vaddsd    133699576(%r9,%r10,8), %xmm11, %xmm12         #196.3
        vaddsd    133173240(%r9,%r10,8), %xmm12, %xmm13         #196.3
        addq      $256, %r10                                    #196.3
        vaddsd    %xmm14, %xmm13, %xmm5                         #196.3
        vfmadd213sd %xmm15, %xmm7, %xmm5                        #196.3
        vmovsd    %xmm5, 133697528(%r8,%r11,8)                  #196.3
        cmpl      $254, %edi                                    #196.3
        jb        ..B1.53       # Prob 91%                      #196.3
                                # LOE rsi r8 r9 r10 edx edi al xmm1 xmm6 xmm7 xmm8 xmm9 xmm10 ymm0 ymm2 ymm3 ymm4
..B1.58:                        # Preds ..B1.57
        vmovsd    134215680(%r9), %xmm15                        #196.3
        movq      %rsi, %rdi                                    #196.3
        vmovdqu   .L_2il0floatpacket.23(%rip), %ymm11           #
        movq      %r9, %rbx                                     #196.3
        vmovdqu   %xmm9, 80(%rsp)                               #196.3
        vmovdqu   128(%rsp), %xmm0                              #
        vmovdqu   144(%rsp), %xmm12                             #
        vmovdqu   160(%rsp), %xmm1                              #
        movq      %r8, %rcx                                     #196.3
        vmovdqu   .L_2il0floatpacket.22(%rip), %ymm5            #
        vmovupd   .L_2il0floatpacket.9(%rip), %ymm13            #196.3
        vaddsd    134215688(%r9), %xmm15, %xmm14                #196.3
        vpcmpeqd  %ymm9, %ymm9, %ymm9                           #196.3
        vaddsd    134213632(%r9), %xmm14, %xmm14                #196.3
        vaddsd    %xmm15, %xmm14, %xmm14                        #196.3
        vaddsd    133691392(%r9), %xmm14, %xmm14                #196.3
        vaddsd    %xmm15, %xmm14, %xmm14                        #196.3
        vmulsd    %xmm15, %xmm10, %xmm15                        #196.3
        vmovupd   .L_2il0floatpacket.10(%rip), %ymm10           #196.3
        vfmadd213sd %xmm15, %xmm7, %xmm14                       #196.3
        vmovdqu   96(%rsp), %ymm15                              #196.3
        vmovsd    %xmm14, 134215680(%r8)                        #196.3
        vmovdqa   %ymm11, %ymm14                                #196.3
                                # LOE rcx rbx rsi rdi r8 r9 edx al xmm0 xmm1 xmm12 ymm5 ymm9 ymm10 ymm11 ymm13 ymm14 ymm15
..B1.59:                        # Preds ..B1.59 ..B1.58
        vmovupd   134213672(%r9,%rdi,8), %ymm2                  #196.3
        vmovupd   134215688(%rbx), %ymm8                        #196.3
        vmovupd   134213640(%r9,%rdi,8), %ymm6                  #196.3
        vmovupd   134215720(%rbx), %ymm7                        #196.3
        vaddpd    133691432(%r9,%rdi,8), %ymm2, %ymm3           #196.3
        vaddpd    133691400(%r9,%rdi,8), %ymm6, %ymm6           #196.3
        vaddpd    134215728(%r9,%rdi,8), %ymm3, %ymm2           #196.3
        vaddpd    134215696(%r9,%rdi,8), %ymm6, %ymm6           #196.3
        vxorpd    %ymm4, %ymm4, %ymm4                           #196.3
        addq      $64, %rbx                                     #196.3
        vmovdqa   %ymm9, %ymm3                                  #196.3
        vgatherdpd %ymm3, (%r9,%xmm14,8), %ymm4                 #196.3
        vextracti128 $1, %ymm14, %xmm3                          #196.3
        vpaddd    %ymm15, %ymm14, %ymm14                        #196.3
        vmulpd    %ymm4, %ymm10, %ymm4                          #196.3
        vfmadd213pd %ymm4, %ymm13, %ymm8                        #196.3
        vaddpd    %ymm4, %ymm8, %ymm8                           #196.3
        vfmadd213pd %ymm8, %ymm10, %ymm6                        #196.3
        vxorpd    %ymm8, %ymm8, %ymm8                           #196.3
        vmovdqa   %ymm9, %ymm4                                  #196.3
        vgatherdpd %ymm4, (%r9,%xmm3,8), %ymm8                  #196.3
        vfmadd231pd 134215680(%r9,%rdi,8), %ymm10, %ymm6        #196.3
        vmulpd    %ymm8, %ymm10, %ymm3                          #196.3
        vfmadd213pd %ymm3, %ymm13, %ymm7                        #196.3
        vaddpd    %ymm3, %ymm7, %ymm7                           #196.3
        vfmadd213pd %ymm7, %ymm10, %ymm2                        #196.3
        vfmadd231pd 134215712(%r9,%rdi,8), %ymm10, %ymm2        #196.3
        addq      $8, %rdi                                      #196.3
        vmovupd   %ymm6, 134215688(%rcx)                        #196.3
        vmovupd   %ymm2, 134215720(%rcx)                        #196.3
        addq      $64, %rcx                                     #196.3
        cmpq      $248, %rdi                                    #196.3
        jb        ..B1.59       # Prob 82%                      #196.3
                                # LOE rcx rbx rsi rdi r8 r9 edx al xmm0 xmm1 xmm12 ymm5 ymm9 ymm10 ymm11 ymm13 ymm14 ymm15
..B1.60:                        # Preds ..B1.59
        vmovdqu   .L_2il0floatpacket.21(%rip), %ymm13           #
        xorb      %r10b, %r10b                                  #196.3
        vmovdqu   48(%rsp), %xmm4                               #
        vmovdqa   %xmm0, %xmm14                                 #196.3
        vmovdqu   80(%rsp), %xmm9                               #
        vmovsd    .L_2il0floatpacket.13(%rip), %xmm2            #
        vmovupd   .L_2il0floatpacket.12(%rip), %xmm8            #
        vmovdqu   .L_2il0floatpacket.20(%rip), %ymm3            #
        movq      %r9, %rdi                                     #196.3
        vmovupd   .L_2il0floatpacket.11(%rip), %xmm6            #
        movq      %r8, %rbx                                     #196.3
        movl      $133693384, %ecx                              #196.3
        .align    16,0x90
                                # LOE rcx rbx rsi rdi r8 r9 edx al r10b xmm0 xmm1 xmm2 xmm4 xmm6 xmm8 xmm9 xmm12 xmm14 ymm3 ymm5 ymm11 ymm13
..B1.61:                        # Preds ..B1.61 ..B1.60
        vmovd     %xmm14, %r12                                  #196.3
        addb      $2, %r10b                                     #196.3
        vmovupd   522240(%rcx,%r9), %xmm15                      #196.3
        vmovupd   134217672(%rdi), %xmm10                       #196.3
        vaddpd    (%rcx,%r9), %xmm15, %xmm7                     #196.3
        movslq    %r12d, %r11                                   #196.3
        addq      $16, %rdi                                     #196.3
        sarq      $32, %r12                                     #196.3
        vpaddd    %xmm9, %xmm14, %xmm14                         #196.3
        vaddpd    524296(%rcx,%r9), %xmm7, %xmm7                #196.3
        vmovq     (%r9,%r11,8), %xmm15                          #196.3
        vmovhpd   (%r9,%r12,8), %xmm15, %xmm15                  #196.3
        vmulpd    %xmm15, %xmm8, %xmm15                         #196.3
        vfmadd213pd %xmm15, %xmm6, %xmm10                       #196.3
        vaddpd    %xmm15, %xmm10, %xmm10                        #196.3
        vfmadd213pd %xmm10, %xmm8, %xmm7                        #196.3
        vfmadd231pd 524280(%rcx,%r9), %xmm8, %xmm7              #196.3
        addq      $16, %rcx                                     #196.3
        vmovupd   %xmm7, 134217672(%rbx)                        #196.3
        addq      $16, %rbx                                     #196.3
        cmpb      $6, %r10b                                     #196.3
        jb        ..B1.61       # Prob 82%                      #196.3
                                # LOE rcx rbx rsi rdi r8 r9 edx al r10b xmm0 xmm1 xmm2 xmm4 xmm6 xmm8 xmm9 xmm12 xmm14 ymm3 ymm5 ymm11 ymm13
..B1.62:                        # Preds ..B1.61
        vmovsd    134217720(%r9), %xmm15                        #196.3
        incb      %al                                           #196.3
        vmovsd    .L_2il0floatpacket.8(%rip), %xmm10            #
        movq      %r9, %rcx                                     #196.3
        vmovsd    .L_2il0floatpacket.7(%rip), %xmm7             #
        vaddsd    134217712(%r9), %xmm15, %xmm14                #196.3
        vaddsd    134215672(%r9), %xmm14, %xmm14                #196.3
        vaddsd    %xmm15, %xmm14, %xmm14                        #196.3
        vaddsd    133693432(%r9), %xmm14, %xmm14                #196.3
        movq      %r8, %r9                                      #196.3
        vaddsd    %xmm15, %xmm14, %xmm14                        #196.3
        vmulsd    %xmm15, %xmm10, %xmm15                        #196.3
        vfmadd213sd %xmm15, %xmm7, %xmm14                       #196.3
        vmovsd    %xmm14, 134217720(%r8)                        #196.3
        movq      %rcx, %r8                                     #196.3
        cmpb      $65, %al                                      #196.3
        jb        ..B1.18       # Prob 99%                      #196.3
                                # LOE rsi r8 r9 edx al xmm0 xmm1 xmm2 xmm4 xmm6 xmm7 xmm8 xmm9 xmm10 xmm12 ymm3 ymm5 ymm11 ymm13
..B1.63:                        # Preds ..B1.62
        vzeroupper                                              #198.14
        movq      (%rsp), %r14                                  #
        movq      8(%rsp), %rbx                                 #
        movq      16(%rsp), %r15                                #
..___tag_value_main.17:                                         #198.14
#       omp_get_wtime(void)
        call      omp_get_wtime                                 #198.14
..___tag_value_main.18:                                         #
                                # LOE rbx r12 r13 r14 r15 ebx r14d r15d bl bh r14b r15b xmm0
..B1.64:                        # Preds ..B1.63
        xorl      %edx, %edx                                    #202.3
        movl      %edx, %r12d                                   #202.3
        vmovsd    %xmm0, (%rsp)                                 #202.3
        movq      %rbx, 8(%rsp)                                 #202.3
        movl      %edx, %ebx                                    #202.3
        movq      %r15, 16(%rsp)                                #202.3
        movl      %edx, %r15d                                   #202.3
                                # LOE r14 ebx r12d r15d
..B1.65:                        # Preds ..B1.69 ..B1.64
        vxorpd    %xmm0, %xmm0, %xmm0                           #202.3
        movl      %r15d, %r13d                                  #202.3
        vcvtsi2sd %r12d, %xmm0, %xmm0                           #202.3
        vaddsd    .L_2il0floatpacket.4(%rip), %xmm0, %xmm1      #202.3
        vmulsd    .L_2il0floatpacket.3(%rip), %xmm1, %xmm0      #202.3
        vzeroupper                                              #202.3
        call      cos                                           #202.3
                                # LOE r14 ebx r12d r13d r15d xmm0
..B1.95:                        # Preds ..B1.65
        vmovupd   .L_2il0floatpacket.6(%rip), %ymm1             #202.3
        movl      %r15d, %eax                                   #202.3
        vbroadcastsd %xmm0, %ymm0                               #202.3
        vfnmadd132pd .L_2il0floatpacket.14(%rip), %ymm1, %ymm0  #202.3
        vmovupd   %ymm0, 96(%rsp)                               #202.3
        movl      %r12d, 24(%rsp)                               #202.3
        movl      %r13d, %r12d                                  #202.3
        movl      %eax, %r13d                                   #202.3
                                # LOE r14 ebx r12d r13d
..B1.66:                        # Preds ..B1.68 ..B1.95
        vxorpd    %xmm1, %xmm1, %xmm1                           #202.3
        xorl      %r15d, %r15d                                  #202.3
        vcvtsi2sd %r12d, %xmm1, %xmm1                           #202.3
        vmovdqu   .L_2il0floatpacket.0(%rip), %xmm0             #202.3
        vmovdqu   %xmm0, 48(%rsp)                               #202.3
        vaddsd    .L_2il0floatpacket.4(%rip), %xmm1, %xmm2      #202.3
        vmulsd    .L_2il0floatpacket.3(%rip), %xmm2, %xmm0      #202.3
        vzeroupper                                              #202.3
        call      cos                                           #202.3
                                # LOE r14 r15 ebx r12d r13d xmm0
..B1.96:                        # Preds ..B1.66
        vmovupd   .L_2il0floatpacket.6(%rip), %ymm1             #202.3
        lea       (%rbx,%r13), %edx                             #202.3
        vmovdqu   48(%rsp), %xmm12                              #202.3
        vbroadcastsd %xmm0, %ymm8                               #202.3
        vmovdqu   64(%rsp), %xmm15                              #202.3
        vmovupd   .L_2il0floatpacket.14(%rip), %ymm9            #202.3
        vmovupd   .L_2il0floatpacket.5(%rip), %ymm11            #202.3
        vfnmadd132pd .L_2il0floatpacket.14(%rip), %ymm1, %ymm8  #202.3
        vmovupd   .L_2il0floatpacket.2(%rip), %ymm13            #202.3
        vmovupd   .L_2il0floatpacket.1(%rip), %ymm14            #202.3
        movslq    %edx, %rdx                                    #202.3
        vmovdqa   %ymm1, %ymm10                                 #202.3
        lea       (%r14,%rdx,8), %rsi                           #202.3
                                # LOE rsi r14 r15 ebx r12d r13d xmm12 xmm15 ymm8 ymm9 ymm10 ymm11 ymm13 ymm14
..B1.67:                        # Preds ..B1.97 ..B1.96
        vcvtdq2pd %xmm12, %ymm1                                 #202.3
        vaddpd    %ymm1, %ymm13, %ymm2                          #202.3
        vmulpd    %ymm2, %ymm14, %ymm0                          #202.3
        call      __svml_cos4                                   #202.3
                                # LOE rsi r14 r15 ebx r12d r13d xmm12 xmm15 ymm0 ymm8 ymm9 ymm10 ymm11 ymm13 ymm14
..B1.97:                        # Preds ..B1.67
        vfnmadd213pd %ymm10, %ymm9, %ymm0                       #202.3
        vpaddd    %xmm15, %xmm12, %xmm12                        #202.3
        vmulpd    %ymm0, %ymm11, %ymm1                          #202.3
        vmulpd    %ymm8, %ymm1, %ymm2                           #202.3
        vmulpd    96(%rsp), %ymm2, %ymm3                        #202.3
        vmovupd   %ymm3, (%rsi,%r15,8)                          #202.3
        addq      $4, %r15                                      #202.3
        cmpq      $256, %r15                                    #202.3
        jb        ..B1.67       # Prob 82%                      #202.3
                                # LOE rsi r14 r15 ebx r12d r13d xmm12 xmm15 ymm8 ymm9 ymm10 ymm11 ymm13 ymm14
..B1.68:                        # Preds ..B1.97
        incl      %r12d                                         #202.3
        addl      $256, %r13d                                   #202.3
        cmpl      $256, %r12d                                   #202.3
        jb        ..B1.66       # Prob 91%                      #202.3
                                # LOE r14 ebx r12d r13d
..B1.69:                        # Preds ..B1.68
        movl      24(%rsp), %r12d                               #
        addl      $65536, %ebx                                  #202.3
        incl      %r12d                                         #202.3
        xorl      %r15d, %r15d                                  #
        cmpl      $256, %r12d                                   #202.3
        jb        ..B1.65       # Prob 99%                      #202.3
                                # LOE r14 ebx r12d r15d
..B1.70:                        # Preds ..B1.69
        vmovsd    (%rsp), %xmm0                                 #
        xorl      %eax, %eax                                    #204.14
        vxorpd    %ymm4, %ymm4, %ymm4                           #204.14
        movq      8(%rsp), %rbx                                 #
        movq      16(%rsp), %r15                                #
        vmovdqa   %ymm4, %ymm3                                  #204.14
        vmovdqa   %ymm4, %ymm2                                  #204.14
        vmovapd   %ymm4, %ymm1                                  #204.14
        .align    16,0x90
                                # LOE rax rbx r12 r13 r14 r15 xmm0 ymm1 ymm2 ymm3 ymm4
..B1.71:                        # Preds ..B1.71 ..B1.70
        vmovupd   (%rbx,%rax,8), %ymm5                          #204.14
        vmovupd   32(%rbx,%rax,8), %ymm7                        #204.14
        vmovupd   64(%rbx,%rax,8), %ymm9                        #204.14
        vmovupd   96(%rbx,%rax,8), %ymm11                       #204.14
        vsubpd    (%r14,%rax,8), %ymm5, %ymm6                   #204.14
        vsubpd    32(%r14,%rax,8), %ymm7, %ymm8                 #204.14
        vsubpd    64(%r14,%rax,8), %ymm9, %ymm10                #204.14
        vsubpd    96(%r14,%rax,8), %ymm11, %ymm12               #204.14
        vfmadd231pd %ymm6, %ymm6, %ymm4                         #204.14
        vfmadd231pd %ymm8, %ymm8, %ymm3                         #204.14
        vfmadd231pd %ymm10, %ymm10, %ymm2                       #204.14
        vfmadd231pd %ymm12, %ymm12, %ymm1                       #204.14
        addq      $16, %rax                                     #204.14
        cmpq      $16777216, %rax                               #204.14
        jb        ..B1.71       # Prob 81%                      #204.14
                                # LOE rax rbx r12 r13 r14 r15 xmm0 ymm1 ymm2 ymm3 ymm4
..B1.72:                        # Preds ..B1.71
        vaddpd    %ymm3, %ymm4, %ymm3                           #204.14
        movl      $.L_2__STRING.7, %esi                         #210.3
        vaddpd    %ymm1, %ymm2, %ymm1                           #204.14
        vsubsd    32(%rsp), %xmm0, %xmm0                        #205.36
        vaddpd    %ymm1, %ymm3, %ymm2                           #204.14
        vmovsd    %xmm0, 40(%rsp)                               #205.36
        movl      $1, %eax                                      #210.3
        vmovupd   %ymm2, (%rsp)                                 #204.14
        movq      stderr(%rip), %rdi                            #210.3
        vzeroupper                                              #210.3
#       fprintf(FILE *__restrict__, const char *__restrict__, ...)
        call      fprintf                                       #210.3
                                # LOE rbx r12 r13 r14 r15
..B1.73:                        # Preds ..B1.72
        vmovsd    .L_2il0floatpacket.16(%rip), %xmm0            #211.3
        movl      $.L_2__STRING.8, %esi                         #211.3
        vdivsd    40(%rsp), %xmm0, %xmm1                        #211.3
        movl      $1, %eax                                      #211.3
        vmulsd    .L_2il0floatpacket.15(%rip), %xmm1, %xmm0     #211.3
        movq      stderr(%rip), %rdi                            #211.3
#       fprintf(FILE *__restrict__, const char *__restrict__, ...)
        call      fprintf                                       #211.3
                                # LOE rbx r12 r13 r14 r15
..B1.74:                        # Preds ..B1.73
        vmovsd    .L_2il0floatpacket.17(%rip), %xmm0            #212.3
        movl      $.L_2__STRING.9, %esi                         #212.3
        vdivsd    40(%rsp), %xmm0, %xmm1                        #212.3
        movl      $1, %eax                                      #212.3
        vmulsd    .L_2il0floatpacket.15(%rip), %xmm1, %xmm0     #212.3
        movq      stderr(%rip), %rdi                            #212.3
#       fprintf(FILE *__restrict__, const char *__restrict__, ...)
        call      fprintf                                       #212.3
                                # LOE rbx r12 r13 r14 r15
..B1.75:                        # Preds ..B1.74
        vmovupd   (%rsp), %ymm0                                 #204.14
        movl      $.L_2__STRING.10, %esi                        #213.3
        movl      $1, %eax                                      #213.3
        movq      stderr(%rip), %rdi                            #213.3
        vextractf128 $1, %ymm0, %xmm1                           #204.14
        vaddpd    %xmm1, %xmm0, %xmm2                           #204.14
        vunpckhpd %xmm2, %xmm2, %xmm3                           #204.14
        vaddsd    %xmm3, %xmm2, %xmm4                           #204.14
        vmulsd    .L_2il0floatpacket.18(%rip), %xmm4, %xmm5     #213.3
        vsqrtsd   %xmm5, %xmm5, %xmm5                           #213.3
        vdivsd    .L_2il0floatpacket.19(%rip), %xmm5, %xmm0     #213.3
        vzeroupper                                              #213.3
#       fprintf(FILE *__restrict__, const char *__restrict__, ...)
        call      fprintf                                       #213.3
                                # LOE rbx r12 r13 r14 r15
..B1.76:                        # Preds ..B1.75
        movq      %r15, %rdi                                    #215.3
#       _mm_free(const void *)
        call      _mm_free                                      #215.3
                                # LOE rbx r12 r13 r14
..B1.77:                        # Preds ..B1.76
        movq      %rbx, %rdi                                    #216.3
#       _mm_free(const void *)
        call      _mm_free                                      #216.3
                                # LOE r12 r13 r14
..B1.78:                        # Preds ..B1.77
        movq      %r14, %rdi                                    #217.3
#       _mm_free(const void *)
        call      _mm_free                                      #217.3
                                # LOE r12 r13
..B1.79:                        # Preds ..B1.78
        movl      $.2.13_2_kmpc_loc_struct_pack.118, %edi       #218.10
        xorl      %eax, %eax                                    #218.10
..___tag_value_main.19:                                         #218.10
        call      __kmpc_end                                    #218.10
..___tag_value_main.20:                                         #
                                # LOE r12 r13
..B1.80:                        # Preds ..B1.79
        xorl      %eax, %eax                                    #218.10
        addq      $216, %rsp                                    #218.10
..___tag_value_main.21:                                         #218.10
        popq      %rbx                                          #218.10
..___tag_value_main.22:                                         #218.10
        popq      %r15                                          #218.10
..___tag_value_main.23:                                         #218.10
        popq      %r14                                          #218.10
..___tag_value_main.24:                                         #218.10
        popq      %r13                                          #218.10
..___tag_value_main.25:                                         #218.10
        popq      %r12                                          #218.10
        movq      %rbp, %rsp                                    #218.10
        popq      %rbp                                          #218.10
..___tag_value_main.26:                                         #
        ret                                                     #218.10
..___tag_value_main.28:                                         #
                                # LOE
..B1.81:                        # Preds ..B1.7                  # Infreq
        movl      $.L_2__STRING.5, %edi                         #158.3
        movl      $.L_2__STRING.2, %esi                         #158.3
        movl      $158, %edx                                    #158.3
        movl      $__$U1, %ecx                                  #158.3
#       __assert_fail(const char *, const char *, unsigned int, const char *)
        call      __assert_fail                                 #158.3
                                # LOE
..B1.82:                        # Preds ..B1.6                  # Infreq
        movl      $.L_2__STRING.4, %edi                         #157.3
        movl      $.L_2__STRING.2, %esi                         #157.3
        movl      $157, %edx                                    #157.3
        movl      $__$U1, %ecx                                  #157.3
#       __assert_fail(const char *, const char *, unsigned int, const char *)
        call      __assert_fail                                 #157.3
                                # LOE
..B1.83:                        # Preds ..B1.5                  # Infreq
        movl      $.L_2__STRING.3, %edi                         #156.3
        movl      $.L_2__STRING.2, %esi                         #156.3
        movl      $156, %edx                                    #156.3
        movl      $__$U1, %ecx                                  #156.3
#       __assert_fail(const char *, const char *, unsigned int, const char *)
        call      __assert_fail                                 #156.3
        .align    16,0x90
..___tag_value_main.35:                                         #
                                # LOE
# mark_end;
	.type	main,@function
	.size	main,.-main
	.data
	.align 4
	.align 4
.2.13_2_kmpc_loc_struct_pack.107:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.13_2__kmpc_loc_pack.106
	.align 4
.2.13_2__kmpc_loc_pack.106:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	49
	.byte	52
	.byte	50
	.byte	59
	.byte	49
	.byte	52
	.byte	50
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.13_2_kmpc_loc_struct_pack.118:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.13_2__kmpc_loc_pack.117
	.align 4
.2.13_2__kmpc_loc_pack.117:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	50
	.byte	49
	.byte	56
	.byte	59
	.byte	50
	.byte	49
	.byte	56
	.byte	59
	.byte	59
	.data
# -- End  main
	.text
# -- Begin  accuracy
	.text
# mark_begin;
       .align    16,0x90
	.globl accuracy
# --- accuracy(const double *, double *, const int, const int)
accuracy:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %edx
# parameter 4: %ecx
..B2.1:                         # Preds ..B2.0
..___tag_value_accuracy.36:                                     #88.73
..L37:
                                                         #88.73
        pushq     %rbx                                          #88.73
..___tag_value_accuracy.38:                                     #
        movq      %rsi, %r10                                    #88.73
        movq      %rdi, %r9                                     #88.73
        vxorpd    %xmm0, %xmm0, %xmm0                           #89.12
        testl     %edx, %edx                                    #91.19
        jle       ..B2.24       # Prob 50%                      #91.19
                                # LOE rbp r9 r10 r12 r13 r14 r15 edx ecx xmm0
..B2.2:                         # Preds ..B2.1
        cmpl      $16, %edx                                     #91.3
        jl        ..B2.26       # Prob 10%                      #91.3
                                # LOE rbp r9 r10 r12 r13 r14 r15 edx ecx xmm0
..B2.3:                         # Preds ..B2.2
        cmpl      $29, %edx                                     #91.3
        jl        ..B2.28       # Prob 10%                      #91.3
                                # LOE rbp r9 r10 r12 r13 r14 r15 edx ecx xmm0
..B2.4:                         # Preds ..B2.3
        movq      %r10, %rax                                    #91.3
        andq      $31, %rax                                     #91.3
        movl      %eax, %eax                                    #91.3
        testl     %eax, %eax                                    #91.3
        je        ..B2.7        # Prob 50%                      #91.3
                                # LOE rax rbp r9 r10 r12 r13 r14 r15 edx ecx xmm0
..B2.5:                         # Preds ..B2.4
        testb     $7, %al                                       #91.3
        jne       ..B2.26       # Prob 10%                      #91.3
                                # LOE rax rbp r9 r10 r12 r13 r14 r15 edx ecx xmm0
..B2.6:                         # Preds ..B2.5
        negl      %eax                                          #91.3
        addl      $32, %eax                                     #91.3
        shrl      $3, %eax                                      #91.3
                                # LOE rax rbp r9 r10 r12 r13 r14 r15 edx ecx xmm0
..B2.7:                         # Preds ..B2.6 ..B2.4
        lea       16(%rax), %ebx                                #91.3
        cmpl      %ebx, %edx                                    #91.3
        jl        ..B2.26       # Prob 10%                      #91.3
                                # LOE rax rbp r9 r10 r12 r13 r14 r15 edx ecx xmm0
..B2.8:                         # Preds ..B2.7
        movl      %edx, %r8d                                    #91.3
        xorl      %ebx, %ebx                                    #91.3
        subl      %eax, %r8d                                    #91.3
        andl      $15, %r8d                                     #91.3
        negl      %r8d                                          #91.3
        addl      %edx, %r8d                                    #91.3
        testq     %rax, %rax                                    #91.3
        jbe       ..B2.12       # Prob 9%                       #91.3
                                # LOE rax rbx rbp r9 r10 r12 r13 r14 r15 edx ecx r8d xmm0
..B2.10:                        # Preds ..B2.8 ..B2.10
        vmovsd    (%r9,%rbx,8), %xmm1                           #92.13
        vsubsd    (%r10,%rbx,8), %xmm1, %xmm2                   #92.39
        incq      %rbx                                          #91.3
        vmulsd    %xmm2, %xmm2, %xmm3                           #92.5
        vaddsd    %xmm0, %xmm3, %xmm0                           #92.5
        cmpq      %rax, %rbx                                    #91.3
        jb        ..B2.10       # Prob 82%                      #91.3
                                # LOE rax rbx rbp r9 r10 r12 r13 r14 r15 edx ecx r8d xmm0
..B2.12:                        # Preds ..B2.10 ..B2.8 ..B2.28
        movslq    %r8d, %rbx                                    #91.3
        vxorpd    %xmm1, %xmm1, %xmm1                           #89.12
        vxorps    %xmm2, %xmm2, %xmm2                           #89.12
        vmovsd    %xmm0, %xmm1, %xmm0                           #89.12
        vinsertf128 $1, %xmm2, %ymm0, %ymm3                     #89.12
        vxorpd    %ymm2, %ymm2, %ymm2                           #89.12
        vmovdqa   %ymm2, %ymm1                                  #89.12
        vmovdqa   %ymm2, %ymm0                                  #89.12
        .align    16,0x90
                                # LOE rax rbx rbp r9 r10 r12 r13 r14 r15 edx ecx r8d ymm0 ymm1 ymm2 ymm3
..B2.13:                        # Preds ..B2.13 ..B2.12
        vmovupd   (%r9,%rax,8), %ymm4                           #92.13
        vmovupd   32(%r9,%rax,8), %ymm6                         #92.13
        vmovupd   64(%r9,%rax,8), %ymm8                         #92.13
        vmovupd   96(%r9,%rax,8), %ymm10                        #92.13
        vsubpd    (%r10,%rax,8), %ymm4, %ymm5                   #92.21
        vsubpd    32(%r10,%rax,8), %ymm6, %ymm7                 #92.21
        vsubpd    64(%r10,%rax,8), %ymm8, %ymm9                 #92.21
        vsubpd    96(%r10,%rax,8), %ymm10, %ymm11               #92.21
        vfmadd231pd %ymm5, %ymm5, %ymm3                         #92.5
        vfmadd231pd %ymm7, %ymm7, %ymm2                         #92.5
        vfmadd231pd %ymm9, %ymm9, %ymm1                         #92.5
        vfmadd231pd %ymm11, %ymm11, %ymm0                       #92.5
        addq      $16, %rax                                     #91.3
        cmpq      %rbx, %rax                                    #91.3
        jb        ..B2.13       # Prob 82%                      #91.3
                                # LOE rax rbx rbp r9 r10 r12 r13 r14 r15 edx ecx r8d ymm0 ymm1 ymm2 ymm3
..B2.14:                        # Preds ..B2.13
        vaddpd    %ymm2, %ymm3, %ymm2                           #89.12
        vaddpd    %ymm0, %ymm1, %ymm0                           #89.12
        vaddpd    %ymm0, %ymm2, %ymm1                           #89.12
        vextractf128 $1, %ymm1, %xmm3                           #89.12
        vaddpd    %xmm3, %xmm1, %xmm4                           #89.12
        vunpckhpd %xmm4, %xmm4, %xmm5                           #89.12
        vaddsd    %xmm5, %xmm4, %xmm0                           #89.12
                                # LOE rbp r9 r10 r12 r13 r14 r15 edx ecx r8d xmm0
..B2.15:                        # Preds ..B2.14 ..B2.26
        lea       1(%r8), %eax                                  #91.3
        cmpl      %eax, %edx                                    #91.3
        jb        ..B2.24       # Prob 50%                      #91.3
                                # LOE rbp r9 r10 r12 r13 r14 r15 edx ecx r8d xmm0
..B2.16:                        # Preds ..B2.15
        movslq    %edx, %rsi                                    #91.3
        movslq    %r8d, %r8                                     #91.3
        subq      %r8, %rsi                                     #91.3
        cmpq      $4, %rsi                                      #91.3
        jl        ..B2.25       # Prob 10%                      #91.3
                                # LOE rbp rsi r9 r10 r12 r13 r14 r15 edx ecx r8d xmm0
..B2.17:                        # Preds ..B2.16
        movslq    %r8d, %r8                                     #92.13
        movl      %esi, %edi                                    #91.3
        vxorpd    %xmm1, %xmm1, %xmm1                           #89.12
        andl      $-4, %edi                                     #91.3
        vmovsd    %xmm0, %xmm1, %xmm0                           #89.12
        vxorps    %xmm2, %xmm2, %xmm2                           #89.12
        movslq    %edi, %rdi                                    #91.3
        xorl      %ebx, %ebx                                    #91.3
        lea       (%r10,%r8,8), %rax                            #92.21
        lea       (%r9,%r8,8), %r11                             #92.13
        vinsertf128 $1, %xmm2, %ymm0, %ymm0                     #89.12
                                # LOE rax rbx rbp rsi rdi r9 r10 r11 r12 r13 r14 r15 edx ecx r8d ymm0
..B2.18:                        # Preds ..B2.18 ..B2.17
        vmovupd   (%r11,%rbx,8), %ymm1                          #92.13
        vsubpd    (%rax,%rbx,8), %ymm1, %ymm2                   #92.21
        addq      $4, %rbx                                      #91.3
        vmulpd    %ymm2, %ymm2, %ymm3                           #92.5
        vaddpd    %ymm0, %ymm3, %ymm0                           #92.5
        cmpq      %rdi, %rbx                                    #91.3
        jb        ..B2.18       # Prob 82%                      #91.3
                                # LOE rax rbx rbp rsi rdi r9 r10 r11 r12 r13 r14 r15 edx ecx r8d ymm0
..B2.19:                        # Preds ..B2.18
        vextractf128 $1, %ymm0, %xmm1                           #89.12
        vaddpd    %xmm1, %xmm0, %xmm2                           #89.12
        vunpckhpd %xmm2, %xmm2, %xmm3                           #89.12
        vaddsd    %xmm3, %xmm2, %xmm0                           #89.12
                                # LOE rbp rsi rdi r9 r10 r12 r13 r14 r15 edx ecx r8d xmm0
..B2.20:                        # Preds ..B2.19 ..B2.25
        cmpq      %rsi, %rdi                                    #91.3
        jae       ..B2.24       # Prob 9%                       #91.3
                                # LOE rbp rsi rdi r9 r10 r12 r13 r14 r15 edx ecx r8d xmm0
..B2.21:                        # Preds ..B2.20
        movslq    %r8d, %r8                                     #92.13
        lea       (%r10,%r8,8), %rbx                            #92.21
        lea       (%r9,%r8,8), %rax                             #92.13
                                # LOE rax rbx rbp rsi rdi r12 r13 r14 r15 edx ecx xmm0
..B2.22:                        # Preds ..B2.22 ..B2.21
        vmovsd    (%rax,%rdi,8), %xmm1                          #92.31
        vsubsd    (%rbx,%rdi,8), %xmm1, %xmm2                   #92.21
        incq      %rdi                                          #91.3
        vmulsd    %xmm2, %xmm2, %xmm3                           #92.5
        vaddsd    %xmm0, %xmm3, %xmm0                           #92.5
        cmpq      %rsi, %rdi                                    #91.3
        jb        ..B2.22       # Prob 82%                      #91.3
                                # LOE rax rbx rbp rsi rdi r12 r13 r14 r15 edx ecx xmm0
..B2.24:                        # Preds ..B2.22 ..B2.20 ..B2.15 ..B2.1
        vxorpd    %xmm1, %xmm1, %xmm1                           #94.25
        vxorpd    %xmm2, %xmm2, %xmm2                           #94.32
        vcvtsi2sd %edx, %xmm1, %xmm1                            #94.25
        vcvtsi2sd %ecx, %xmm2, %xmm2                            #94.32
        vdivsd    %xmm1, %xmm0, %xmm0                           #94.25
        vsqrtsd   %xmm0, %xmm0, %xmm0                           #94.16
        vdivsd    %xmm2, %xmm0, %xmm0                           #94.32
        vzeroupper                                              #94.32
..___tag_value_accuracy.40:                                     #94.32
        popq      %rbx                                          #94.32
..___tag_value_accuracy.41:                                     #
        ret                                                     #94.32
..___tag_value_accuracy.42:                                     #
                                # LOE
..B2.25:                        # Preds ..B2.16                 # Infreq
        xorl      %edi, %edi                                    #91.3
        jmp       ..B2.20       # Prob 100%                     #91.3
                                # LOE rbp rsi rdi r9 r10 r12 r13 r14 r15 edx ecx r8d xmm0
..B2.26:                        # Preds ..B2.2 ..B2.5 ..B2.7    # Infreq
        xorl      %r8d, %r8d                                    #91.3
        jmp       ..B2.15       # Prob 100%                     #91.3
                                # LOE rbp r9 r10 r12 r13 r14 r15 edx ecx r8d xmm0
..B2.28:                        # Preds ..B2.3                  # Infreq
        movl      %edx, %r8d                                    #91.3
        xorl      %eax, %eax                                    #91.3
        andl      $-16, %r8d                                    #91.3
        jmp       ..B2.12       # Prob 100%                     #91.3
        .align    16,0x90
..___tag_value_accuracy.44:                                     #
                                # LOE rax rbp r9 r10 r12 r13 r14 r15 edx ecx r8d xmm0
# mark_end;
	.type	accuracy,@function
	.size	accuracy,.-accuracy
	.data
# -- End  accuracy
	.text
# -- Begin  diffusion_baseline
	.text
# mark_begin;
       .align    16,0x90
	.globl diffusion_baseline
# --- diffusion_baseline(double *, double *, int, int, int, double, double, double, double, double, double, double, double, int)
diffusion_baseline:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %edx
# parameter 4: %ecx
# parameter 5: %r8d
# parameter 6: %xmm0
# parameter 7: %xmm1
# parameter 8: %xmm2
# parameter 9: %xmm3
# parameter 10: %xmm4
# parameter 11: %xmm5
# parameter 12: %xmm6
# parameter 13: %xmm7
# parameter 14: %r9d
..B3.1:                         # Preds ..B3.0
..___tag_value_diffusion_baseline.45:                           #101.31
..L46:
                                                         #101.31
        pushq     %rbp                                          #101.31
..___tag_value_diffusion_baseline.47:                           #
        movq      %rsp, %rbp                                    #101.31
..___tag_value_diffusion_baseline.48:                           #
        andq      $-32, %rsp                                    #101.31
        pushq     %r12                                          #101.31
        pushq     %r13                                          #101.31
        pushq     %r14                                          #101.31
        pushq     %r15                                          #101.31
        pushq     %rbx                                          #101.31
        subq      $2872, %rsp                                   #101.31
        movq      %rdi, %r11                                    #101.31
        vmovapd   %xmm4, %xmm11                                 #101.31
        vmovapd   %xmm3, %xmm10                                 #101.31
        vmovapd   %xmm2, %xmm9                                  #101.31
        vmovapd   %xmm1, %xmm8                                  #101.31
        vmovapd   %xmm0, %xmm7                                  #101.31
        lea       8(%rsi), %r10                                 #101.31
        xorl      %edi, %edi                                    #103.3
        lea       8(%r11), %rax                                 #101.31
        testl     %r9d, %r9d                                    #103.19
        jle       ..B3.3        # Prob 9%                       #103.19
..___tag_value_diffusion_baseline.50:                           #
                                # LOE rax rbx rsi r10 r11 r12 r13 r14 r15 edx ecx edi r8d r9d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.2:                         # Preds ..B3.1
        testl     %r8d, %r8d                                    #104.25
        jg        ..B3.4        # Prob 50%                      #104.25
                                # LOE rax rbx rsi r10 r11 r12 r13 r14 r15 edx ecx edi r8d r9d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.3:                         # Preds ..B3.423 ..B3.357 ..B3.328 ..B3.321 ..B3.35
                                #       ..B3.318 ..B3.1 ..B3.2
        vzeroupper                                              #125.3
        addq      $2872, %rsp                                   #125.3
..___tag_value_diffusion_baseline.55:                           #125.3
        popq      %rbx                                          #125.3
..___tag_value_diffusion_baseline.56:                           #125.3
        popq      %r15                                          #125.3
..___tag_value_diffusion_baseline.57:                           #125.3
        popq      %r14                                          #125.3
..___tag_value_diffusion_baseline.58:                           #125.3
        popq      %r13                                          #125.3
..___tag_value_diffusion_baseline.59:                           #125.3
        popq      %r12                                          #125.3
        movq      %rbp, %rsp                                    #125.3
        popq      %rbp                                          #125.3
..___tag_value_diffusion_baseline.60:                           #
        ret                                                     #125.3
..___tag_value_diffusion_baseline.62:                           #
                                # LOE
..B3.4:                         # Preds ..B3.423 ..B3.2
        testl     %ecx, %ecx                                    #105.27
        jg        ..B3.9        # Prob 50%                      #105.27
                                # LOE rax rbx rsi r10 r11 r12 r13 r14 r15 edx ecx edi r8d r9d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.6:                         # Preds ..B3.4 ..B3.318
        xorl      %ebx, %ebx                                    #104.5
        cmpl      $2, %r8d                                      #104.5
        jge       ..B3.315      # Prob 90%                      #104.5
        jmp       ..B3.318      # Prob 100%                     #104.5
                                # LOE rax rsi r10 r11 edx ecx ebx edi r8d r9d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.9:                         # Preds ..B3.4 ..B3.357
        testl     %edx, %edx                                    #107.38
        jg        ..B3.12       # Prob 50%                      #107.38
                                # LOE rax rsi r10 r11 edx ecx edi r8d r9d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.10:                        # Preds ..B3.9
        cmpl      $2, %ecx                                      #105.7
        jge       ..B3.201      # Prob 90%                      #105.7
        jmp       ..B3.429      # Prob 100%                     #105.7
                                # LOE rax rsi r10 r11 edx ecx edi r8d r9d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.12:                        # Preds ..B3.329 ..B3.9
        movq      %rax, 1000(%rsp)                              #
        movl      %edi, 880(%rsp)                               #
        movq      %r10, 2144(%rsp)                              #
        movl      %ecx, 2160(%rsp)                              #
        movl      %r8d, 1080(%rsp)                              #
        movl      %r9d, 1008(%rsp)                              #
                                # LOE rsi rdi r10 r11 edx edi r10d dil r10b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.13:                        # Preds ..B3.12
        cmpl      $1, %edx                                      #111.25
        je        ..B3.15       # Prob 50%                      #111.25
                                # LOE rsi rdi r10 r11 edx edi r10d dil r10b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.14:                        # Preds ..B3.13
        movslq    2160(%rsp), %r9                               #117.61
        vaddsd    %xmm6, %xmm8, %xmm0                           #111.11
        movslq    %edx, %r12                                    #117.61
        vaddsd    %xmm9, %xmm0, %xmm1                           #117.61
        vaddsd    %xmm5, %xmm1, %xmm0                           #117.61
        vmovsd    %xmm0, 24(%rsp)                               #117.61
        movq      %r12, 2504(%rsp)                              #117.61
        movq      %r9, 1032(%rsp)                               #117.61
        jmp       ..B3.36       # Prob 100%                     #117.61
                                # LOE rsi r10 r11 edx edi xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.15:                        # Preds ..B3.13
        movslq    2160(%rsp), %r9                               #117.61
        xorl      %eax, %eax                                    #111.11
        movslq    %edx, %r12                                    #117.61
        vaddsd    %xmm6, %xmm8, %xmm0                           #111.11
        vaddsd    %xmm9, %xmm0, %xmm1                           #117.61
        vaddsd    %xmm5, %xmm1, %xmm0                           #117.61
        vmovsd    %xmm0, 24(%rsp)                               #117.61
        movq      %r12, 2504(%rsp)                              #117.61
        movq      %r9, 1032(%rsp)                               #117.61
                                # LOE rax rsi r10 r11 edx edi xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.16:                        # Preds ..B3.15 ..B3.36
        movq      2504(%rsp), %rbx                              #115.43
        movq      %rbx, %r8                                     #115.43
        imulq     1032(%rsp), %r8                               #115.43
        xorl      %ecx, %ecx                                    #116.11
        cmpl      $1, 1080(%rsp)                                #116.11
        vmovsd    24(%rsp), %xmm0                               #116.11
        cmove     %rcx, %r8                                     #116.11
        cmpl      $1, 2160(%rsp)                                #116.11
        cmovne    %rbx, %rcx                                    #116.11
        vmulsd    (%r11,%rcx,8), %xmm10, %xmm1                  #117.22
        vfmadd231sd (%r11,%rax,8), %xmm7, %xmm1                 #116.11
        vfmadd231sd (%r11,%r8,8), %xmm11, %xmm1                 #116.11
        vfmadd231sd (%r11), %xmm0, %xmm1                        #116.11
        vmovsd    %xmm1, (%rsi)                                 #116.11
        cmpl      $2, %edx                                      #107.9
        jl        ..B3.105      # Prob 50%                      #107.9
                                # LOE rbx rsi r10 r11 edx ebx edi bl bh xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.17:                        # Preds ..B3.16
        cmpl      $1, 2160(%rsp)                                #113.24
        lea       -1(%rdx), %ecx                                #107.9
        jne       ..B3.61       # Prob 50%                      #113.24
                                # LOE rbx rsi r10 r11 edx ecx ebx edi bl bh xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.18:                        # Preds ..B3.17
        cmpl      $1, 1080(%rsp)                                #115.24
        jne       ..B3.37       # Prob 50%                      #115.24
                                # LOE rbx rsi r10 r11 edx ecx ebx edi bl bh xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.19:                        # Preds ..B3.18
        cmpl      $8, %ecx                                      #107.9
        jl        ..B3.323      # Prob 10%                      #107.9
                                # LOE rsi r10 r11 edx ecx edi xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.20:                        # Preds ..B3.19
        cmpl      $15, %ecx                                     #107.9
        jl        ..B3.325      # Prob 10%                      #107.9
                                # LOE rsi r10 r11 edx ecx edi xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.21:                        # Preds ..B3.20
        movq      %r10, %rbx                                    #107.9
        andq      $31, %rbx                                     #107.9
        testl     %ebx, %ebx                                    #107.9
        je        ..B3.24       # Prob 50%                      #107.9
                                # LOE rsi r10 r11 edx ecx ebx edi xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.22:                        # Preds ..B3.21
        testb     $7, %bl                                       #107.9
        jne       ..B3.323      # Prob 10%                      #107.9
                                # LOE rsi r10 r11 edx ecx ebx edi xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.23:                        # Preds ..B3.22
        negl      %ebx                                          #107.9
        addl      $32, %ebx                                     #107.9
        shrl      $3, %ebx                                      #107.9
                                # LOE rsi r10 r11 edx ecx ebx edi xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.24:                        # Preds ..B3.23 ..B3.21
        lea       8(%rbx), %eax                                 #107.9
        cmpl      %eax, %ecx                                    #107.9
        jl        ..B3.323      # Prob 10%                      #107.9
                                # LOE rsi r10 r11 edx ecx ebx edi xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.25:                        # Preds ..B3.24
        movl      %ecx, %r9d                                    #107.9
        xorl      %r13d, %r13d                                  #107.9
        subl      %ebx, %r9d                                    #107.9
        movl      $1, %r8d                                      #107.9
        andl      $7, %r9d                                      #107.9
        negl      %r9d                                          #107.9
        addl      %ecx, %r9d                                    #107.9
        testl     %ebx, %ebx                                    #107.9
        jbe       ..B3.29       # Prob 10%                      #107.9
                                # LOE rsi r8 r10 r11 edx ecx ebx edi r9d r13d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.26:                        # Preds ..B3.25
        vaddsd    %xmm10, %xmm9, %xmm0                          #117.61
        vaddsd    %xmm0, %xmm5, %xmm1                           #117.61
        vaddsd    %xmm1, %xmm11, %xmm0                          #117.61
        lea       -2(%rdx), %eax                                #111.25
        .align    16,0x90
                                # LOE rsi r8 r10 r11 eax edx ecx ebx edi r9d r13d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.27:                        # Preds ..B3.27 ..B3.26
        vmulsd    (%r11,%r8,8), %xmm0, %xmm2                    #116.11
        lea       1(%r13), %r12d                                #107.9
        movslq    %r13d, %r13                                   #116.37
        incq      %r8                                           #107.9
        cmpl      %eax, %r13d                                   #116.11
        lea       2(%r13), %r14d                                #111.38
        cmove     %r12d, %r14d                                  #116.11
        movslq    %r14d, %r14                                   #116.50
        vfmadd231sd (%r11,%r13,8), %xmm8, %xmm2                 #116.11
        vmulsd    (%r11,%r14,8), %xmm7, %xmm1                   #116.11
        vfmadd231sd 8(%r11,%r13,8), %xmm6, %xmm1                #116.11
        vaddsd    %xmm2, %xmm1, %xmm3                           #116.11
        vmovsd    %xmm3, 8(%rsi,%r13,8)                         #116.11
        movl      %r12d, %r13d                                  #107.9
        cmpl      %ebx, %r12d                                   #107.9
        jb        ..B3.27       # Prob 82%                      #107.9
                                # LOE rsi r8 r10 r11 eax edx ecx ebx edi r9d r13d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.29:                        # Preds ..B3.27 ..B3.25 ..B3.325
        vbroadcastsd %xmm9, %ymm3                               #98.1
        lea       1(%rbx), %r8d                                 #116.11
        vbroadcastsd %xmm10, %ymm1                              #98.1
        vmovd     %ecx, %xmm4                                   #111.25
        vbroadcastsd %xmm5, %ymm2                               #98.1
        vbroadcastsd %xmm11, %ymm0                              #98.1
        vmovsd    %xmm10, 960(%rsp)                             #107.9
        vaddpd    %ymm1, %ymm3, %ymm15                          #117.61
        vmovd     %r8d, %xmm1                                   #116.11
        vmovsd    %xmm9, 952(%rsp)                              #107.9
        vmovsd    %xmm11, 968(%rsp)                             #107.9
        vaddpd    %ymm0, %ymm2, %ymm2                           #117.61
        lea       2(%rbx), %r12d                                #111.38
        vmovsd    %xmm5, 976(%rsp)                              #107.9
        vmovsd    %xmm6, 984(%rsp)                              #107.9
        movl      $8, %eax                                      #116.11
        movl      %ebx, %ebx                                    #107.9
        vaddpd    %ymm2, %ymm15, %ymm2                          #117.61
        vmovd     %r12d, %xmm15                                 #111.38
        vbroadcastsd %xmm6, %ymm13                              #98.1
        vmovd     %eax, %xmm3                                   #116.11
        vbroadcastsd %xmm8, %ymm12                              #98.1
        vbroadcastsd %xmm7, %ymm14                              #98.1
        vpbroadcastd %xmm1, %ymm0                               #116.11
        lea       (%rsi,%rbx,8), %r12                           #111.11
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm0, %ymm1     #116.11
        lea       (%r11,%rbx,8), %r8                            #111.11
        vpbroadcastd %xmm15, %ymm0                              #111.38
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm0, %ymm0     #111.38
        vpbroadcastd %xmm4, %ymm4                               #111.25
        vpbroadcastd %xmm3, %ymm3                               #116.11
        movslq    %r9d, %rax                                    #107.9
        vpcmpeqd  %ymm10, %ymm10, %ymm10                        #107.9
                                # LOE rax rbx rsi r8 r10 r11 r12 edx ecx edi r9d xmm7 xmm8 ymm0 ymm1 ymm2 ymm3 ymm4 ymm10 ymm12 ymm13 ymm14
..B3.30:                        # Preds ..B3.30 ..B3.29
        vpcmpeqd  %ymm4, %ymm1, %ymm11                          #111.25
        vpblendvb %ymm11, %ymm1, %ymm0, %ymm15                  #111.38
        vpaddd    %ymm3, %ymm0, %ymm0                           #111.38
        vxorpd    %ymm5, %ymm5, %ymm5                           #116.50
        vmovdqa   %ymm10, %ymm6                                 #116.50
        vmovdqa   %ymm10, %ymm11                                #116.50
        movslq    %ebx, %r13                                    #110.11
        addq      $8, %rbx                                      #107.9
        vgatherdpd %ymm6, (%r11,%xmm15,8), %ymm5                #116.50
        vextracti128 $1, %ymm15, %xmm9                          #116.50
        vmulpd    %ymm5, %ymm14, %ymm6                          #117.61
        vxorpd    %ymm5, %ymm5, %ymm5                           #116.50
        vgatherdpd %ymm11, (%r11,%xmm9,8), %ymm5                #116.50
        vfmadd231pd (%r11,%r13,8), %ymm12, %ymm6                #117.61
        vmulpd    %ymm5, %ymm14, %ymm5                          #117.61
        vfmadd231pd 8(%r8), %ymm13, %ymm6                       #117.61
        vfmadd231pd 32(%r11,%r13,8), %ymm12, %ymm5              #117.61
        vxorpd    %ymm11, %ymm11, %ymm11                        #117.35
        vmovdqa   %ymm10, %ymm9                                 #117.35
        vmovdqa   %ymm10, %ymm15                                #117.35
        vfmadd231pd 40(%r8), %ymm13, %ymm5                      #117.61
        addq      $64, %r8                                      #107.9
        vgatherdpd %ymm9, (%r11,%xmm1,8), %ymm11                #117.35
        vextracti128 $1, %ymm1, %xmm9                           #117.35
        vpaddd    %ymm3, %ymm1, %ymm1                           #116.11
        vfmadd231pd %ymm2, %ymm11, %ymm6                        #117.61
        vxorpd    %ymm11, %ymm11, %ymm11                        #117.35
        vgatherdpd %ymm15, (%r11,%xmm9,8), %ymm11               #117.35
        vmovupd   %ymm6, 8(%r12)                                #116.11
        vfmadd231pd %ymm2, %ymm11, %ymm5                        #117.61
        vmovupd   %ymm5, 40(%r12)                               #116.11
        addq      $64, %r12                                     #107.9
        cmpq      %rax, %rbx                                    #107.9
        jb        ..B3.30       # Prob 82%                      #107.9
                                # LOE rax rbx rsi r8 r10 r11 r12 edx ecx edi r9d xmm7 xmm8 ymm0 ymm1 ymm2 ymm3 ymm4 ymm10 ymm12 ymm13 ymm14
..B3.31:                        # Preds ..B3.30
        vmovsd    952(%rsp), %xmm9                              #
        vmovsd    960(%rsp), %xmm10                             #
        vmovsd    968(%rsp), %xmm11                             #
        vmovsd    976(%rsp), %xmm5                              #
        vmovsd    984(%rsp), %xmm6                              #
                                # LOE rsi r10 r11 edx ecx edi r9d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.32:                        # Preds ..B3.31 ..B3.323
        movslq    %r9d, %rbx                                    #107.9
        lea       1(%r9), %r12d                                 #107.9
        xorl      %r8d, %r8d                                    #107.9
        xorl      %eax, %eax                                    #107.9
        cmpl      %r12d, %ecx                                   #107.9
        jb        ..B3.321      # Prob 10%                      #107.9
                                # LOE rax rbx rsi r10 r11 edx ecx edi r8d r9d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.33:                        # Preds ..B3.32
        subl      %r9d, %ecx                                    #107.9
        lea       -2(%rdx), %r15d                               #111.25
        movslq    %r9d, %r9                                     #112.11
        vaddsd    %xmm10, %xmm9, %xmm0                          #117.61
        movq      %rsi, 2152(%rsp)                              #116.11
        lea       1(%r9), %r12                                  #112.11
        movl      %edx, 2480(%rsp)                              #116.11
        lea       (%r11,%r9,8), %r13                            #116.24
        vaddsd    %xmm0, %xmm5, %xmm1                           #117.61
        vaddsd    %xmm1, %xmm11, %xmm0                          #117.61
        lea       (%rsi,%r9,8), %r14                            #116.11
        .align    16,0x90
                                # LOE rax rbx r10 r11 r12 r13 r14 ecx edi r8d r9d r15d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.34:                        # Preds ..B3.34 ..B3.33
        cmpl      %r15d, %r9d                                   #116.11
        lea       1(%r9), %edx                                  #107.9
        vmulsd    (%r11,%r12,8), %xmm0, %xmm2                   #116.11
        lea       2(%r9), %esi                                  #111.38
        cmove     %edx, %esi                                    #116.11
        incl      %r8d                                          #107.9
        movslq    %esi, %rsi                                    #116.50
        incq      %r12                                          #107.9
        vfmadd231sd (%r11,%rbx,8), %xmm8, %xmm2                 #116.11
        incq      %rbx                                          #107.9
        vmulsd    (%r11,%rsi,8), %xmm7, %xmm1                   #116.11
        vfmadd231sd 8(%r13,%rax,8), %xmm6, %xmm1                #116.11
        movl      %edx, %r9d                                    #107.9
        vaddsd    %xmm2, %xmm1, %xmm3                           #116.11
        vmovsd    %xmm3, 8(%r14,%rax,8)                         #116.11
        incq      %rax                                          #107.9
        cmpl      %ecx, %r8d                                    #107.9
        jb        ..B3.34       # Prob 82%                      #107.9
                                # LOE rax rbx r10 r11 r12 r13 r14 ecx edi r8d r9d r15d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.35:                        # Preds ..B3.34
        incl      %edi                                          #103.3
        movq      %r11, %rcx                                    #121.15
        movq      2152(%rsp), %rsi                              #
        movq      %rsi, %r11                                    #122.5
        movq      1000(%rsp), %rax                              #121.15
        movq      %rcx, %rsi                                    #123.5
        movl      2480(%rsp), %edx                              #
        movq      %r10, 1000(%rsp)                              #122.5
        movq      %rax, %r10                                    #123.5
        cmpl      1008(%rsp), %edi                              #103.3
        jae       ..B3.3        # Prob 18%                      #103.3
                                # LOE rsi r10 r11 edx edi xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.36:                        # Preds ..B3.35 ..B3.321 ..B3.14
        movl      $1, %eax                                      #111.11
        jmp       ..B3.16       # Prob 100%                     #111.11
                                # LOE rax rsi r10 r11 edx edi xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.37:                        # Preds ..B3.18
        movl      %edi, 880(%rsp)                               #
        movq      %r10, 2144(%rsp)                              #
        movq      %rbx, %r12                                    #
        movq      1032(%rsp), %r9                               #
        cmpl      $8, %ecx                                      #107.9
        jl        ..B3.335      # Prob 10%                      #107.9
                                # LOE rsi r9 r10 r11 r12 edx ecx r9d r10d r12d r9b r10b r12b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.38:                        # Preds ..B3.37
        cmpl      $15, %ecx                                     #107.9
        jl        ..B3.337      # Prob 10%                      #107.9
                                # LOE rsi r9 r10 r11 r12 edx ecx r9d r10d r12d r9b r10b r12b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.39:                        # Preds ..B3.38
        movq      %r10, %r13                                    #107.9
        andq      $31, %r13                                     #107.9
        testl     %r13d, %r13d                                  #107.9
        je        ..B3.42       # Prob 50%                      #107.9
                                # LOE rsi r9 r11 r12 edx ecx r9d r12d r13d r9b r12b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.40:                        # Preds ..B3.39
        testl     $7, %r13d                                     #107.9
        jne       ..B3.335      # Prob 10%                      #107.9
                                # LOE rsi r9 r11 r12 edx ecx r9d r12d r13d r9b r12b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.41:                        # Preds ..B3.40
        negl      %r13d                                         #107.9
        addl      $32, %r13d                                    #107.9
        shrl      $3, %r13d                                     #107.9
                                # LOE rsi r9 r11 r12 edx ecx r9d r12d r13d r9b r12b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.42:                        # Preds ..B3.41 ..B3.39
        lea       8(%r13), %eax                                 #107.9
        cmpl      %eax, %ecx                                    #107.9
        jl        ..B3.335      # Prob 10%                      #107.9
                                # LOE rsi r9 r11 r12 edx ecx r9d r12d r13d r9b r12b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.43:                        # Preds ..B3.42
        movl      %ecx, %eax                                    #107.9
        xorl      %ebx, %ebx                                    #107.9
        subl      %r13d, %eax                                   #107.9
        andl      $7, %eax                                      #107.9
        negl      %eax                                          #107.9
        addl      %ecx, %eax                                    #107.9
        testl     %r13d, %r13d                                  #107.9
        jbe       ..B3.47       # Prob 10%                      #107.9
                                # LOE rsi r9 r11 r12 eax edx ecx ebx r9d r12d r13d r9b r12b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.44:                        # Preds ..B3.43
        movq      %r12, %r10                                    #115.43
        lea       -2(%rdx), %r15d                               #111.25
        imulq     %r9, %r10                                     #115.43
        vaddsd    %xmm10, %xmm9, %xmm0                          #117.61
        vaddsd    %xmm0, %xmm5, %xmm0                           #117.61
        .align    16,0x90
                                # LOE rsi r9 r10 r11 r12 eax edx ecx ebx r13d r15d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.45:                        # Preds ..B3.45 ..B3.44
        lea       1(%rbx), %edi                                 #107.9
        movslq    %ebx, %rbx                                    #112.11
        cmpl      %r15d, %ebx                                   #116.11
        lea       2(%rbx), %r14d                                #111.38
        cmove     %edi, %r14d                                   #116.11
        vmulsd    8(%r11,%rbx,8), %xmm6, %xmm1                  #116.24
        lea       (%r10,%rbx), %r8                              #115.43
        vfmadd231sd (%r11,%rbx,8), %xmm8, %xmm1                 #116.11
        movslq    %r14d, %r14                                   #116.50
        vfmadd231sd (%r11,%r14,8), %xmm7, %xmm1                 #116.11
        vfmadd231sd 8(%r11,%r8,8), %xmm11, %xmm1                #116.11
        vfmadd231sd 8(%r11,%rbx,8), %xmm0, %xmm1                #116.11
        vmovsd    %xmm1, 8(%rsi,%rbx,8)                         #116.11
        movl      %edi, %ebx                                    #107.9
        cmpl      %r13d, %edi                                   #107.9
        jb        ..B3.45       # Prob 82%                      #107.9
                                # LOE rsi r9 r10 r11 r12 eax edx ecx ebx r13d r15d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.47:                        # Preds ..B3.45 ..B3.43 ..B3.337
        vbroadcastsd %xmm6, %ymm2                               #98.1
        movl      $8, %ebx                                      #116.11
        vbroadcastsd %xmm10, %ymm0                              #98.1
        vmovd     %ecx, %xmm3                                   #111.25
        vbroadcastsd %xmm5, %ymm15                              #98.1
        vmovsd    %xmm5, 976(%rsp)                              #107.9
        vmovd     %ebx, %xmm14                                  #116.11
        vmovsd    %xmm7, 936(%rsp)                              #107.9
        lea       1(%r13), %edi                                 #116.11
        vmovsd    %xmm8, 944(%rsp)                              #107.9
        vmovsd    %xmm9, 952(%rsp)                              #107.9
        vaddpd    %ymm15, %ymm0, %ymm0                          #117.61
        vmovd     %edi, %xmm12                                  #116.11
        vmovsd    %xmm10, 960(%rsp)                             #107.9
        vpbroadcastd %xmm14, %ymm15                             #116.11
        lea       2(%r13), %r8d                                 #111.38
        movl      %r13d, %r13d                                  #107.9
        vpbroadcastd %xmm12, %ymm14                             #116.11
        movl      2160(%rsp), %edi                              #115.43
        vmovd     %r8d, %xmm12                                  #111.38
        vpbroadcastd %xmm12, %ymm12                             #111.38
        lea       (%rsi,%r13,8), %r10                           #111.11
        vmovdqa   %ymm2, %ymm5                                  #107.9
        lea       (%r11,%r13,8), %rbx                           #111.11
        vmovsd    %xmm11, 968(%rsp)                             #107.9
        vmovsd    %xmm6, 984(%rsp)                              #107.9
        imull     %edx, %edi                                    #115.43
        vbroadcastsd %xmm8, %ymm2                               #98.1
        vbroadcastsd %xmm7, %ymm1                               #98.1
        vbroadcastsd %xmm9, %ymm13                              #98.1
        vbroadcastsd %xmm11, %ymm4                              #98.1
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm14, %ymm14   #116.11
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm12, %ymm12   #111.38
        vpbroadcastd %xmm3, %ymm3                               #111.25
        movslq    %eax, %r8                                     #107.9
                                # LOE rbx rsi r8 r9 r10 r11 r12 r13 eax edx ecx edi ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm12 ymm13 ymm14 ymm15
..B3.48:                        # Preds ..B3.48 ..B3.47
        vpcmpeqd  %ymm3, %ymm14, %ymm9                          #111.25
        movl      %r13d, %r14d                                  #110.11
        vpblendvb %ymm9, %ymm14, %ymm12, %ymm7                  #111.38
        addl      %edi, %r14d                                   #115.43
        vpaddd    %ymm15, %ymm12, %ymm12                        #111.38
        vpcmpeqd  %ymm6, %ymm6, %ymm6                           #116.50
        vxorpd    %ymm9, %ymm9, %ymm9                           #116.50
        vmovdqa   %ymm6, %ymm8                                  #116.50
        vmovdqa   %ymm6, %ymm11                                 #116.50
        movslq    %r14d, %r14                                   #115.11
        movslq    %r13d, %r15                                   #110.11
        addq      $8, %r13                                      #107.9
        vgatherdpd %ymm8, (%r11,%xmm7,8), %ymm9                 #116.50
        vextracti128 $1, %ymm7, %xmm10                          #116.50
        vmulpd    %ymm9, %ymm1, %ymm7                           #117.61
        vxorpd    %ymm9, %ymm9, %ymm9                           #116.50
        vgatherdpd %ymm11, (%r11,%xmm10,8), %ymm9               #116.50
        vfmadd231pd (%r11,%r15,8), %ymm2, %ymm7                 #117.61
        vmulpd    %ymm9, %ymm1, %ymm10                          #117.61
        vfmadd231pd 8(%rbx), %ymm5, %ymm7                       #117.61
        vfmadd231pd 32(%r11,%r15,8), %ymm2, %ymm10              #117.61
        vxorpd    %ymm11, %ymm11, %ymm11                        #117.35
        vmovdqa   %ymm6, %ymm8                                  #117.35
        vxorpd    %ymm9, %ymm9, %ymm9                           #117.35
        vfmadd231pd 40(%rbx), %ymm5, %ymm10                     #117.61
        addq      $64, %rbx                                     #107.9
        vgatherdpd %ymm8, (%r11,%xmm14,8), %ymm11               #117.35
        vextracti128 $1, %ymm14, %xmm8                          #117.35
        vpaddd    %ymm15, %ymm14, %ymm14                        #116.11
        vgatherdpd %ymm6, (%r11,%xmm8,8), %ymm9                 #117.35
        vmulpd    8(%r11,%r14,8), %ymm4, %ymm8                  #117.61
        vfmadd231pd %ymm13, %ymm11, %ymm8                       #117.61
        vfmadd231pd %ymm0, %ymm11, %ymm8                        #117.61
        vaddpd    %ymm7, %ymm8, %ymm6                           #117.61
        vmulpd    40(%r11,%r14,8), %ymm4, %ymm7                 #117.61
        vmovupd   %ymm6, 8(%r10)                                #116.11
        vfmadd231pd %ymm13, %ymm9, %ymm7                        #117.61
        vfmadd231pd %ymm0, %ymm9, %ymm7                         #117.61
        vaddpd    %ymm10, %ymm7, %ymm9                          #117.61
        vmovupd   %ymm9, 40(%r10)                               #116.11
        addq      $64, %r10                                     #107.9
        cmpq      %r8, %r13                                     #107.9
        jb        ..B3.48       # Prob 82%                      #107.9
                                # LOE rbx rsi r8 r9 r10 r11 r12 r13 eax edx ecx edi ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm12 ymm13 ymm14 ymm15
..B3.49:                        # Preds ..B3.48
        vmovsd    936(%rsp), %xmm7                              #
        vmovsd    944(%rsp), %xmm8                              #
        vmovsd    952(%rsp), %xmm9                              #
        vmovsd    960(%rsp), %xmm10                             #
        vmovsd    968(%rsp), %xmm11                             #
        vmovsd    976(%rsp), %xmm5                              #
        vmovsd    984(%rsp), %xmm6                              #
                                # LOE rsi r9 r11 r12 eax edx ecx xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.50:                        # Preds ..B3.49 ..B3.335
        lea       1(%rax), %ebx                                 #107.9
        cmpl      %ebx, %ecx                                    #107.9
        jb        ..B3.59       # Prob 50%                      #107.9
                                # LOE rsi r9 r11 r12 eax edx ecx ebx xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.51:                        # Preds ..B3.50
        movl      %ecx, %r10d                                   #107.9
        subl      %eax, %r10d                                   #107.9
        cmpl      $2, %r10d                                     #107.9
        jl        ..B3.334      # Prob 10%                      #107.9
                                # LOE rsi r9 r11 r12 eax edx ecx ebx r10d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.52:                        # Preds ..B3.51
        movq      %r12, %r14                                    #115.43
        vmovd     %ebx, %xmm0                                   #116.11
        imulq     %r9, %r14                                     #115.43
        vmovddup  %xmm10, %xmm12                                #98.1
        movl      $2, %ebx                                      #116.11
        vmovddup  %xmm5, %xmm15                                 #98.1
        lea       2(%rax), %r13d                                #116.11
        vaddpd    %xmm15, %xmm12, %xmm12                        #117.61
        vmovd     %ebx, %xmm15                                  #116.11
        lea       3(%rax), %edi                                 #111.38
        vmovupd   %xmm12, 736(%rsp)                             #117.61
        vpxor     %xmm1, %xmm1, %xmm1                           #116.11
        vmovddup  %xmm11, %xmm12                                #98.1
        vmovd     %ecx, %xmm4                                   #111.25
        movslq    %eax, %rax                                    #115.11
        movl      %r10d, %ecx                                   #107.9
        vmovupd   %xmm12, 704(%rsp)                             #98.1
        andl      $-2, %ecx                                     #107.9
        vpbroadcastd %xmm15, %xmm12                             #116.11
        vmovd     %r13d, %xmm15                                 #116.11
        vpunpckldq %xmm15, %xmm0, %xmm0                         #116.11
        xorl      %r8d, %r8d                                    #107.9
        vpunpcklqdq %xmm1, %xmm0, %xmm0                         #116.11
        lea       1(%r14,%rax), %rbx                            #115.11
        vmovdqu   %xmm0, 816(%rsp)                              #116.11
        vmovd     %edi, %xmm0                                   #111.38
        vpunpckldq %xmm0, %xmm15, %xmm15                        #111.38
        lea       (%rsi,%rax,8), %r13                           #116.11
        vmovsd    %xmm10, 960(%rsp)                             #116.24
        lea       (%r11,%rax,8), %rdi                           #116.24
        vmovsd    %xmm6, 984(%rsp)                              #116.24
        vpbroadcastd %xmm4, %xmm4                               #111.25
        vmovddup  %xmm6, %xmm3                                  #98.1
        vmovddup  %xmm8, %xmm2                                  #98.1
        vmovddup  %xmm7, %xmm14                                 #98.1
        vmovddup  %xmm9, %xmm13                                 #98.1
        movslq    %ecx, %rcx                                    #107.9
        vpunpcklqdq %xmm1, %xmm15, %xmm0                        #111.38
        shlq      $3, %rbx                                      #117.61
        vmovdqu   816(%rsp), %xmm1                              #116.24
        vmovupd   736(%rsp), %xmm6                              #116.24
        vmovupd   704(%rsp), %xmm10                             #116.24
        vmovsd    %xmm11, 968(%rsp)                             #116.24
        vmovsd    %xmm5, 976(%rsp)                              #116.24
        movl      %edx, 2480(%rsp)                              #116.24
                                # LOE rcx rbx rsi rdi r8 r9 r11 r12 r13 eax r10d xmm0 xmm1 xmm2 xmm3 xmm4 xmm6 xmm7 xmm8 xmm9 xmm10 xmm12 xmm13 xmm14
..B3.53:                        # Preds ..B3.53 ..B3.52
        vpcmpeqd  %xmm4, %xmm1, %xmm11                          #111.25
        movl      %r8d, %edx                                    #116.37
        vpblendvb %xmm11, %xmm1, %xmm0, %xmm15                  #111.38
        addl      %eax, %edx                                    #116.37
        vpaddd    %xmm12, %xmm0, %xmm0                          #111.38
        vmovd     %xmm15, %r15                                  #116.50
        movslq    %r15d, %r14                                   #116.50
        sarq      $32, %r15                                     #116.50
        movslq    %edx, %rdx                                    #116.37
        vmovq     (%r11,%r14,8), %xmm5                          #116.50
        vmovhpd   (%r11,%r15,8), %xmm5, %xmm11                  #116.50
        vmulpd    %xmm11, %xmm14, %xmm5                         #117.61
        vfmadd231pd (%r11,%rdx,8), %xmm2, %xmm5                 #117.61
        vmovd     %xmm1, %rdx                                   #117.35
        vpaddd    %xmm12, %xmm1, %xmm1                          #116.11
        vfmadd231pd 8(%rdi,%r8,8), %xmm3, %xmm5                 #117.61
        movslq    %edx, %r14                                    #117.35
        sarq      $32, %rdx                                     #117.35
        vmovq     (%r11,%r14,8), %xmm15                         #117.35
        vmovhpd   (%r11,%rdx,8), %xmm15, %xmm11                 #117.35
        vmulpd    (%rbx,%r11), %xmm10, %xmm15                   #117.61
        vfmadd231pd %xmm13, %xmm11, %xmm15                      #117.61
        addq      $16, %rbx                                     #107.9
        vfmadd231pd %xmm6, %xmm11, %xmm15                       #117.61
        vaddpd    %xmm5, %xmm15, %xmm5                          #117.61
        vmovupd   %xmm5, 8(%r13,%r8,8)                          #116.11
        addq      $2, %r8                                       #107.9
        cmpq      %rcx, %r8                                     #107.9
        jb        ..B3.53       # Prob 82%                      #107.9
                                # LOE rcx rbx rsi rdi r8 r9 r11 r12 r13 eax r10d xmm0 xmm1 xmm2 xmm3 xmm4 xmm6 xmm7 xmm8 xmm9 xmm10 xmm12 xmm13 xmm14
..B3.54:                        # Preds ..B3.53
        vmovsd    960(%rsp), %xmm10                             #
        vmovsd    968(%rsp), %xmm11                             #
        vmovsd    976(%rsp), %xmm5                              #
        vmovsd    984(%rsp), %xmm6                              #
        movl      2480(%rsp), %edx                              #
                                # LOE rcx rsi r9 r11 r12 eax edx r10d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.55:                        # Preds ..B3.54 ..B3.334
        movl      %ecx, %ebx                                    #107.9
        lea       (%rax,%rbx), %edi                             #107.9
        movslq    %edi, %r8                                     #107.9
        cmpl      %r10d, %ebx                                   #107.9
        jae       ..B3.59       # Prob 10%                      #107.9
                                # LOE rcx rsi r8 r9 r11 r12 eax edx ebx edi r10d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.56:                        # Preds ..B3.55
        imulq     %r9, %r12                                     #115.43
        vaddsd    %xmm10, %xmm9, %xmm0                          #117.61
        movslq    %eax, %rax                                    #112.11
        lea       -2(%rdx), %r9d                                #111.25
        addq      %rax, %r12                                    #115.43
        vaddsd    %xmm0, %xmm5, %xmm0                           #117.61
        movl      %edx, 2480(%rsp)                              #116.24
        lea       1(%rcx,%r12), %r14                            #115.11
        lea       1(%rcx,%rax), %r15                            #112.11
        lea       (%rsi,%rax,8), %r12                           #116.11
        lea       (%r11,%rax,8), %r13                           #116.24
        .align    16,0x90
                                # LOE rcx rsi r8 r11 r12 r13 r14 r15 ebx edi r9d r10d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.57:                        # Preds ..B3.57 ..B3.56
        vmulsd    8(%r13,%rcx,8), %xmm6, %xmm1                  #116.24
        cmpl      %r9d, %edi                                    #116.11
        vfmadd231sd (%r11,%r8,8), %xmm8, %xmm1                  #116.11
        lea       1(%rdi), %eax                                 #107.9
        lea       2(%rdi), %edx                                 #111.38
        movl      %eax, %edi                                    #107.9
        cmove     %eax, %edx                                    #116.11
        incl      %ebx                                          #107.9
        movslq    %edx, %rdx                                    #116.50
        incq      %r8                                           #107.9
        vfmadd231sd (%r11,%rdx,8), %xmm7, %xmm1                 #116.11
        vfmadd231sd (%r11,%r14,8), %xmm11, %xmm1                #116.11
        incq      %r14                                          #107.9
        vfmadd231sd (%r11,%r15,8), %xmm0, %xmm1                 #116.11
        incq      %r15                                          #107.9
        vmovsd    %xmm1, 8(%r12,%rcx,8)                         #116.11
        incq      %rcx                                          #107.9
        cmpl      %r10d, %ebx                                   #107.9
        jb        ..B3.57       # Prob 82%                      #107.9
                                # LOE rcx rsi r8 r11 r12 r13 r14 r15 ebx edi r9d r10d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.58:                        # Preds ..B3.57
        movl      2480(%rsp), %edx                              #
                                # LOE rsi r11 edx xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.59:                        # Preds ..B3.58 ..B3.55 ..B3.50 ..B3.101 ..B3.349
                                #       ..B3.103 ..B3.105 ..B3.429
        cmpl      $2, 1080(%rsp)                                #104.5
        jl        ..B3.327      # Prob 10%                      #104.5
                                # LOE rsi r11 edx xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.60:                        # Preds ..B3.59
        movq      1000(%rsp), %rax                              #
        movl      880(%rsp), %edi                               #
        movq      2144(%rsp), %r10                              #
        movl      2160(%rsp), %ecx                              #
        movl      1080(%rsp), %r8d                              #
        movl      1008(%rsp), %r9d                              #
        jmp       ..B3.202      # Prob 100%                     #
                                # LOE rax rsi r10 r11 edx ecx edi r8d r9d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.61:                        # Preds ..B3.17
        cmpl      $1, 1080(%rsp)                                #115.24
        jne       ..B3.80       # Prob 50%                      #115.24
                                # LOE rbx rsi r10 r11 edx ecx ebx edi bl bh xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.62:                        # Preds ..B3.61
        cmpl      $8, %ecx                                      #107.9
        jl        ..B3.345      # Prob 10%                      #107.9
                                # LOE rbx rsi r10 r11 edx ecx ebx edi bl bh xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.63:                        # Preds ..B3.62
        cmpl      $15, %ecx                                     #107.9
        jl        ..B3.347      # Prob 10%                      #107.9
                                # LOE rbx rsi r10 r11 edx ecx ebx edi bl bh xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.64:                        # Preds ..B3.63
        movq      %r10, %r14                                    #107.9
        andq      $31, %r14                                     #107.9
        testl     %r14d, %r14d                                  #107.9
        je        ..B3.67       # Prob 50%                      #107.9
                                # LOE rbx rsi r10 r11 edx ecx ebx edi r14d bl bh xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.65:                        # Preds ..B3.64
        testl     $7, %r14d                                     #107.9
        jne       ..B3.345      # Prob 10%                      #107.9
                                # LOE rbx rsi r10 r11 edx ecx ebx edi r14d bl bh xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.66:                        # Preds ..B3.65
        negl      %r14d                                         #107.9
        addl      $32, %r14d                                    #107.9
        shrl      $3, %r14d                                     #107.9
                                # LOE rbx rsi r10 r11 edx ecx ebx edi r14d bl bh xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.67:                        # Preds ..B3.66 ..B3.64
        lea       8(%r14), %eax                                 #107.9
        cmpl      %eax, %ecx                                    #107.9
        jl        ..B3.345      # Prob 10%                      #107.9
                                # LOE rbx rsi r10 r11 edx ecx ebx edi r14d bl bh xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.68:                        # Preds ..B3.67
        movl      %ecx, %r12d                                   #107.9
        xorl      %eax, %eax                                    #107.9
        subl      %r14d, %r12d                                  #107.9
        andl      $7, %r12d                                     #107.9
        negl      %r12d                                         #107.9
        addl      %ecx, %r12d                                   #107.9
        testl     %r14d, %r14d                                  #107.9
        jbe       ..B3.72       # Prob 10%                      #107.9
                                # LOE rbx rsi r10 r11 eax edx ecx ebx edi r12d r14d bl bh xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.69:                        # Preds ..B3.68
        movq      %rbx, %r15                                    #111.25
        lea       -2(%rdx), %r13d                               #111.25
        vaddsd    %xmm5, %xmm9, %xmm0                           #117.61
        vaddsd    %xmm0, %xmm11, %xmm0                          #117.61
        .align    16,0x90
                                # LOE rsi r10 r11 r15 eax edx ecx edi r12d r13d r14d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.70:                        # Preds ..B3.70 ..B3.69
        lea       1(%rax), %r9d                                 #107.9
        movslq    %eax, %rax                                    #112.11
        cmpl      %r13d, %eax                                   #116.11
        lea       2(%rax), %ebx                                 #111.38
        cmove     %r9d, %ebx                                    #116.11
        vmulsd    8(%r11,%rax,8), %xmm6, %xmm1                  #116.24
        lea       (%r15,%rax), %r8                              #113.37
        vfmadd231sd (%r11,%rax,8), %xmm8, %xmm1                 #116.11
        movslq    %ebx, %rbx                                    #116.50
        vfmadd231sd (%r11,%rbx,8), %xmm7, %xmm1                 #116.11
        vfmadd231sd 8(%r11,%r8,8), %xmm10, %xmm1                #116.11
        vfmadd231sd 8(%r11,%rax,8), %xmm0, %xmm1                #116.11
        vmovsd    %xmm1, 8(%rsi,%rax,8)                         #116.11
        movl      %r9d, %eax                                    #107.9
        cmpl      %r14d, %r9d                                   #107.9
        jb        ..B3.70       # Prob 82%                      #107.9
                                # LOE rsi r10 r11 r15 eax edx ecx edi r12d r13d r14d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.72:                        # Preds ..B3.70 ..B3.68 ..B3.347
        vbroadcastsd %xmm5, %ymm15                              #98.1
        lea       1(%r14), %ebx                                 #116.11
        vbroadcastsd %xmm11, %ymm14                             #98.1
        vmovd     %ecx, %xmm4                                   #111.25
        vmovsd    %xmm5, 976(%rsp)                              #107.9
        vmovsd    %xmm7, 936(%rsp)                              #107.9
        vmovsd    %xmm8, 944(%rsp)                              #107.9
        vaddpd    %ymm14, %ymm15, %ymm12                        #117.61
        lea       2(%r14), %r8d                                 #111.38
        vmovd     %ebx, %xmm14                                  #116.11
        vmovsd    %xmm9, 952(%rsp)                              #107.9
        movl      $8, %eax                                      #116.11
        vmovupd   %ymm12, 480(%rsp)                             #117.61
        vmovsd    %xmm10, 960(%rsp)                             #107.9
        vmovsd    %xmm11, 968(%rsp)                             #107.9
        vmovd     %eax, %xmm15                                  #116.11
        vmovsd    %xmm6, 984(%rsp)                              #107.9
        movl      %r14d, %r14d                                  #107.9
        vpbroadcastd %xmm14, %ymm12                             #116.11
        vpbroadcastd %xmm4, %ymm4                               #111.25
        vpbroadcastd %xmm15, %ymm15                             #116.11
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm12, %ymm14   #116.11
        vmovd     %r8d, %xmm12                                  #111.38
        vbroadcastsd %xmm6, %ymm3                               #98.1
        vbroadcastsd %xmm8, %ymm2                               #98.1
        vbroadcastsd %xmm7, %ymm1                               #98.1
        vbroadcastsd %xmm9, %ymm13                              #98.1
        vbroadcastsd %xmm10, %ymm0                              #98.1
        vmovupd   480(%rsp), %ymm5                              #107.9
        vpbroadcastd %xmm12, %ymm12                             #111.38
        lea       (%rsi,%r14,8), %r8                            #111.11
        movq      2504(%rsp), %r13                              #107.9
        lea       (%r11,%r14,8), %rbx                           #111.11
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm12, %ymm12   #111.38
        movslq    %r12d, %rax                                   #107.9
                                # LOE rax rbx rsi r8 r10 r11 r13 r14 edx ecx edi r12d ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm12 ymm13 ymm14 ymm15
..B3.73:                        # Preds ..B3.73 ..B3.72
        vpcmpeqd  %ymm4, %ymm14, %ymm9                          #111.25
        vpblendvb %ymm9, %ymm14, %ymm12, %ymm7                  #111.38
        vpaddd    %ymm15, %ymm12, %ymm12                        #111.38
        vpcmpeqd  %ymm6, %ymm6, %ymm6                           #116.50
        vxorpd    %ymm9, %ymm9, %ymm9                           #116.50
        vmovdqa   %ymm6, %ymm8                                  #116.50
        vmovdqa   %ymm6, %ymm11                                 #116.50
        movslq    %r14d, %r9                                    #110.11
        addq      $8, %r14                                      #107.9
        vgatherdpd %ymm8, (%r11,%xmm7,8), %ymm9                 #116.50
        vextracti128 $1, %ymm7, %xmm10                          #116.50
        vmulpd    %ymm9, %ymm1, %ymm7                           #117.61
        vxorpd    %ymm9, %ymm9, %ymm9                           #116.50
        vgatherdpd %ymm11, (%r11,%xmm10,8), %ymm9               #116.50
        vfmadd231pd (%r11,%r9,8), %ymm2, %ymm7                  #117.61
        vmulpd    %ymm9, %ymm1, %ymm10                          #117.61
        vfmadd231pd 8(%rbx), %ymm3, %ymm7                       #117.61
        vfmadd231pd 32(%r11,%r9,8), %ymm2, %ymm10               #117.61
        vxorpd    %ymm11, %ymm11, %ymm11                        #117.35
        addq      %r13, %r9                                     #113.37
        vmovdqa   %ymm6, %ymm8                                  #117.35
        vxorpd    %ymm9, %ymm9, %ymm9                           #117.35
        vfmadd231pd 40(%rbx), %ymm3, %ymm10                     #117.61
        addq      $64, %rbx                                     #107.9
        vgatherdpd %ymm8, (%r11,%xmm14,8), %ymm11               #117.35
        vextracti128 $1, %ymm14, %xmm8                          #117.35
        vpaddd    %ymm15, %ymm14, %ymm14                        #116.11
        vgatherdpd %ymm6, (%r11,%xmm8,8), %ymm9                 #117.35
        vmulpd    8(%r11,%r9,8), %ymm0, %ymm8                   #117.61
        vfmadd231pd %ymm13, %ymm11, %ymm8                       #117.61
        vfmadd231pd %ymm5, %ymm11, %ymm8                        #117.61
        vaddpd    %ymm7, %ymm8, %ymm6                           #117.61
        vmulpd    40(%r11,%r9,8), %ymm0, %ymm7                  #117.61
        vmovupd   %ymm6, 8(%r8)                                 #116.11
        vfmadd231pd %ymm13, %ymm9, %ymm7                        #117.61
        vfmadd231pd %ymm5, %ymm9, %ymm7                         #117.61
        vaddpd    %ymm10, %ymm7, %ymm9                          #117.61
        vmovupd   %ymm9, 40(%r8)                                #116.11
        addq      $64, %r8                                      #107.9
        cmpq      %rax, %r14                                    #107.9
        jb        ..B3.73       # Prob 82%                      #107.9
                                # LOE rax rbx rsi r8 r10 r11 r13 r14 edx ecx edi r12d ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm12 ymm13 ymm14 ymm15
..B3.74:                        # Preds ..B3.73
        vmovsd    936(%rsp), %xmm7                              #
        vmovsd    944(%rsp), %xmm8                              #
        vmovsd    952(%rsp), %xmm9                              #
        vmovsd    960(%rsp), %xmm10                             #
        vmovsd    968(%rsp), %xmm11                             #
        vmovsd    976(%rsp), %xmm5                              #
        vmovsd    984(%rsp), %xmm6                              #
                                # LOE rsi r10 r11 edx ecx edi r12d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.75:                        # Preds ..B3.74 ..B3.345
        movslq    %r12d, %r12                                   #107.9
        xorl      %r15d, %r15d                                  #107.9
        movq      %r12, 2336(%rsp)                              #107.9
        lea       1(%r12), %ebx                                 #107.9
        xorl      %eax, %eax                                    #107.9
        cmpl      %ebx, %ecx                                    #107.9
        jb        ..B3.341      # Prob 10%                      #107.9
                                # LOE rax rsi r10 r11 r12 edx ecx edi r12d r15d r12b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.76:                        # Preds ..B3.75
        subl      %r12d, %ecx                                   #107.9
        lea       -2(%rdx), %r13d                               #111.25
        movslq    %r12d, %r12                                   #112.11
        vaddsd    %xmm5, %xmm9, %xmm0                           #117.61
        movq      2504(%rsp), %rbx                              #113.11
        lea       1(%r12), %r14                                 #112.11
        movl      %edx, 2480(%rsp)                              #116.11
        lea       (%r11,%r12,8), %r8                            #116.24
        movq      %r10, 2144(%rsp)                              #116.11
        lea       (%rsi,%r12,8), %r9                            #116.11
        movq      %rsi, 2152(%rsp)                              #116.11
        lea       1(%rbx,%r12), %rbx                            #113.11
        movq      2336(%rsp), %rdx                              #116.11
        vaddsd    %xmm0, %xmm11, %xmm0                          #117.61
        .align    16,0x90
                                # LOE rax rdx rbx r8 r9 r11 r14 ecx edi r12d r13d r15d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.77:                        # Preds ..B3.77 ..B3.76
        vmulsd    8(%r8,%rax,8), %xmm6, %xmm1                   #116.24
        cmpl      %r13d, %r12d                                  #116.11
        vfmadd231sd (%r11,%rdx,8), %xmm8, %xmm1                 #116.11
        lea       1(%r12), %esi                                 #107.9
        lea       2(%r12), %r10d                                #111.38
        movl      %esi, %r12d                                   #107.9
        cmove     %esi, %r10d                                   #116.11
        incl      %r15d                                         #107.9
        movslq    %r10d, %r10                                   #116.50
        incq      %rdx                                          #107.9
        vfmadd231sd (%r11,%r10,8), %xmm7, %xmm1                 #116.11
        vfmadd231sd (%r11,%rbx,8), %xmm10, %xmm1                #116.11
        incq      %rbx                                          #107.9
        vfmadd231sd (%r11,%r14,8), %xmm0, %xmm1                 #116.11
        incq      %r14                                          #107.9
        vmovsd    %xmm1, 8(%r9,%rax,8)                          #116.11
        incq      %rax                                          #107.9
        cmpl      %ecx, %r15d                                   #107.9
        jb        ..B3.77       # Prob 82%                      #107.9
                                # LOE rax rdx rbx r8 r9 r11 r14 ecx edi r12d r13d r15d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.78:                        # Preds ..B3.77
        movq      2144(%rsp), %r10                              #
        movq      2152(%rsp), %rsi                              #
        movl      2480(%rsp), %edx                              #
        cmpl      $2, 2160(%rsp)                                #105.7
        jl        ..B3.321      # Prob 10%                      #105.7
                                # LOE rdx rsi r10 r11 edx esi edi r10d dl dh sil r10b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.79:                        # Preds ..B3.341 ..B3.78
        movq      2504(%rsp), %r12                              #
        movq      1000(%rsp), %rax                              #
        movl      2160(%rsp), %ecx                              #
        movl      1080(%rsp), %r8d                              #
        movl      1008(%rsp), %r9d                              #
        jmp       ..B3.107      # Prob 100%                     #
                                # LOE rax rcx rsi r8 r9 r10 r11 r12 eax edx ecx edi r8d r9d al cl ah ch r8b r9b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.80:                        # Preds ..B3.61
        movl      %edi, 880(%rsp)                               #
        movq      %r10, 2144(%rsp)                              #
        movq      %rbx, %r12                                    #
        movq      1032(%rsp), %r9                               #
        cmpl      $8, %ecx                                      #107.9
        jl        ..B3.352      # Prob 10%                      #107.9
                                # LOE rsi r9 r10 r11 r12 edx ecx r9d r10d r12d r9b r10b r12b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.81:                        # Preds ..B3.80
        cmpl      $15, %ecx                                     #107.9
        jl        ..B3.354      # Prob 10%                      #107.9
                                # LOE rsi r9 r10 r11 r12 edx ecx r9d r10d r12d r9b r10b r12b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.82:                        # Preds ..B3.81
        andq      $31, %r10                                     #107.9
        testl     %r10d, %r10d                                  #107.9
        je        ..B3.85       # Prob 50%                      #107.9
                                # LOE rsi r9 r11 r12 edx ecx r9d r10d r12d r9b r12b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.83:                        # Preds ..B3.82
        testl     $7, %r10d                                     #107.9
        jne       ..B3.352      # Prob 10%                      #107.9
                                # LOE rsi r9 r11 r12 edx ecx r9d r10d r12d r9b r12b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.84:                        # Preds ..B3.83
        negl      %r10d                                         #107.9
        addl      $32, %r10d                                    #107.9
        shrl      $3, %r10d                                     #107.9
                                # LOE rsi r9 r11 r12 edx ecx r9d r10d r12d r9b r12b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.85:                        # Preds ..B3.84 ..B3.82
        lea       8(%r10), %eax                                 #107.9
        cmpl      %eax, %ecx                                    #107.9
        jl        ..B3.352      # Prob 10%                      #107.9
                                # LOE rsi r9 r11 r12 edx ecx r9d r10d r12d r9b r12b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.86:                        # Preds ..B3.85
        movl      %ecx, %eax                                    #107.9
        xorl      %ebx, %ebx                                    #107.9
        subl      %r10d, %eax                                   #107.9
        andl      $7, %eax                                      #107.9
        negl      %eax                                          #107.9
        addl      %ecx, %eax                                    #107.9
        testl     %r10d, %r10d                                  #107.9
        jbe       ..B3.90       # Prob 10%                      #107.9
                                # LOE rsi r9 r11 r12 eax edx ecx ebx r9d r10d r12d r9b r12b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.87:                        # Preds ..B3.86
        movq      %r12, %r8                                     #115.43
        lea       -2(%rdx), %edi                                #111.25
        imulq     %r9, %r8                                      #115.43
        vaddsd    %xmm5, %xmm9, %xmm0                           #117.61
        .align    16,0x90
                                # LOE rsi r8 r9 r11 r12 eax edx ecx ebx edi r10d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.88:                        # Preds ..B3.88 ..B3.87
        lea       1(%rbx), %r13d                                #107.9
        movslq    %ebx, %rbx                                    #112.11
        cmpl      %edi, %ebx                                    #116.11
        lea       2(%rbx), %r14d                                #111.38
        cmove     %r13d, %r14d                                  #116.11
        vmulsd    8(%r11,%rbx,8), %xmm0, %xmm2                  #116.11
        lea       (%r8,%rbx), %r15                              #115.43
        vmulsd    8(%r11,%r15,8), %xmm11, %xmm1                 #116.11
        movslq    %r14d, %r14                                   #116.50
        lea       (%r12,%rbx), %r15                             #113.37
        vfmadd231sd 8(%r11,%r15,8), %xmm10, %xmm2               #116.11
        vfmadd231sd (%r11,%r14,8), %xmm7, %xmm1                 #116.11
        vfmadd231sd (%r11,%rbx,8), %xmm8, %xmm2                 #116.11
        vfmadd231sd 8(%r11,%rbx,8), %xmm6, %xmm1                #116.11
        vaddsd    %xmm2, %xmm1, %xmm3                           #116.11
        vmovsd    %xmm3, 8(%rsi,%rbx,8)                         #116.11
        movl      %r13d, %ebx                                   #107.9
        cmpl      %r10d, %r13d                                  #107.9
        jb        ..B3.88       # Prob 82%                      #107.9
                                # LOE rsi r8 r9 r11 r12 eax edx ecx ebx edi r10d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.90:                        # Preds ..B3.88 ..B3.86 ..B3.354
        vbroadcastsd %xmm9, %ymm15                              #98.1
        lea       1(%r10), %edi                                 #116.11
        vbroadcastsd %xmm5, %ymm14                              #98.1
        vmovd     %ecx, %xmm4                                   #111.25
        vmovsd    %xmm5, 976(%rsp)                              #107.9
        vmovsd    %xmm7, 936(%rsp)                              #107.9
        vmovsd    %xmm8, 944(%rsp)                              #107.9
        vaddpd    %ymm14, %ymm15, %ymm12                        #117.61
        lea       2(%r10), %r8d                                 #111.38
        vmovd     %edi, %xmm14                                  #116.11
        vmovsd    %xmm9, 952(%rsp)                              #107.9
        movl      $8, %ebx                                      #116.11
        vmovupd   %ymm12, 512(%rsp)                             #117.61
        vmovsd    %xmm10, 960(%rsp)                             #107.9
        vmovsd    %xmm11, 968(%rsp)                             #107.9
        vmovd     %ebx, %xmm15                                  #116.11
        vmovsd    %xmm6, 984(%rsp)                              #107.9
        movl      %r10d, %r10d                                  #107.9
        vpbroadcastd %xmm14, %ymm12                             #116.11
        vpbroadcastd %xmm4, %ymm4                               #111.25
        vpbroadcastd %xmm15, %ymm15                             #116.11
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm12, %ymm14   #116.11
        vmovd     %r8d, %xmm12                                  #111.38
        vbroadcastsd %xmm6, %ymm3                               #98.1
        vbroadcastsd %xmm8, %ymm2                               #98.1
        vbroadcastsd %xmm7, %ymm1                               #98.1
        vbroadcastsd %xmm10, %ymm13                             #98.1
        vbroadcastsd %xmm11, %ymm0                              #98.1
        vmovupd   512(%rsp), %ymm5                              #107.9
        vpbroadcastd %xmm12, %ymm12                             #111.38
        lea       (%rsi,%r10,8), %r13                           #111.11
        movl      2160(%rsp), %r8d                              #115.43
        lea       (%r11,%r10,8), %rdi                           #111.11
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm12, %ymm12   #111.38
        imull     %edx, %r8d                                    #115.43
        movslq    %eax, %rbx                                    #107.9
                                # LOE rbx rsi rdi r9 r10 r11 r12 r13 eax edx ecx r8d ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm12 ymm13 ymm14 ymm15
..B3.91:                        # Preds ..B3.91 ..B3.90
        vpcmpeqd  %ymm4, %ymm14, %ymm9                          #111.25
        movl      %r10d, %r14d                                  #110.11
        vpblendvb %ymm9, %ymm14, %ymm12, %ymm7                  #111.38
        addl      %r8d, %r14d                                   #115.43
        vpaddd    %ymm15, %ymm12, %ymm12                        #111.38
        vpcmpeqd  %ymm6, %ymm6, %ymm6                           #116.50
        vxorpd    %ymm9, %ymm9, %ymm9                           #116.50
        vmovdqa   %ymm6, %ymm8                                  #116.50
        vmovdqa   %ymm6, %ymm11                                 #116.50
        movslq    %r14d, %r14                                   #115.11
        movslq    %r10d, %r15                                   #110.11
        addq      $8, %r10                                      #107.9
        vgatherdpd %ymm8, (%r11,%xmm7,8), %ymm9                 #116.50
        vextracti128 $1, %ymm7, %xmm10                          #116.50
        vmulpd    %ymm9, %ymm1, %ymm7                           #117.61
        vxorpd    %ymm9, %ymm9, %ymm9                           #116.50
        vgatherdpd %ymm11, (%r11,%xmm10,8), %ymm9               #116.50
        vfmadd231pd (%r11,%r15,8), %ymm2, %ymm7                 #117.61
        vmulpd    %ymm9, %ymm1, %ymm10                          #117.61
        vfmadd231pd 8(%rdi), %ymm3, %ymm7                       #117.61
        vfmadd231pd 32(%r11,%r15,8), %ymm2, %ymm10              #117.61
        vxorpd    %ymm11, %ymm11, %ymm11                        #117.35
        addq      %r12, %r15                                    #113.37
        vmovdqa   %ymm6, %ymm8                                  #117.35
        vxorpd    %ymm9, %ymm9, %ymm9                           #117.35
        vfmadd231pd 40(%rdi), %ymm3, %ymm10                     #117.61
        addq      $64, %rdi                                     #107.9
        vgatherdpd %ymm8, (%r11,%xmm14,8), %ymm11               #117.35
        vextracti128 $1, %ymm14, %xmm8                          #117.35
        vpaddd    %ymm15, %ymm14, %ymm14                        #116.11
        vgatherdpd %ymm6, (%r11,%xmm8,8), %ymm9                 #117.35
        vmulpd    8(%r11,%r14,8), %ymm0, %ymm8                  #117.61
        vfmadd231pd 8(%r11,%r15,8), %ymm13, %ymm8               #117.61
        vfmadd231pd %ymm5, %ymm11, %ymm8                        #117.61
        vaddpd    %ymm7, %ymm8, %ymm6                           #117.61
        vmulpd    40(%r11,%r14,8), %ymm0, %ymm7                 #117.61
        vfmadd231pd 40(%r11,%r15,8), %ymm13, %ymm7              #117.61
        vmovupd   %ymm6, 8(%r13)                                #116.11
        vfmadd231pd %ymm5, %ymm9, %ymm7                         #117.61
        vaddpd    %ymm10, %ymm7, %ymm9                          #117.61
        vmovupd   %ymm9, 40(%r13)                               #116.11
        addq      $64, %r13                                     #107.9
        cmpq      %rbx, %r10                                    #107.9
        jb        ..B3.91       # Prob 82%                      #107.9
                                # LOE rbx rsi rdi r9 r10 r11 r12 r13 eax edx ecx r8d ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm12 ymm13 ymm14 ymm15
..B3.92:                        # Preds ..B3.91
        vmovsd    936(%rsp), %xmm7                              #
        vmovsd    944(%rsp), %xmm8                              #
        vmovsd    952(%rsp), %xmm9                              #
        vmovsd    960(%rsp), %xmm10                             #
        vmovsd    968(%rsp), %xmm11                             #
        vmovsd    976(%rsp), %xmm5                              #
        vmovsd    984(%rsp), %xmm6                              #
                                # LOE rsi r9 r11 r12 eax edx ecx xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.93:                        # Preds ..B3.92 ..B3.352
        lea       1(%rax), %ebx                                 #107.9
        cmpl      %ebx, %ecx                                    #107.9
        jb        ..B3.103      # Prob 50%                      #107.9
                                # LOE rsi r9 r11 r12 eax edx ecx ebx xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.94:                        # Preds ..B3.93
        movl      %ecx, %edi                                    #107.9
        subl      %eax, %edi                                    #107.9
        cmpl      $2, %edi                                      #107.9
        jl        ..B3.351      # Prob 10%                      #107.9
                                # LOE rsi r9 r11 r12 eax edx ecx ebx edi xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.95:                        # Preds ..B3.94
        movq      %r12, %r13                                    #115.43
        vmovd     %ebx, %xmm1                                   #116.11
        imulq     %r9, %r13                                     #115.43
        movl      $2, %ebx                                      #116.11
        lea       2(%rax), %r14d                                #116.11
        vmovddup  %xmm10, %xmm12                                #98.1
        lea       3(%rax), %r10d                                #111.38
        vmovddup  %xmm9, %xmm13                                 #98.1
        vpxor     %xmm0, %xmm0, %xmm0                           #116.11
        vmovupd   %xmm12, 720(%rsp)                             #98.1
        vmovd     %ecx, %xmm4                                   #111.25
        vmovddup  %xmm5, %xmm12                                 #98.1
        vmovd     %ebx, %xmm15                                  #116.11
        vaddpd    %xmm12, %xmm13, %xmm13                        #117.61
        movslq    %eax, %rax                                    #113.11
        movl      %edi, %ecx                                    #107.9
        vpbroadcastd %xmm15, %xmm12                             #116.11
        vmovd     %r14d, %xmm15                                 #116.11
        vpunpckldq %xmm15, %xmm1, %xmm1                         #116.11
        andl      $-2, %ecx                                     #107.9
        vpunpcklqdq %xmm0, %xmm1, %xmm1                         #116.11
        xorl      %r14d, %r14d                                  #107.9
        vmovdqu   %xmm1, 832(%rsp)                              #116.11
        vmovd     %r10d, %xmm1                                  #111.38
        vmovupd   %xmm13, 752(%rsp)                             #117.61
        lea       1(%r12,%rax), %rbx                            #113.11
        vpunpckldq %xmm1, %xmm15, %xmm15                        #111.38
        lea       1(%r13,%rax), %r10                            #115.11
        vmovsd    %xmm10, 960(%rsp)                             #116.24
        lea       (%rsi,%rax,8), %r13                           #116.11
        vmovsd    %xmm6, 984(%rsp)                              #116.24
        lea       (%r11,%rax,8), %r8                            #116.24
        vpbroadcastd %xmm4, %xmm4                               #111.25
        vmovddup  %xmm6, %xmm3                                  #98.1
        vmovddup  %xmm8, %xmm2                                  #98.1
        vmovddup  %xmm7, %xmm14                                 #98.1
        vmovddup  %xmm11, %xmm13                                #98.1
        movslq    %ecx, %rcx                                    #107.9
        vpunpcklqdq %xmm0, %xmm15, %xmm0                        #111.38
        shlq      $3, %rbx                                      #117.22
        shlq      $3, %r10                                      #117.61
        vmovdqu   832(%rsp), %xmm1                              #116.24
        vmovupd   752(%rsp), %xmm6                              #116.24
        vmovupd   720(%rsp), %xmm10                             #116.24
        vmovsd    %xmm11, 968(%rsp)                             #116.24
        vmovsd    %xmm5, 976(%rsp)                              #116.24
        movq      %r9, 1032(%rsp)                               #116.24
        movl      %edx, 2480(%rsp)                              #116.24
                                # LOE rcx rbx rsi r8 r10 r11 r12 r13 r14 eax edi xmm0 xmm1 xmm2 xmm3 xmm4 xmm6 xmm7 xmm8 xmm9 xmm10 xmm12 xmm13 xmm14
..B3.96:                        # Preds ..B3.96 ..B3.95
        vpcmpeqd  %xmm4, %xmm1, %xmm11                          #111.25
        movl      %r14d, %edx                                   #116.37
        vpblendvb %xmm11, %xmm1, %xmm0, %xmm15                  #111.38
        addl      %eax, %edx                                    #116.37
        vpaddd    %xmm12, %xmm0, %xmm0                          #111.38
        vmovd     %xmm15, %r15                                  #116.50
        movslq    %r15d, %r9                                    #116.50
        sarq      $32, %r15                                     #116.50
        movslq    %edx, %rdx                                    #116.37
        vmovq     (%r11,%r9,8), %xmm5                           #116.50
        vmovhpd   (%r11,%r15,8), %xmm5, %xmm11                  #116.50
        vmulpd    %xmm11, %xmm14, %xmm5                         #117.61
        vfmadd231pd (%r11,%rdx,8), %xmm2, %xmm5                 #117.61
        vmovd     %xmm1, %rdx                                   #117.35
        vpaddd    %xmm12, %xmm1, %xmm1                          #116.11
        vfmadd231pd 8(%r8,%r14,8), %xmm3, %xmm5                 #117.61
        movslq    %edx, %r9                                     #117.35
        sarq      $32, %rdx                                     #117.35
        vmovq     (%r11,%r9,8), %xmm15                          #117.35
        vmovhpd   (%r11,%rdx,8), %xmm15, %xmm11                 #117.35
        vmulpd    (%r10,%r11), %xmm13, %xmm15                   #117.61
        vfmadd231pd (%rbx,%r11), %xmm10, %xmm15                 #117.61
        addq      $16, %rbx                                     #107.9
        vfmadd231pd %xmm6, %xmm11, %xmm15                       #117.61
        addq      $16, %r10                                     #107.9
        vaddpd    %xmm5, %xmm15, %xmm5                          #117.61
        vmovupd   %xmm5, 8(%r13,%r14,8)                         #116.11
        addq      $2, %r14                                      #107.9
        cmpq      %rcx, %r14                                    #107.9
        jb        ..B3.96       # Prob 82%                      #107.9
                                # LOE rcx rbx rsi r8 r10 r11 r12 r13 r14 eax edi xmm0 xmm1 xmm2 xmm3 xmm4 xmm6 xmm7 xmm8 xmm9 xmm10 xmm12 xmm13 xmm14
..B3.97:                        # Preds ..B3.96
        vmovsd    960(%rsp), %xmm10                             #
        vmovsd    968(%rsp), %xmm11                             #
        vmovsd    976(%rsp), %xmm5                              #
        vmovsd    984(%rsp), %xmm6                              #
        movq      1032(%rsp), %r9                               #
        movl      2480(%rsp), %edx                              #
                                # LOE rcx rsi r9 r11 r12 eax edx edi xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.98:                        # Preds ..B3.97 ..B3.351
        movl      %ecx, %r8d                                    #107.9
        lea       (%rax,%r8), %ebx                              #107.9
        movslq    %ebx, %rbx                                    #107.9
        cmpl      %edi, %r8d                                    #107.9
        jae       ..B3.349      # Prob 10%                      #107.9
                                # LOE rcx rbx rsi r9 r11 r12 eax edx ebx edi r8d bl bh xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.99:                        # Preds ..B3.98
        imulq     %r12, %r9                                     #115.43
        vaddsd    %xmm5, %xmm9, %xmm0                           #117.61
        movslq    %eax, %rax                                    #112.11
        addq      %rax, %r9                                     #115.43
        movl      %edx, 2480(%rsp)                              #116.24
        movq      %r12, 2504(%rsp)                              #116.24
        movq      %rsi, 2152(%rsp)                              #116.24
        lea       (%r12,%rax), %r13                             #113.37
        lea       1(%rcx,%r9), %r14                             #115.11
        lea       -2(%rdx), %r9d                                #111.25
        movq      %rbx, %rdx                                    #116.24
        lea       1(%rcx,%rax), %r10                            #112.11
        lea       1(%rcx,%r13), %r13                            #113.11
        lea       (%rsi,%rax,8), %r15                           #116.11
        lea       (%r11,%rax,8), %rax                           #116.24
        .align    16,0x90
                                # LOE rax rdx rcx r10 r11 r13 r14 r15 ebx edi r8d r9d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.100:                       # Preds ..B3.100 ..B3.99
        cmpl      %r9d, %ebx                                    #116.11
        lea       1(%rbx), %esi                                 #107.9
        vmulsd    (%r11,%r14,8), %xmm11, %xmm1                  #116.11
        lea       2(%rbx), %r12d                                #111.38
        vmulsd    (%r11,%r10,8), %xmm0, %xmm2                   #116.11
        cmove     %esi, %r12d                                   #116.11
        incl      %r8d                                          #107.9
        movslq    %r12d, %r12                                   #116.50
        incq      %r10                                          #107.9
        vfmadd231sd (%r11,%r13,8), %xmm10, %xmm2                #116.11
        incq      %r13                                          #107.9
        vfmadd231sd (%r11,%r12,8), %xmm7, %xmm1                 #116.11
        vfmadd231sd (%r11,%rdx,8), %xmm8, %xmm2                 #116.11
        vfmadd231sd 8(%rax,%rcx,8), %xmm6, %xmm1                #116.11
        incq      %rdx                                          #107.9
        incq      %r14                                          #107.9
        movl      %esi, %ebx                                    #107.9
        vaddsd    %xmm2, %xmm1, %xmm3                           #116.11
        vmovsd    %xmm3, 8(%r15,%rcx,8)                         #116.11
        incq      %rcx                                          #107.9
        cmpl      %edi, %r8d                                    #107.9
        jb        ..B3.100      # Prob 82%                      #107.9
                                # LOE rax rdx rcx r10 r11 r13 r14 r15 ebx edi r8d r9d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.101:                       # Preds ..B3.100
        movq      2504(%rsp), %r12                              #
        movq      2152(%rsp), %rsi                              #
        movl      2480(%rsp), %edx                              #
        cmpl      $2, 2160(%rsp)                                #105.7
        jl        ..B3.59       # Prob 10%                      #105.7
                                # LOE rdx rsi r11 r12 edx esi r12d dl dh sil r12b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.102:                       # Preds ..B3.101
        movq      1000(%rsp), %rax                              #
        movl      880(%rsp), %edi                               #
        movq      2144(%rsp), %r10                              #
        movl      2160(%rsp), %ecx                              #
        movl      1080(%rsp), %r8d                              #
        movl      1008(%rsp), %r9d                              #
        jmp       ..B3.107      # Prob 100%                     #
                                # LOE rax rcx rsi r8 r9 r10 r11 r12 eax edx ecx edi r8d r9d al cl ah ch r8b r9b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.103:                       # Preds ..B3.93
        cmpl      $2, 2160(%rsp)                                #105.7
        jl        ..B3.59       # Prob 10%                      #105.7
                                # LOE rsi r11 r12 edx xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.104:                       # Preds ..B3.103
        movq      1000(%rsp), %rax                              #
        movl      880(%rsp), %edi                               #
        movq      2144(%rsp), %r10                              #
        movl      2160(%rsp), %ecx                              #
        movl      1080(%rsp), %r8d                              #
        movl      1008(%rsp), %r9d                              #
        jmp       ..B3.107      # Prob 100%                     #
                                # LOE rax rcx rsi r8 r9 r10 r11 r12 eax edx ecx edi r8d r9d al cl ah ch r8b r9b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.105:                       # Preds ..B3.16
        movl      %edi, 880(%rsp)                               #
        movq      %r10, 2144(%rsp)                              #
        movq      %rbx, %r12                                    #
        cmpl      $2, 2160(%rsp)                                #105.7
        jl        ..B3.59       # Prob 10%                      #105.7
                                # LOE rsi rdi r10 r11 r12 edx edi r10d r12d dil r10b r12b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.106:                       # Preds ..B3.105
        movq      1000(%rsp), %rax                              #
        movl      2160(%rsp), %ecx                              #
        movl      1080(%rsp), %r8d                              #
        movl      1008(%rsp), %r9d                              #
                                # LOE rax rcx rsi r8 r9 r10 r11 r12 eax edx ecx edi r8d r9d al cl ah ch r8b r9b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.107:                       # Preds ..B3.106 ..B3.104 ..B3.350 ..B3.102 ..B3.79
                                #      
        movq      %rax, 1000(%rsp)                              #101.31
        xorl      %ebx, %ebx                                    #110.11
        movl      %edi, 880(%rsp)                               #101.31
        lea       -1(%rcx), %r13d                               #101.31
        movq      %r10, 2144(%rsp)                              #101.31
        vaddsd    %xmm5, %xmm8, %xmm0                           #117.61
        vmovsd    %xmm0, 1072(%rsp)                             #101.31
        movq      %r11, 2184(%rsp)                              #101.31
        movq      %rsi, 2152(%rsp)                              #101.31
        movl      %ecx, 2160(%rsp)                              #101.31
        movl      %r8d, 1080(%rsp)                              #101.31
        movl      %r9d, 1008(%rsp)                              #101.31
                                # LOE r12 edx ebx r13d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.108:                       # Preds ..B3.199 ..B3.107
        movl      %ebx, %r10d                                   #107.9
        imull     %edx, %r10d                                   #107.9
        cmpl      $1, %edx                                      #111.11
        movl      %r13d, 992(%rsp)                              #111.11
        lea       (%rdx,%r10), %r14d                            #107.9
        lea       1(%rdx,%r10), %edi                            #111.38
        cmove     %r14d, %edi                                   #111.11
                                # LOE r12 edx ebx edi r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.109:                       # Preds ..B3.129 ..B3.152 ..B3.154 ..B3.173 ..B3.196
                                #       ..B3.198 ..B3.108
        movl      2160(%rsp), %eax                              #113.24
        movslq    %r10d, %r10                                   #117.35
        movq      2184(%rsp), %rcx                              #116.11
        lea       (%r10,%rdx,2), %r9d                           #107.9
        movslq    %edi, %rdi                                    #116.50
        lea       -2(%rax), %esi                                #113.24
        cmpl      %esi, %ebx                                    #116.11
        vmulsd    (%rcx,%r10,8), %xmm9, %xmm0                   #116.11
        lea       (%rcx,%r12,8), %r13                           #116.24
        cmove     %r14d, %r9d                                   #116.11
        lea       (%r13,%r10,8), %r13                           #116.24
        movslq    %r9d, %r9                                     #117.22
        imull     %edx, %eax                                    #115.43
        vfmadd231sd (%rcx,%rdi,8), %xmm7, %xmm0                 #116.11
        vmovsd    1072(%rsp), %xmm2                             #116.11
        vmulsd    (%rcx,%r9,8), %xmm10, %xmm1                   #116.11
        vfmadd231sd (%r13), %xmm6, %xmm1                        #116.11
        addl      %edx, %eax                                    #115.43
        addl      %r10d, %eax                                   #107.9
        vaddsd    %xmm1, %xmm0, %xmm3                           #116.11
        cmpl      $1, 1080(%rsp)                                #116.11
        movslq    %r14d, %r14                                   #116.37
        cmove     %r14d, %eax                                   #116.11
        movslq    %eax, %rax                                    #117.61
        movq      2152(%rsp), %r11                              #116.11
        vfmadd231sd (%rcx,%rax,8), %xmm11, %xmm3                #116.11
        lea       (%r11,%r12,8), %r8                            #116.11
        vfmadd231sd (%rcx,%r14,8), %xmm2, %xmm3                 #116.11
        lea       (%r8,%r10,8), %r11                            #116.11
        vmovsd    %xmm3, (%r11)                                 #116.11
        cmpl      $2, %edx                                      #107.9
        jl        ..B3.199      # Prob 50%                      #107.9
                                # LOE rcx r11 r12 r13 edx ecx ebx esi r10d r14d cl ch xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.110:                       # Preds ..B3.109
        lea       -1(%rdx), %r9d                                #107.9
        cmpl      %esi, %ebx                                    #113.24
        jne       ..B3.155      # Prob 50%                      #113.24
                                # LOE r11 r12 r13 edx ebx r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.111:                       # Preds ..B3.110
        cmpl      $1, 1080(%rsp)                                #115.24
        jne       ..B3.130      # Prob 50%                      #115.24
                                # LOE r11 r12 r13 edx ebx r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.112:                       # Preds ..B3.111
        cmpl      $8, %r9d                                      #107.9
        jl        ..B3.362      # Prob 10%                      #107.9
                                # LOE r11 r12 r13 edx ebx r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.113:                       # Preds ..B3.112
        cmpl      $15, %r9d                                     #107.9
        jl        ..B3.364      # Prob 10%                      #107.9
                                # LOE r11 r12 r13 edx ebx r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.114:                       # Preds ..B3.113
        lea       8(%r11), %rsi                                 #116.11
        andq      $31, %rsi                                     #107.9
        testl     %esi, %esi                                    #107.9
        je        ..B3.117      # Prob 50%                      #107.9
                                # LOE r11 r12 r13 edx ebx esi r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.115:                       # Preds ..B3.114
        testl     $7, %esi                                      #107.9
        jne       ..B3.362      # Prob 10%                      #107.9
                                # LOE r11 r12 r13 edx ebx esi r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.116:                       # Preds ..B3.115
        negl      %esi                                          #107.9
        addl      $32, %esi                                     #107.9
        shrl      $3, %esi                                      #107.9
                                # LOE r11 r12 r13 edx ebx esi r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.117:                       # Preds ..B3.116 ..B3.114
        lea       8(%rsi), %eax                                 #107.9
        cmpl      %eax, %r9d                                    #107.9
        jl        ..B3.362      # Prob 10%                      #107.9
                                # LOE r11 r12 r13 edx ebx esi r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.118:                       # Preds ..B3.117
        movl      %r9d, %r8d                                    #107.9
        xorl      %r15d, %r15d                                  #107.9
        subl      %esi, %r8d                                    #107.9
        andl      $7, %r8d                                      #107.9
        negl      %r8d                                          #107.9
        addl      %r9d, %r8d                                    #107.9
        movl      $0, 2256(%rsp)                                #107.9
        testl     %esi, %esi                                    #107.9
        jbe       ..B3.122      # Prob 10%                      #107.9
                                # LOE r11 r12 r13 r14 r15 edx ebx esi r8d r9d r10d r14d r14b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.119:                       # Preds ..B3.118
        movslq    %ebx, %rcx                                    #113.11
        lea       -2(%rdx), %eax                                #111.25
        imulq     %r12, %rcx                                    #107.9
        vaddsd    %xmm5, %xmm10, %xmm0                          #117.61
        movl      %r8d, 2512(%rsp)                              #112.11
        lea       1(%r12,%rcx), %rdi                            #113.11
        movslq    %r10d, %rcx                                   #112.11
        vaddsd    %xmm0, %xmm11, %xmm0                          #117.61
        movl      %r10d, 2488(%rsp)                             #112.11
        incq      %rcx                                          #112.11
        movq      %r12, 2504(%rsp)                              #112.11
        movl      %ebx, 2496(%rsp)                              #112.11
        movl      %edx, 2480(%rsp)                              #112.11
        movl      %r14d, %r12d                                  #112.11
        movl      2256(%rsp), %r10d                             #112.11
        movq      2184(%rsp), %r8                               #112.11
        .align    16,0x90
                                # LOE rcx rdi r8 r11 r13 r15 eax esi r9d r10d r12d r14d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.120:                       # Preds ..B3.120 ..B3.119
        vmulsd    8(%r13,%r15,8), %xmm6, %xmm1                  #116.24
        lea       1(%r12), %ebx                                 #107.9
        cmpl      %eax, %r10d                                   #116.11
        lea       2(%r12), %edx                                 #111.38
        movslq    %r12d, %r12                                   #116.37
        cmove     %ebx, %edx                                    #116.11
        incl      %r10d                                         #107.9
        movslq    %edx, %rdx                                    #116.50
        vfmadd231sd (%r8,%r12,8), %xmm8, %xmm1                  #116.11
        movl      %ebx, %r12d                                   #107.9
        vfmadd231sd (%r8,%rdx,8), %xmm7, %xmm1                  #116.11
        vfmadd231sd (%r8,%rcx,8), %xmm9, %xmm1                  #116.11
        incq      %rcx                                          #107.9
        vfmadd231sd (%r8,%rdi,8), %xmm0, %xmm1                  #116.11
        incq      %rdi                                          #107.9
        vmovsd    %xmm1, 8(%r11,%r15,8)                         #116.11
        incq      %r15                                          #107.9
        cmpl      %esi, %r10d                                   #107.9
        jb        ..B3.120      # Prob 82%                      #107.9
                                # LOE rcx rdi r8 r11 r13 r15 eax esi r9d r10d r12d r14d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.121:                       # Preds ..B3.120
        movl      2512(%rsp), %r8d                              #
        movl      2488(%rsp), %r10d                             #
        movl      2496(%rsp), %ebx                              #
        movq      2504(%rsp), %r12                              #
        movl      2480(%rsp), %edx                              #
                                # LOE r11 r12 r13 edx ebx esi r8d r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.122:                       # Preds ..B3.118 ..B3.121 ..B3.364
        movl      $8, %eax                                      #116.11
        lea       1(%rsi), %ecx                                 #116.11
        vbroadcastsd %xmm7, %ymm1                               #98.1
        lea       1(%rsi,%r14), %edi                            #107.9
        vbroadcastsd %xmm9, %ymm0                               #98.1
        vmovd     %r9d, %xmm15                                  #111.25
        vbroadcastsd %xmm5, %ymm12                              #98.1
        vbroadcastsd %xmm11, %ymm14                             #98.1
        vmovd     %eax, %xmm13                                  #116.11
        vmovd     %ecx, %xmm3                                   #116.11
        vmovsd    %xmm5, 976(%rsp)                              #107.9
        vmovsd    %xmm6, 984(%rsp)                              #107.9
        vmovupd   %ymm1, 384(%rsp)                              #98.1
        lea       2(%rsi,%r14), %r15d                           #111.38
        vmovupd   %ymm0, 256(%rsp)                              #98.1
        vmovsd    %xmm7, 936(%rsp)                              #107.9
        vmovsd    %xmm8, 944(%rsp)                              #107.9
        vaddpd    %ymm14, %ymm12, %ymm0                         #117.61
        vmovsd    %xmm9, 952(%rsp)                              #107.9
        vmovsd    %xmm10, 960(%rsp)                             #107.9
        vpbroadcastd %xmm13, %ymm12                             #116.11
        vmovd     %edi, %xmm13                                  #107.9
        vpbroadcastd %xmm3, %ymm14                              #116.11
        vpbroadcastd %xmm13, %ymm3                              #107.9
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm3, %ymm13    #107.9
        vmovd     %r15d, %xmm3                                  #111.38
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm14, %ymm14   #116.11
        vmovsd    %xmm11, 968(%rsp)                             #107.9
        vmovupd   256(%rsp), %ymm5                              #107.9
        vbroadcastsd %xmm6, %ymm2                               #98.1
        vbroadcastsd %xmm8, %ymm4                               #98.1
        vbroadcastsd %xmm10, %ymm1                              #98.1
        vmovupd   384(%rsp), %ymm6                              #107.9
        vpbroadcastd %xmm15, %ymm15                             #111.25
        vpbroadcastd %xmm3, %ymm3                               #111.38
        movq      2184(%rsp), %rcx                              #107.9
        movl      %esi, %esi                                    #107.9
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm3, %ymm3     #111.38
        vmovdqu   %ymm15, 1120(%rsp)                            #107.9
        movslq    %r8d, %rdi                                    #107.9
                                # LOE rcx rsi rdi r11 r12 r13 edx ebx r8d r9d r10d r14d ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm12 ymm13 ymm14
..B3.123:                       # Preds ..B3.123 ..B3.122
        vpcmpeqd  1120(%rsp), %ymm14, %ymm10                    #111.25
        movl      %esi, %r15d                                   #110.11
        vpblendvb %ymm10, %ymm13, %ymm3, %ymm8                  #111.38
        vpaddd    %ymm12, %ymm14, %ymm14                        #116.11
        vpaddd    %ymm12, %ymm3, %ymm3                          #111.38
        vpcmpeqd  %ymm7, %ymm7, %ymm7                           #116.50
        lea       (%r14,%r15), %eax                             #107.9
        vxorpd    %ymm10, %ymm10, %ymm10                        #116.50
        addl      %r10d, %r15d                                  #107.9
        vmovdqa   %ymm7, %ymm9                                  #116.50
        vmovdqa   %ymm7, %ymm15                                 #116.50
        movslq    %eax, %rax                                    #116.37
        movslq    %r15d, %r15                                   #112.11
        vgatherdpd %ymm9, (%rcx,%xmm8,8), %ymm10                #116.50
        vextracti128 $1, %ymm8, %xmm11                          #116.50
        vmulpd    %ymm10, %ymm6, %ymm8                          #117.61
        vxorpd    %ymm10, %ymm10, %ymm10                        #116.50
        vgatherdpd %ymm15, (%rcx,%xmm11,8), %ymm10              #116.50
        vfmadd231pd (%rcx,%rax,8), %ymm4, %ymm8                 #117.61
        vmulpd    %ymm10, %ymm6, %ymm11                         #117.61
        vfmadd231pd 8(%r13,%rsi,8), %ymm2, %ymm8                #117.61
        vfmadd231pd 32(%rcx,%rax,8), %ymm4, %ymm11              #117.61
        vxorpd    %ymm15, %ymm15, %ymm15                        #117.22
        vmovdqa   %ymm7, %ymm9                                  #117.22
        vxorpd    %ymm10, %ymm10, %ymm10                        #117.22
        vfmadd231pd 40(%r13,%rsi,8), %ymm2, %ymm11              #117.61
        vgatherdpd %ymm9, (%rcx,%xmm13,8), %ymm15               #117.22
        vextracti128 $1, %ymm13, %xmm9                          #117.22
        vpaddd    %ymm12, %ymm13, %ymm13                        #107.9
        vgatherdpd %ymm7, (%rcx,%xmm9,8), %ymm10                #117.22
        vmulpd    %ymm15, %ymm1, %ymm9                          #117.61
        vfmadd231pd 8(%rcx,%r15,8), %ymm5, %ymm9                #117.61
        vfmadd231pd %ymm0, %ymm15, %ymm9                        #117.61
        vaddpd    %ymm8, %ymm9, %ymm7                           #117.61
        vmulpd    %ymm10, %ymm1, %ymm8                          #117.61
        vfmadd231pd 40(%rcx,%r15,8), %ymm5, %ymm8               #117.61
        vmovupd   %ymm7, 8(%r11,%rsi,8)                         #116.11
        vfmadd231pd %ymm0, %ymm10, %ymm8                        #117.61
        vaddpd    %ymm11, %ymm8, %ymm10                         #117.61
        vmovupd   %ymm10, 40(%r11,%rsi,8)                       #116.11
        addq      $8, %rsi                                      #107.9
        cmpq      %rdi, %rsi                                    #107.9
        jb        ..B3.123      # Prob 82%                      #107.9
                                # LOE rcx rsi rdi r11 r12 r13 edx ebx r8d r9d r10d r14d ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm12 ymm13 ymm14
..B3.124:                       # Preds ..B3.123
        vmovsd    936(%rsp), %xmm7                              #
        vmovsd    944(%rsp), %xmm8                              #
        vmovsd    952(%rsp), %xmm9                              #
        vmovsd    960(%rsp), %xmm10                             #
        vmovsd    968(%rsp), %xmm11                             #
        vmovsd    976(%rsp), %xmm5                              #
        vmovsd    984(%rsp), %xmm6                              #
                                # LOE r11 r12 r13 edx ebx r8d r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.125:                       # Preds ..B3.124 ..B3.362
        xorl      %esi, %esi                                    #107.9
        lea       1(%r8), %eax                                  #107.9
        xorl      %edi, %edi                                    #107.9
        cmpl      %eax, %r9d                                    #107.9
        jb        ..B3.359      # Prob 10%                      #107.9
                                # LOE rdi r11 r12 r13 edx ebx esi r8d r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.126:                       # Preds ..B3.125
        movslq    %ebx, %r15                                    #113.11
        addl      %r8d, %r14d                                   #107.9
        imulq     %r12, %r15                                    #107.9
        vaddsd    %xmm5, %xmm10, %xmm0                          #117.61
        movslq    %r10d, %r10                                   #112.11
        subl      %r8d, %r9d                                    #107.9
        movslq    %r8d, %r8                                     #113.11
        addq      %r12, %r15                                    #107.9
        movq      %r12, 2504(%rsp)                              #113.11
        lea       -2(%rdx), %eax                                #111.25
        movl      %edx, 2480(%rsp)                              #113.11
        vaddsd    %xmm0, %xmm11, %xmm0                          #117.61
        lea       1(%r10,%r8), %rcx                             #112.11
        lea       (%r13,%r8,8), %r13                            #116.24
        lea       (%r11,%r8,8), %r11                            #116.11
        lea       1(%r15,%r8), %r10                             #113.11
        movq      2184(%rsp), %r15                              #113.11
        .align    16,0x90
                                # LOE rcx rdi r10 r11 r13 r15 eax ebx esi r8d r9d r14d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.127:                       # Preds ..B3.127 ..B3.126
        vmulsd    8(%r13,%rdi,8), %xmm6, %xmm1                  #116.24
        lea       1(%r14), %r12d                                #107.9
        cmpl      %eax, %r8d                                    #116.11
        lea       2(%r14), %edx                                 #111.38
        movslq    %r14d, %r14                                   #116.37
        cmove     %r12d, %edx                                   #116.11
        incl      %esi                                          #107.9
        movslq    %edx, %rdx                                    #116.50
        incl      %r8d                                          #107.9
        vfmadd231sd (%r15,%r14,8), %xmm8, %xmm1                 #116.11
        movl      %r12d, %r14d                                  #107.9
        vfmadd231sd (%r15,%rdx,8), %xmm7, %xmm1                 #116.11
        vfmadd231sd (%r15,%rcx,8), %xmm9, %xmm1                 #116.11
        incq      %rcx                                          #107.9
        vfmadd231sd (%r15,%r10,8), %xmm0, %xmm1                 #116.11
        incq      %r10                                          #107.9
        vmovsd    %xmm1, 8(%r11,%rdi,8)                         #116.11
        incq      %rdi                                          #107.9
        cmpl      %r9d, %esi                                    #107.9
        jb        ..B3.127      # Prob 82%                      #107.9
                                # LOE rcx rdi r10 r11 r13 r15 eax ebx esi r8d r9d r14d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.128:                       # Preds ..B3.127
        incl      %ebx                                          #105.7
        movq      2504(%rsp), %r12                              #
        movl      2480(%rsp), %edx                              #
        cmpl      992(%rsp), %ebx                               #105.7
        jae       ..B3.356      # Prob 18%                      #105.7
                                # LOE rdx r12 edx ebx r12d dl dh r12b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.129:                       # Preds ..B3.384 ..B3.376 ..B3.366 ..B3.359 ..B3.128
                                #      
        movl      %ebx, %r10d                                   #107.9
        imull     %edx, %r10d                                   #107.9
        lea       (%rdx,%r10), %r14d                            #107.9
        lea       1(%rdx,%r10), %edi                            #111.38
        jmp       ..B3.109      # Prob 100%                     #111.38
                                # LOE r12 edx ebx edi r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.130:                       # Preds ..B3.111
        cmpl      $8, %r9d                                      #107.9
        jl        ..B3.371      # Prob 10%                      #107.9
                                # LOE r11 r12 r13 edx ebx r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.131:                       # Preds ..B3.130
        cmpl      $15, %r9d                                     #107.9
        jl        ..B3.373      # Prob 10%                      #107.9
                                # LOE r11 r12 r13 edx ebx r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.132:                       # Preds ..B3.131
        lea       8(%r11), %rdi                                 #116.11
        andq      $31, %rdi                                     #107.9
        testl     %edi, %edi                                    #107.9
        je        ..B3.135      # Prob 50%                      #107.9
                                # LOE r11 r12 r13 edx ebx edi r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.133:                       # Preds ..B3.132
        testl     $7, %edi                                      #107.9
        jne       ..B3.371      # Prob 10%                      #107.9
                                # LOE r11 r12 r13 edx ebx edi r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.134:                       # Preds ..B3.133
        negl      %edi                                          #107.9
        addl      $32, %edi                                     #107.9
        shrl      $3, %edi                                      #107.9
                                # LOE r11 r12 r13 edx ebx edi r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.135:                       # Preds ..B3.134 ..B3.132
        lea       8(%rdi), %eax                                 #107.9
        cmpl      %eax, %r9d                                    #107.9
        jl        ..B3.371      # Prob 10%                      #107.9
                                # LOE r11 r12 r13 edx ebx edi r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.136:                       # Preds ..B3.135
        movl      2160(%rsp), %ecx                              #115.43
        movl      %r9d, %eax                                    #107.9
        imull     %edx, %ecx                                    #115.43
        subl      %edi, %eax                                    #107.9
        andl      $7, %eax                                      #107.9
        addl      %edx, %ecx                                    #115.43
        negl      %eax                                          #107.9
        addl      %r10d, %ecx                                   #107.9
        addl      %r9d, %eax                                    #107.9
        movl      $0, 2272(%rsp)                                #107.9
        movq      $0, 2240(%rsp)                                #107.9
        testl     %edi, %edi                                    #107.9
        jbe       ..B3.140      # Prob 10%                      #107.9
                                # LOE r11 r12 r13 r14 eax edx ecx ebx edi r9d r10d r14d r14b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.137:                       # Preds ..B3.136
        movslq    %ebx, %r8                                     #113.11
        lea       -2(%rdx), %esi                                #111.25
        imulq     %r12, %r8                                     #107.9
        vaddsd    %xmm5, %xmm10, %xmm0                          #117.61
        movl      %r9d, 2520(%rsp)                              #112.11
        lea       1(%r12,%r8), %r15                             #113.11
        movq      %r15, 2312(%rsp)                              #113.11
        movslq    %ecx, %r15                                    #115.11
        movslq    %r10d, %r8                                    #112.11
        incq      %r15                                          #115.11
        movl      %eax, 2528(%rsp)                              #112.11
        incq      %r8                                           #112.11
        movl      %ecx, 2536(%rsp)                              #112.11
        movl      %r10d, 2488(%rsp)                             #112.11
        movl      %ebx, 2496(%rsp)                              #112.11
        movq      %r12, 2504(%rsp)                              #112.11
        movl      %edx, 2480(%rsp)                              #112.11
        movq      2312(%rsp), %rcx                              #112.11
        movq      2240(%rsp), %rax                              #112.11
        movl      %r14d, %r10d                                  #112.11
        movl      2272(%rsp), %r9d                              #112.11
        movq      2184(%rsp), %rbx                              #112.11
        .align    16,0x90
                                # LOE rax rcx rbx r8 r11 r13 r15 esi edi r9d r10d r14d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.138:                       # Preds ..B3.138 ..B3.137
        cmpl      %esi, %r9d                                    #116.11
        lea       1(%r10), %edx                                 #107.9
        vmulsd    (%rbx,%r15,8), %xmm11, %xmm1                  #116.11
        lea       2(%r10), %r12d                                #111.38
        vmulsd    (%rbx,%rcx,8), %xmm0, %xmm2                   #116.11
        cmove     %edx, %r12d                                   #116.11
        incl      %r9d                                          #107.9
        movslq    %r12d, %r12                                   #116.50
        incq      %rcx                                          #107.9
        vfmadd231sd (%rbx,%r8,8), %xmm9, %xmm2                  #116.11
        incq      %r8                                           #107.9
        vfmadd231sd (%rbx,%r12,8), %xmm7, %xmm1                 #116.11
        movslq    %r10d, %r10                                   #116.37
        incq      %r15                                          #107.9
        vfmadd231sd 8(%r13,%rax,8), %xmm6, %xmm1                #116.11
        vfmadd231sd (%rbx,%r10,8), %xmm8, %xmm2                 #116.11
        movl      %edx, %r10d                                   #107.9
        vaddsd    %xmm2, %xmm1, %xmm3                           #116.11
        vmovsd    %xmm3, 8(%r11,%rax,8)                         #116.11
        incq      %rax                                          #107.9
        cmpl      %edi, %r9d                                    #107.9
        jb        ..B3.138      # Prob 82%                      #107.9
                                # LOE rax rcx rbx r8 r11 r13 r15 esi edi r9d r10d r14d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.139:                       # Preds ..B3.138
        movl      2520(%rsp), %r9d                              #
        movl      2528(%rsp), %eax                              #
        movl      2536(%rsp), %ecx                              #
        movl      2488(%rsp), %r10d                             #
        movl      2496(%rsp), %ebx                              #
        movq      2504(%rsp), %r12                              #
        movl      2480(%rsp), %edx                              #
                                # LOE r11 r12 r13 eax edx ecx ebx edi r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.140:                       # Preds ..B3.136 ..B3.139 ..B3.373
        movl      $8, %esi                                      #116.11
        lea       1(%rdi), %r8d                                 #116.11
        vbroadcastsd %xmm9, %ymm0                               #98.1
        lea       1(%rdi,%r14), %r15d                           #107.9
        vbroadcastsd %xmm11, %ymm13                             #98.1
        vmovd     %r9d, %xmm15                                  #111.25
        vbroadcastsd %xmm10, %ymm12                             #98.1
        vbroadcastsd %xmm5, %ymm14                              #98.1
        vmovd     %esi, %xmm4                                   #116.11
        vmovsd    %xmm5, 976(%rsp)                              #107.9
        vmovsd    %xmm6, 984(%rsp)                              #107.9
        vmovsd    %xmm7, 936(%rsp)                              #107.9
        vmovupd   %ymm0, 416(%rsp)                              #98.1
        lea       2(%rdi,%r14), %esi                            #111.38
        vmovupd   %ymm13, 288(%rsp)                             #98.1
        vmovsd    %xmm8, 944(%rsp)                              #107.9
        vmovsd    %xmm9, 952(%rsp)                              #107.9
        vaddpd    %ymm14, %ymm12, %ymm0                         #117.61
        vmovd     %r8d, %xmm14                                  #116.11
        vmovsd    %xmm10, 960(%rsp)                             #107.9
        vmovsd    %xmm11, 968(%rsp)                             #107.9
        vpbroadcastd %xmm4, %ymm12                              #116.11
        vmovd     %r15d, %xmm4                                  #107.9
        vpbroadcastd %xmm14, %ymm13                             #116.11
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm13, %ymm14   #116.11
        vbroadcastsd %xmm6, %ymm3                               #98.1
        vbroadcastsd %xmm8, %ymm2                               #98.1
        vbroadcastsd %xmm7, %ymm1                               #98.1
        vmovupd   288(%rsp), %ymm5                              #107.9
        vmovupd   416(%rsp), %ymm6                              #107.9
        vpbroadcastd %xmm4, %ymm13                              #107.9
        vmovd     %esi, %xmm4                                   #111.38
        vpbroadcastd %xmm15, %ymm15                             #111.25
        vpbroadcastd %xmm4, %ymm4                               #111.38
        movq      2184(%rsp), %r8                               #107.9
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm13, %ymm13   #107.9
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm4, %ymm4     #111.38
        vmovdqu   %ymm15, 1152(%rsp)                            #107.9
        movl      %edi, %edi                                    #107.9
        movslq    %eax, %rsi                                    #107.9
        movl      %edx, 2480(%rsp)                              #107.9
                                # LOE rsi rdi r8 r11 r12 r13 eax ecx ebx r9d r10d r14d ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm12 ymm13 ymm14
..B3.141:                       # Preds ..B3.141 ..B3.140
        vpcmpeqd  1152(%rsp), %ymm14, %ymm10                    #111.25
        movl      %edi, %r15d                                   #110.11
        vpblendvb %ymm10, %ymm13, %ymm4, %ymm8                  #111.38
        vpaddd    %ymm12, %ymm14, %ymm14                        #116.11
        vpaddd    %ymm12, %ymm4, %ymm4                          #111.38
        vpcmpeqd  %ymm7, %ymm7, %ymm7                           #116.50
        lea       (%r14,%r15), %edx                             #107.9
        vxorpd    %ymm10, %ymm10, %ymm10                        #116.50
        vmovdqa   %ymm7, %ymm9                                  #116.50
        vmovdqa   %ymm7, %ymm15                                 #116.50
        movslq    %edx, %rdx                                    #116.37
        vgatherdpd %ymm9, (%r8,%xmm8,8), %ymm10                 #116.50
        vextracti128 $1, %ymm8, %xmm11                          #116.50
        vmulpd    %ymm10, %ymm1, %ymm8                          #117.61
        vxorpd    %ymm10, %ymm10, %ymm10                        #116.50
        vgatherdpd %ymm15, (%r8,%xmm11,8), %ymm10               #116.50
        vfmadd231pd (%r8,%rdx,8), %ymm2, %ymm8                  #117.61
        vmulpd    %ymm10, %ymm1, %ymm11                         #117.61
        vfmadd231pd 8(%r13,%rdi,8), %ymm3, %ymm8                #117.61
        vfmadd231pd 32(%r8,%rdx,8), %ymm2, %ymm11               #117.61
        vxorpd    %ymm15, %ymm15, %ymm15                        #117.22
        lea       (%r10,%r15), %edx                             #107.9
        vmovdqa   %ymm7, %ymm9                                  #117.22
        addl      %ecx, %r15d                                   #107.9
        vxorpd    %ymm10, %ymm10, %ymm10                        #117.22
        movslq    %r15d, %r15                                   #115.11
        movslq    %edx, %rdx                                    #112.11
        vfmadd231pd 40(%r13,%rdi,8), %ymm3, %ymm11              #117.61
        vgatherdpd %ymm9, (%r8,%xmm13,8), %ymm15                #117.22
        vextracti128 $1, %ymm13, %xmm9                          #117.22
        vpaddd    %ymm12, %ymm13, %ymm13                        #107.9
        vgatherdpd %ymm7, (%r8,%xmm9,8), %ymm10                 #117.22
        vmulpd    8(%r8,%r15,8), %ymm5, %ymm9                   #117.61
        vfmadd231pd 8(%r8,%rdx,8), %ymm6, %ymm9                 #117.61
        vfmadd231pd %ymm0, %ymm15, %ymm9                        #117.61
        vaddpd    %ymm8, %ymm9, %ymm7                           #117.61
        vmulpd    40(%r8,%r15,8), %ymm5, %ymm8                  #117.61
        vfmadd231pd 40(%r8,%rdx,8), %ymm6, %ymm8                #117.61
        vmovupd   %ymm7, 8(%r11,%rdi,8)                         #116.11
        vfmadd231pd %ymm0, %ymm10, %ymm8                        #117.61
        vaddpd    %ymm11, %ymm8, %ymm10                         #117.61
        vmovupd   %ymm10, 40(%r11,%rdi,8)                       #116.11
        addq      $8, %rdi                                      #107.9
        cmpq      %rsi, %rdi                                    #107.9
        jb        ..B3.141      # Prob 82%                      #107.9
                                # LOE rsi rdi r8 r11 r12 r13 eax ecx ebx r9d r10d r14d ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm12 ymm13 ymm14
..B3.142:                       # Preds ..B3.141
        vmovsd    936(%rsp), %xmm7                              #
        vmovsd    944(%rsp), %xmm8                              #
        vmovsd    952(%rsp), %xmm9                              #
        vmovsd    960(%rsp), %xmm10                             #
        vmovsd    968(%rsp), %xmm11                             #
        vmovsd    976(%rsp), %xmm5                              #
        vmovsd    984(%rsp), %xmm6                              #
        movl      2480(%rsp), %edx                              #
                                # LOE r11 r12 r13 eax edx ebx r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.143:                       # Preds ..B3.142 ..B3.371
        lea       1(%rax), %esi                                 #107.9
        cmpl      %esi, %r9d                                    #107.9
        jb        ..B3.153      # Prob 50%                      #107.9
                                # LOE r11 r12 r13 eax edx ebx esi r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.144:                       # Preds ..B3.143
        movl      %r9d, %ecx                                    #107.9
        subl      %eax, %ecx                                    #107.9
        movl      %ecx, 2168(%rsp)                              #107.9
        cmpl      $2, %ecx                                      #107.9
        jl        ..B3.369      # Prob 10%                      #107.9
                                # LOE r11 r12 r13 eax edx ebx esi r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.145:                       # Preds ..B3.144
        movl      $2, %r8d                                      #116.11
        vmovd     %r9d, %xmm2                                   #111.25
        vmovddup  %xmm9, %xmm1                                  #98.1
        lea       2(%rax), %r9d                                 #116.11
        vmovupd   %xmm1, 656(%rsp)                              #98.1
        lea       1(%rax,%r14), %ecx                            #107.9
        vmovd     %esi, %xmm14                                  #116.11
        lea       2(%rax,%r14), %esi                            #111.38
        vmovd     %r8d, %xmm15                                  #116.11
        vpxor     %xmm12, %xmm12, %xmm12                        #116.11
        vpbroadcastd %xmm15, %xmm1                              #116.11
        vmovd     %r9d, %xmm15                                  #116.11
        vpunpckldq %xmm15, %xmm14, %xmm14                       #116.11
        lea       (%rax,%r14), %r8d                             #107.9
        vpunpcklqdq %xmm12, %xmm14, %xmm15                      #116.11
        vmovd     %ecx, %xmm14                                  #107.9
        incl      %ecx                                          #107.9
        movl      2160(%rsp), %r15d                             #115.43
        imull     %edx, %r15d                                   #115.43
        vmovdqu   %xmm15, 176(%rsp)                             #116.11
        vmovd     %ecx, %xmm15                                  #107.9
        vpunpckldq %xmm15, %xmm14, %xmm14                       #107.9
        vpunpcklqdq %xmm12, %xmm14, %xmm15                      #107.9
        vmovd     %esi, %xmm14                                  #111.38
        movslq    %r10d, %r10                                   #112.11
        incl      %esi                                          #111.38
        addl      %edx, %r15d                                   #115.43
        addl      %r10d, %r15d                                  #107.9
        movslq    %eax, %rax                                    #112.11
        movslq    %r15d, %r15                                   #115.11
        vmovdqu   %xmm15, 848(%rsp)                             #107.9
        vmovd     %esi, %xmm15                                  #111.38
        vpunpckldq %xmm15, %xmm14, %xmm14                       #111.38
        movl      2168(%rsp), %edi                              #107.9
        lea       1(%r10,%rax), %r9                             #112.11
        vmovddup  %xmm10, %xmm13                                #98.1
        lea       1(%r15,%rax), %r15                            #115.11
        vpunpcklqdq %xmm12, %xmm14, %xmm15                      #111.38
        andl      $-2, %edi                                     #107.9
        movq      $0, 896(%rsp)                                 #107.9
        lea       (%r11,%rax,8), %rsi                           #116.11
        vmovddup  %xmm5, %xmm12                                 #98.1
        lea       (%r13,%rax,8), %rcx                           #116.24
        vmovsd    %xmm9, 952(%rsp)                              #116.24
        vmovsd    %xmm6, 984(%rsp)                              #116.24
        movl      %ebx, 2496(%rsp)                              #116.24
        movl      %edx, 2480(%rsp)                              #116.24
        vpbroadcastd %xmm2, %xmm2                               #111.25
        vmovddup  %xmm6, %xmm3                                  #98.1
        vmovddup  %xmm8, %xmm4                                  #98.1
        vmovddup  %xmm7, %xmm0                                  #98.1
        movslq    %edi, %rdi                                    #107.9
        vaddpd    %xmm12, %xmm13, %xmm14                        #117.61
        vmovddup  %xmm11, %xmm12                                #98.1
        shlq      $3, %r9                                       #117.35
        shlq      $3, %r15                                      #117.61
        vmovdqu   848(%rsp), %xmm13                             #116.24
        vmovupd   656(%rsp), %xmm6                              #116.24
        vmovdqu   176(%rsp), %xmm9                              #116.24
        movq      896(%rsp), %rbx                               #116.24
        movq      2184(%rsp), %rdx                              #116.24
        vmovsd    %xmm10, 960(%rsp)                             #116.24
        vmovsd    %xmm11, 968(%rsp)                             #116.24
        vmovsd    %xmm5, 976(%rsp)                              #116.24
        movq      %r13, 1016(%rsp)                              #116.24
        movl      %r10d, 2488(%rsp)                             #116.24
        movq      %r12, 2504(%rsp)                              #116.24
                                # LOE rdx rcx rbx rsi rdi r9 r11 r15 eax r8d r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm6 xmm7 xmm8 xmm9 xmm12 xmm13 xmm14 xmm15
..B3.146:                       # Preds ..B3.146 ..B3.145
        vpcmpeqd  %xmm2, %xmm9, %xmm10                          #111.25
        movl      %ebx, %r10d                                   #116.37
        vpblendvb %xmm10, %xmm13, %xmm15, %xmm11                #111.38
        addl      %r8d, %r10d                                   #116.37
        vpaddd    %xmm1, %xmm9, %xmm9                           #116.11
        vpaddd    %xmm1, %xmm15, %xmm15                         #111.38
        vmovd     %xmm11, %r13                                  #116.50
        movslq    %r13d, %r12                                   #116.50
        sarq      $32, %r13                                     #116.50
        movslq    %r10d, %r10                                   #116.37
        vmovq     (%rdx,%r12,8), %xmm5                          #116.50
        vmovhpd   (%rdx,%r13,8), %xmm5, %xmm10                  #116.50
        vmulpd    %xmm10, %xmm0, %xmm5                          #117.61
        vfmadd231pd (%rdx,%r10,8), %xmm4, %xmm5                 #117.61
        vmovd     %xmm13, %r10                                  #117.22
        vpaddd    %xmm1, %xmm13, %xmm13                         #107.9
        vfmadd231pd 8(%rcx,%rbx,8), %xmm3, %xmm5                #117.61
        movslq    %r10d, %r12                                   #117.22
        sarq      $32, %r10                                     #117.22
        vmovq     (%rdx,%r12,8), %xmm11                         #117.22
        vmovhpd   (%rdx,%r10,8), %xmm11, %xmm10                 #117.22
        vmulpd    (%r15,%rdx), %xmm12, %xmm11                   #117.61
        vfmadd231pd (%r9,%rdx), %xmm6, %xmm11                   #117.61
        addq      $16, %r9                                      #107.9
        vfmadd231pd %xmm14, %xmm10, %xmm11                      #117.61
        addq      $16, %r15                                     #107.9
        vaddpd    %xmm5, %xmm11, %xmm5                          #117.61
        vmovupd   %xmm5, 8(%rsi,%rbx,8)                         #116.11
        addq      $2, %rbx                                      #107.9
        cmpq      %rdi, %rbx                                    #107.9
        jb        ..B3.146      # Prob 82%                      #107.9
                                # LOE rdx rcx rbx rsi rdi r9 r11 r15 eax r8d r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm6 xmm7 xmm8 xmm9 xmm12 xmm13 xmm14 xmm15
..B3.147:                       # Preds ..B3.146
        vmovsd    952(%rsp), %xmm9                              #
        vmovsd    960(%rsp), %xmm10                             #
        vmovsd    968(%rsp), %xmm11                             #
        vmovsd    976(%rsp), %xmm5                              #
        vmovsd    984(%rsp), %xmm6                              #
        movq      1016(%rsp), %r13                              #
        movl      2488(%rsp), %r10d                             #
        movl      2496(%rsp), %ebx                              #
        movq      2504(%rsp), %r12                              #
        movl      2480(%rsp), %edx                              #
                                # LOE rdi r11 r12 r13 eax edx ebx r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.148:                       # Preds ..B3.147 ..B3.369
        movl      %edi, %esi                                    #107.9
        lea       (%rax,%rsi), %ecx                             #107.9
        movl      %ecx, 2248(%rsp)                              #107.9
        cmpl      2168(%rsp), %esi                              #107.9
        jae       ..B3.366      # Prob 10%                      #107.9
                                # LOE rdi r11 r12 r13 eax edx ebx esi r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.149:                       # Preds ..B3.148
        addl      %eax, %r14d                                   #107.9
        lea       -2(%rdx), %r8d                                #111.25
        movslq    %eax, %rax                                    #113.11
        addl      %esi, %r14d                                   #107.9
        movl      2160(%rsp), %r15d                             #115.43
        vaddsd    %xmm5, %xmm10, %xmm0                          #117.61
        imull     %edx, %r15d                                   #115.43
        addl      %edx, %r15d                                   #115.43
        lea       (%r11,%rax,8), %rcx                           #116.11
        addl      %r10d, %r15d                                  #107.9
        lea       (%r13,%rax,8), %r11                           #116.24
        movslq    %ebx, %r13                                    #113.11
        imulq     %r12, %r13                                    #107.9
        movslq    %r10d, %r9                                    #112.11
        addq      %r12, %r13                                    #107.9
        movslq    %r15d, %r15                                   #115.11
        addq      %rax, %r13                                    #107.9
        addq      %rax, %r9                                     #107.9
        addq      %rax, %r15                                    #107.9
        movl      %ebx, 2496(%rsp)                              #115.11
        movq      %r12, 2504(%rsp)                              #115.11
        movl      %edx, 2480(%rsp)                              #115.11
        lea       1(%rdi,%r13), %r13                            #113.11
        movl      2248(%rsp), %r12d                             #115.11
        lea       1(%rdi,%r9), %r9                              #112.11
        movl      2168(%rsp), %ebx                              #115.11
        lea       1(%rdi,%r15), %rax                            #115.11
        movq      2184(%rsp), %r10                              #115.11
        .align    16,0x90
                                # LOE rax rcx rdi r9 r10 r11 r13 ebx esi r8d r12d r14d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.150:                       # Preds ..B3.150 ..B3.149
        cmpl      %r8d, %r12d                                   #116.11
        lea       1(%r14), %edx                                 #107.9
        vmulsd    (%r10,%rax,8), %xmm11, %xmm1                  #116.11
        lea       2(%r14), %r15d                                #111.38
        vmulsd    (%r10,%r13,8), %xmm0, %xmm2                   #116.11
        cmove     %edx, %r15d                                   #116.11
        incl      %esi                                          #107.9
        movslq    %r15d, %r15                                   #116.50
        incq      %r13                                          #107.9
        vfmadd231sd (%r10,%r9,8), %xmm9, %xmm2                  #116.11
        incq      %r9                                           #107.9
        vfmadd231sd (%r10,%r15,8), %xmm7, %xmm1                 #116.11
        movslq    %r14d, %r14                                   #116.37
        incq      %rax                                          #107.9
        vfmadd231sd 8(%r11,%rdi,8), %xmm6, %xmm1                #116.11
        incl      %r12d                                         #107.9
        vfmadd231sd (%r10,%r14,8), %xmm8, %xmm2                 #116.11
        movl      %edx, %r14d                                   #107.9
        vaddsd    %xmm2, %xmm1, %xmm3                           #116.11
        vmovsd    %xmm3, 8(%rcx,%rdi,8)                         #116.11
        incq      %rdi                                          #107.9
        cmpl      %ebx, %esi                                    #107.9
        jb        ..B3.150      # Prob 82%                      #107.9
                                # LOE rax rcx rdi r9 r10 r11 r13 ebx esi r8d r12d r14d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.151:                       # Preds ..B3.150
        movl      2496(%rsp), %ebx                              #
        incl      %ebx                                          #105.7
        movq      2504(%rsp), %r12                              #
        movl      2480(%rsp), %edx                              #
        cmpl      992(%rsp), %ebx                               #105.7
        jae       ..B3.365      # Prob 18%                      #105.7
                                # LOE rdx r12 edx ebx r12d dl dh r12b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.152:                       # Preds ..B3.151
        movl      %ebx, %r10d                                   #107.9
        imull     %edx, %r10d                                   #107.9
        lea       (%rdx,%r10), %r14d                            #107.9
        lea       1(%rdx,%r10), %edi                            #111.38
        jmp       ..B3.109      # Prob 100%                     #111.38
                                # LOE r12 edx ebx edi r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.153:                       # Preds ..B3.143
        incl      %ebx                                          #105.7
        cmpl      992(%rsp), %ebx                               #105.7
        jae       ..B3.365      # Prob 18%                      #105.7
                                # LOE r12 edx ebx xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.154:                       # Preds ..B3.153
        movl      %ebx, %r10d                                   #107.9
        imull     %edx, %r10d                                   #107.9
        lea       (%rdx,%r10), %r14d                            #107.9
        lea       1(%rdx,%r10), %edi                            #111.38
        jmp       ..B3.109      # Prob 100%                     #111.38
                                # LOE r12 edx ebx edi r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.155:                       # Preds ..B3.110
        cmpl      $1, 1080(%rsp)                                #115.24
        jne       ..B3.174      # Prob 50%                      #115.24
                                # LOE r11 r12 r13 edx ebx r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.156:                       # Preds ..B3.155
        cmpl      $8, %r9d                                      #107.9
        jl        ..B3.379      # Prob 10%                      #107.9
                                # LOE r11 r12 r13 edx ebx r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.157:                       # Preds ..B3.156
        cmpl      $15, %r9d                                     #107.9
        jl        ..B3.381      # Prob 10%                      #107.9
                                # LOE r11 r12 r13 edx ebx r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.158:                       # Preds ..B3.157
        lea       8(%r11), %rdi                                 #116.11
        andq      $31, %rdi                                     #107.9
        testl     %edi, %edi                                    #107.9
        je        ..B3.161      # Prob 50%                      #107.9
                                # LOE r11 r12 r13 edx ebx edi r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.159:                       # Preds ..B3.158
        testl     $7, %edi                                      #107.9
        jne       ..B3.379      # Prob 10%                      #107.9
                                # LOE r11 r12 r13 edx ebx edi r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.160:                       # Preds ..B3.159
        negl      %edi                                          #107.9
        addl      $32, %edi                                     #107.9
        shrl      $3, %edi                                      #107.9
                                # LOE r11 r12 r13 edx ebx edi r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.161:                       # Preds ..B3.160 ..B3.158
        lea       8(%rdi), %eax                                 #107.9
        cmpl      %eax, %r9d                                    #107.9
        jl        ..B3.379      # Prob 10%                      #107.9
                                # LOE r11 r12 r13 edx ebx edi r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.162:                       # Preds ..B3.161
        movl      %r9d, %eax                                    #107.9
        lea       (%r10,%rdx,2), %ecx                           #107.9
        subl      %edi, %eax                                    #107.9
        andl      $7, %eax                                      #107.9
        negl      %eax                                          #107.9
        addl      %r9d, %eax                                    #107.9
        movl      $0, 2224(%rsp)                                #107.9
        movq      $0, 2264(%rsp)                                #107.9
        testl     %edi, %edi                                    #107.9
        jbe       ..B3.166      # Prob 10%                      #107.9
                                # LOE r11 r12 r13 r14 eax edx ecx ebx edi r9d r10d r14d r14b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.163:                       # Preds ..B3.162
        movslq    %ebx, %r8                                     #114.11
        lea       -2(%rdx), %esi                                #111.25
        imulq     %r12, %r8                                     #107.9
        vaddsd    %xmm11, %xmm5, %xmm0                          #117.61
        movl      %esi, 2304(%rsp)                              #111.25
        lea       1(%r12,%r8), %r15                             #114.11
        movslq    %ecx, %r8                                     #113.11
        movslq    %r10d, %rsi                                   #112.11
        incq      %r8                                           #113.11
        movl      %r9d, 2520(%rsp)                              #112.11
        incq      %rsi                                          #112.11
        movl      %eax, 2544(%rsp)                              #112.11
        movl      %r10d, 2488(%rsp)                             #112.11
        movl      %ebx, 2496(%rsp)                              #112.11
        movl      %edx, 2480(%rsp)                              #112.11
        movl      %ecx, 2552(%rsp)                              #112.11
        movq      %r12, 2504(%rsp)                              #112.11
        movl      2304(%rsp), %eax                              #112.11
        movq      2264(%rsp), %rdx                              #112.11
        movl      %r14d, %r10d                                  #112.11
        movl      2224(%rsp), %r9d                              #112.11
        movq      2184(%rsp), %rbx                              #112.11
        .align    16,0x90
                                # LOE rdx rbx rsi r8 r11 r13 r15 eax edi r9d r10d r14d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.164:                       # Preds ..B3.164 ..B3.163
        cmpl      %eax, %r9d                                    #116.11
        lea       1(%r10), %ecx                                 #107.9
        vmulsd    (%rbx,%r8,8), %xmm10, %xmm1                   #116.11
        lea       2(%r10), %r12d                                #111.38
        vmulsd    (%rbx,%r15,8), %xmm0, %xmm2                   #116.11
        cmove     %ecx, %r12d                                   #116.11
        incl      %r9d                                          #107.9
        movslq    %r12d, %r12                                   #116.50
        incq      %r15                                          #107.9
        vfmadd231sd (%rbx,%rsi,8), %xmm9, %xmm2                 #116.11
        incq      %rsi                                          #107.9
        vfmadd231sd (%rbx,%r12,8), %xmm7, %xmm1                 #116.11
        movslq    %r10d, %r10                                   #116.37
        incq      %r8                                           #107.9
        vfmadd231sd 8(%r13,%rdx,8), %xmm6, %xmm1                #116.11
        vfmadd231sd (%rbx,%r10,8), %xmm8, %xmm2                 #116.11
        movl      %ecx, %r10d                                   #107.9
        vaddsd    %xmm2, %xmm1, %xmm3                           #116.11
        vmovsd    %xmm3, 8(%r11,%rdx,8)                         #116.11
        incq      %rdx                                          #107.9
        cmpl      %edi, %r9d                                    #107.9
        jb        ..B3.164      # Prob 82%                      #107.9
                                # LOE rdx rbx rsi r8 r11 r13 r15 eax edi r9d r10d r14d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.165:                       # Preds ..B3.164
        movl      2520(%rsp), %r9d                              #
        movl      2544(%rsp), %eax                              #
        movl      2552(%rsp), %ecx                              #
        movl      2488(%rsp), %r10d                             #
        movl      2496(%rsp), %ebx                              #
        movq      2504(%rsp), %r12                              #
        movl      2480(%rsp), %edx                              #
                                # LOE r11 r12 r13 eax edx ecx ebx edi r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.166:                       # Preds ..B3.162 ..B3.165 ..B3.381
        vbroadcastsd %xmm5, %ymm14                              #98.1
        lea       1(%rdi), %r8d                                 #116.11
        vbroadcastsd %xmm11, %ymm13                             #98.1
        vmovd     %r9d, %xmm15                                  #111.25
        vmovsd    %xmm5, 976(%rsp)                              #107.9
        vmovsd    %xmm6, 984(%rsp)                              #107.9
        vmovsd    %xmm7, 936(%rsp)                              #107.9
        vaddpd    %ymm13, %ymm14, %ymm4                         #117.61
        vmovd     %r8d, %xmm13                                  #116.11
        vmovsd    %xmm8, 944(%rsp)                              #107.9
        vmovsd    %xmm9, 952(%rsp)                              #107.9
        movl      $8, %esi                                      #116.11
        lea       1(%rdi,%r14), %r15d                           #107.9
        vmovsd    %xmm10, 960(%rsp)                             #107.9
        vmovsd    %xmm11, 968(%rsp)                             #107.9
        vmovd     %esi, %xmm14                                  #116.11
        vbroadcastsd %xmm6, %ymm3                               #98.1
        vbroadcastsd %xmm8, %ymm2                               #98.1
        vbroadcastsd %xmm7, %ymm1                               #98.1
        vbroadcastsd %xmm9, %ymm12                              #98.1
        vbroadcastsd %xmm10, %ymm0                              #98.1
        vmovapd   %ymm4, %ymm6                                  #107.9
        vpbroadcastd %xmm13, %ymm4                              #116.11
        lea       2(%rdi,%r14), %esi                            #111.38
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm4, %ymm13    #116.11
        vmovd     %r15d, %xmm4                                  #107.9
        vmovdqu   %ymm13, 352(%rsp)                             #116.11
        vpbroadcastd %xmm4, %ymm13                              #107.9
        vmovd     %esi, %xmm4                                   #111.38
        vpbroadcastd %xmm15, %ymm15                             #111.25
        vpbroadcastd %xmm4, %ymm4                               #111.38
        vpbroadcastd %xmm14, %ymm14                             #116.11
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm13, %ymm13   #107.9
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm4, %ymm4     #111.38
        vmovdqu   %ymm15, 1184(%rsp)                            #107.9
        vmovdqu   352(%rsp), %ymm5                              #107.9
        movq      2184(%rsp), %r8                               #107.9
        movl      %edi, %edi                                    #107.9
        movslq    %eax, %rsi                                    #107.9
        movl      %edx, 2480(%rsp)                              #107.9
                                # LOE rsi rdi r8 r11 r12 r13 eax ecx ebx r9d r10d r14d ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm12 ymm13 ymm14
..B3.167:                       # Preds ..B3.167 ..B3.166
        vpcmpeqd  1184(%rsp), %ymm5, %ymm10                     #111.25
        movl      %edi, %r15d                                   #110.11
        vpblendvb %ymm10, %ymm13, %ymm4, %ymm8                  #111.38
        vpaddd    %ymm14, %ymm5, %ymm5                          #116.11
        vpaddd    %ymm14, %ymm4, %ymm4                          #111.38
        vpcmpeqd  %ymm7, %ymm7, %ymm7                           #116.50
        lea       (%r14,%r15), %edx                             #107.9
        vxorpd    %ymm10, %ymm10, %ymm10                        #116.50
        vmovdqa   %ymm7, %ymm9                                  #116.50
        vmovdqa   %ymm7, %ymm15                                 #116.50
        movslq    %edx, %rdx                                    #116.37
        vgatherdpd %ymm9, (%r8,%xmm8,8), %ymm10                 #116.50
        vextracti128 $1, %ymm8, %xmm11                          #116.50
        vmulpd    %ymm10, %ymm1, %ymm8                          #117.61
        vxorpd    %ymm10, %ymm10, %ymm10                        #116.50
        vgatherdpd %ymm15, (%r8,%xmm11,8), %ymm10               #116.50
        vfmadd231pd (%r8,%rdx,8), %ymm2, %ymm8                  #117.61
        vmulpd    %ymm10, %ymm1, %ymm11                         #117.61
        vfmadd231pd 8(%r13,%rdi,8), %ymm3, %ymm8                #117.61
        vfmadd231pd 32(%r8,%rdx,8), %ymm2, %ymm11               #117.61
        vxorpd    %ymm15, %ymm15, %ymm15                        #117.48
        lea       (%r10,%r15), %edx                             #107.9
        vmovdqa   %ymm7, %ymm9                                  #117.48
        addl      %ecx, %r15d                                   #107.9
        vxorpd    %ymm10, %ymm10, %ymm10                        #117.48
        movslq    %r15d, %r15                                   #113.11
        movslq    %edx, %rdx                                    #112.11
        vfmadd231pd 40(%r13,%rdi,8), %ymm3, %ymm11              #117.61
        vgatherdpd %ymm9, (%r8,%xmm13,8), %ymm15                #117.48
        vextracti128 $1, %ymm13, %xmm9                          #117.48
        vpaddd    %ymm14, %ymm13, %ymm13                        #107.9
        vgatherdpd %ymm7, (%r8,%xmm9,8), %ymm10                 #117.48
        vmulpd    8(%r8,%r15,8), %ymm0, %ymm9                   #117.61
        vfmadd231pd 8(%r8,%rdx,8), %ymm12, %ymm9                #117.61
        vfmadd231pd %ymm6, %ymm15, %ymm9                        #117.61
        vaddpd    %ymm8, %ymm9, %ymm7                           #117.61
        vmulpd    40(%r8,%r15,8), %ymm0, %ymm8                  #117.61
        vfmadd231pd 40(%r8,%rdx,8), %ymm12, %ymm8               #117.61
        vmovupd   %ymm7, 8(%r11,%rdi,8)                         #116.11
        vfmadd231pd %ymm6, %ymm10, %ymm8                        #117.61
        vaddpd    %ymm11, %ymm8, %ymm10                         #117.61
        vmovupd   %ymm10, 40(%r11,%rdi,8)                       #116.11
        addq      $8, %rdi                                      #107.9
        cmpq      %rsi, %rdi                                    #107.9
        jb        ..B3.167      # Prob 82%                      #107.9
                                # LOE rsi rdi r8 r11 r12 r13 eax ecx ebx r9d r10d r14d ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm12 ymm13 ymm14
..B3.168:                       # Preds ..B3.167
        vmovsd    936(%rsp), %xmm7                              #
        vmovsd    944(%rsp), %xmm8                              #
        vmovsd    952(%rsp), %xmm9                              #
        vmovsd    960(%rsp), %xmm10                             #
        vmovsd    968(%rsp), %xmm11                             #
        vmovsd    976(%rsp), %xmm5                              #
        vmovsd    984(%rsp), %xmm6                              #
        movl      2480(%rsp), %edx                              #
                                # LOE r11 r12 r13 eax edx ebx r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.169:                       # Preds ..B3.168 ..B3.379
        movq      $0, 2232(%rsp)                                #107.9
        lea       1(%rax), %ecx                                 #107.9
        xorl      %edi, %edi                                    #107.9
        cmpl      %ecx, %r9d                                    #107.9
        jb        ..B3.376      # Prob 10%                      #107.9
                                # LOE r11 r12 r13 eax edx ebx edi r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.170:                       # Preds ..B3.169
        movslq    %ebx, %r8                                     #114.11
        addl      %eax, %r14d                                   #107.9
        imulq     %r12, %r8                                     #107.9
        vaddsd    %xmm11, %xmm5, %xmm0                          #117.61
        movslq    %r10d, %r10                                   #112.11
        subl      %eax, %r9d                                    #107.9
        movslq    %eax, %rax                                    #114.11
        lea       (%r10,%rdx,2), %r15d                          #107.9
        addq      %r12, %r8                                     #107.9
        lea       -2(%rdx), %esi                                #111.25
        movq      %r12, 2504(%rsp)                              #113.11
        movl      %edx, 2480(%rsp)                              #113.11
        movslq    %r15d, %r15                                   #113.11
        lea       (%r13,%rax,8), %rcx                           #116.24
        movl      %ebx, 2496(%rsp)                              #113.11
        lea       (%r11,%rax,8), %r13                           #116.11
        movq      2232(%rsp), %rdx                              #113.11
        lea       1(%r8,%rax), %r8                              #114.11
        movq      2184(%rsp), %r12                              #113.11
        lea       1(%r10,%rax), %r11                            #112.11
        lea       1(%r15,%rax), %r10                            #113.11
        .align    16,0x90
                                # LOE rdx rcx r8 r10 r11 r12 r13 eax esi edi r9d r14d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.171:                       # Preds ..B3.171 ..B3.170
        cmpl      %esi, %eax                                    #116.11
        lea       1(%r14), %ebx                                 #107.9
        vmulsd    (%r12,%r10,8), %xmm10, %xmm1                  #116.11
        lea       2(%r14), %r15d                                #111.38
        vmulsd    (%r12,%r8,8), %xmm0, %xmm2                    #116.11
        cmove     %ebx, %r15d                                   #116.11
        incl      %edi                                          #107.9
        movslq    %r15d, %r15                                   #116.50
        incq      %r8                                           #107.9
        vfmadd231sd (%r12,%r11,8), %xmm9, %xmm2                 #116.11
        incq      %r11                                          #107.9
        vfmadd231sd (%r12,%r15,8), %xmm7, %xmm1                 #116.11
        movslq    %r14d, %r14                                   #116.37
        incq      %r10                                          #107.9
        vfmadd231sd 8(%rcx,%rdx,8), %xmm6, %xmm1                #116.11
        incl      %eax                                          #107.9
        vfmadd231sd (%r12,%r14,8), %xmm8, %xmm2                 #116.11
        movl      %ebx, %r14d                                   #107.9
        vaddsd    %xmm2, %xmm1, %xmm3                           #116.11
        vmovsd    %xmm3, 8(%r13,%rdx,8)                         #116.11
        incq      %rdx                                          #107.9
        cmpl      %r9d, %edi                                    #107.9
        jb        ..B3.171      # Prob 82%                      #107.9
                                # LOE rdx rcx r8 r10 r11 r12 r13 eax esi edi r9d r14d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.172:                       # Preds ..B3.171
        movl      2496(%rsp), %ebx                              #
        incl      %ebx                                          #105.7
        movq      2504(%rsp), %r12                              #
        movl      2480(%rsp), %edx                              #
        cmpl      992(%rsp), %ebx                               #105.7
        jae       ..B3.356      # Prob 18%                      #105.7
                                # LOE rdx r12 edx ebx r12d dl dh r12b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.173:                       # Preds ..B3.172
        movl      %ebx, %r10d                                   #107.9
        imull     %edx, %r10d                                   #107.9
        lea       (%rdx,%r10), %r14d                            #107.9
        lea       1(%rdx,%r10), %edi                            #111.38
        jmp       ..B3.109      # Prob 100%                     #111.38
                                # LOE r12 edx ebx edi r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.174:                       # Preds ..B3.155
        cmpl      $8, %r9d                                      #107.9
        jl        ..B3.389      # Prob 10%                      #107.9
                                # LOE r11 r12 r13 edx ebx r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.175:                       # Preds ..B3.174
        cmpl      $15, %r9d                                     #107.9
        jl        ..B3.391      # Prob 10%                      #107.9
                                # LOE r11 r12 r13 edx ebx r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.176:                       # Preds ..B3.175
        lea       8(%r11), %rcx                                 #116.11
        andq      $31, %rcx                                     #107.9
        testl     %ecx, %ecx                                    #107.9
        je        ..B3.179      # Prob 50%                      #107.9
                                # LOE r11 r12 r13 edx ecx ebx r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.177:                       # Preds ..B3.176
        testb     $7, %cl                                       #107.9
        jne       ..B3.389      # Prob 10%                      #107.9
                                # LOE r11 r12 r13 edx ecx ebx r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.178:                       # Preds ..B3.177
        negl      %ecx                                          #107.9
        addl      $32, %ecx                                     #107.9
        shrl      $3, %ecx                                      #107.9
                                # LOE r11 r12 r13 edx ecx ebx r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.179:                       # Preds ..B3.178 ..B3.176
        lea       8(%rcx), %eax                                 #107.9
        cmpl      %eax, %r9d                                    #107.9
        jl        ..B3.389      # Prob 10%                      #107.9
                                # LOE r11 r12 r13 edx ecx ebx r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.180:                       # Preds ..B3.179
        movl      2160(%rsp), %r8d                              #115.43
        movl      %r9d, %edi                                    #107.9
        imull     %edx, %r8d                                    #115.43
        subl      %ecx, %edi                                    #107.9
        andl      $7, %edi                                      #107.9
        addl      %edx, %r8d                                    #115.43
        negl      %edi                                          #107.9
        lea       (%r10,%rdx,2), %r15d                          #107.9
        addl      %r10d, %r8d                                   #107.9
        addl      %r9d, %edi                                    #107.9
        movl      $0, 2216(%rsp)                                #107.9
        movl      %r14d, 2200(%rsp)                             #107.9
        movq      $0, 2192(%rsp)                                #107.9
        movslq    %r15d, %r15                                   #113.11
        movslq    %r8d, %r8                                     #115.11
        movslq    %r10d, %rsi                                   #112.11
        testl     %ecx, %ecx                                    #107.9
        jbe       ..B3.184      # Prob 10%                      #107.9
                                # LOE rsi r8 r11 r12 r13 r14 r15 edx ecx ebx edi r9d r10d r14d r14b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.181:                       # Preds ..B3.180
        movl      %r14d, 2560(%rsp)                             #112.11
        lea       -2(%rdx), %eax                                #111.25
        movl      %eax, 2288(%rsp)                              #111.25
        movslq    %ebx, %rax                                    #114.11
        imulq     %r12, %rax                                    #107.9
        movl      %edi, 2568(%rsp)                              #112.11
        lea       1(%r12,%rax), %rax                            #114.11
        movq      %rax, 2320(%rsp)                              #114.11
        lea       1(%r15), %rax                                 #113.11
        movq      %rax, 2328(%rsp)                              #113.11
        lea       1(%r8), %rax                                  #115.11
        movq      %rax, 2296(%rsp)                              #115.11
        lea       1(%rsi), %rax                                 #112.11
        movq      %r8, 2576(%rsp)                               #112.11
        movq      %r15, 2584(%rsp)                              #112.11
        movl      %r9d, 2520(%rsp)                              #112.11
        movl      %r10d, 2488(%rsp)                             #112.11
        movl      %ebx, 2496(%rsp)                              #112.11
        movq      %r12, 2504(%rsp)                              #112.11
        movl      %edx, 2480(%rsp)                              #112.11
        movq      %rsi, 2592(%rsp)                              #112.11
        movq      %rax, %r10                                    #112.11
        movq      2296(%rsp), %r15                              #112.11
        movq      2328(%rsp), %r9                               #112.11
        movq      2320(%rsp), %rdi                              #112.11
        movl      2288(%rsp), %edx                              #112.11
        movq      2192(%rsp), %rbx                              #112.11
        movl      2200(%rsp), %r14d                             #112.11
        movl      2216(%rsp), %r12d                             #112.11
        movq      2184(%rsp), %r8                               #112.11
        .align    16,0x90
                                # LOE rbx rdi r8 r9 r10 r11 r13 r15 edx ecx r12d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.182:                       # Preds ..B3.182 ..B3.181
        vmulsd    (%r8,%r9,8), %xmm10, %xmm0                    #116.11
        lea       1(%r14), %esi                                 #107.9
        vmulsd    (%r8,%r10,8), %xmm9, %xmm1                    #116.11
        vmulsd    8(%r13,%rbx,8), %xmm6, %xmm3                  #116.11
        vfmadd231sd (%r8,%r15,8), %xmm11, %xmm0                 #116.11
        vfmadd231sd (%r8,%rdi,8), %xmm5, %xmm1                  #116.11
        cmpl      %edx, %r12d                                   #116.11
        lea       2(%r14), %eax                                 #111.38
        movslq    %r14d, %r14                                   #116.37
        vaddsd    %xmm1, %xmm0, %xmm2                           #116.11
        vfmadd231sd (%r8,%r14,8), %xmm8, %xmm3                  #116.11
        cmove     %esi, %eax                                    #116.11
        incl      %r12d                                         #107.9
        movslq    %eax, %rax                                    #116.50
        incq      %r10                                          #107.9
        incq      %r9                                           #107.9
        incq      %rdi                                          #107.9
        incq      %r15                                          #107.9
        movl      %esi, %r14d                                   #107.9
        vfmadd231sd (%r8,%rax,8), %xmm7, %xmm3                  #116.11
        vaddsd    %xmm3, %xmm2, %xmm4                           #116.11
        vmovsd    %xmm4, 8(%r11,%rbx,8)                         #116.11
        incq      %rbx                                          #107.9
        cmpl      %ecx, %r12d                                   #107.9
        jb        ..B3.182      # Prob 82%                      #107.9
                                # LOE rbx rdi r8 r9 r10 r11 r13 r15 edx ecx r12d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.183:                       # Preds ..B3.182
        movl      2560(%rsp), %r14d                             #
        movl      2568(%rsp), %edi                              #
        movq      2576(%rsp), %r8                               #
        movq      2584(%rsp), %r15                              #
        movq      2592(%rsp), %rsi                              #
        movl      2520(%rsp), %r9d                              #
        movl      2488(%rsp), %r10d                             #
        movl      2496(%rsp), %ebx                              #
        movq      2504(%rsp), %r12                              #
        movl      2480(%rsp), %edx                              #
                                # LOE rsi r8 r11 r12 r13 r15 edx ecx ebx edi r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.184:                       # Preds ..B3.180 ..B3.183 ..B3.391
        movl      $8, %eax                                      #116.11
        vmovd     %r9d, %xmm15                                  #111.25
        vbroadcastsd %xmm5, %ymm13                              #98.1
        vbroadcastsd %xmm10, %ymm14                             #98.1
        vbroadcastsd %xmm11, %ymm12                             #98.1
        vmovd     %eax, %xmm4                                   #116.11
        vmovsd    %xmm9, 952(%rsp)                              #107.9
        vmovsd    %xmm10, 960(%rsp)                             #107.9
        vmovupd   %ymm13, 320(%rsp)                             #98.1
        lea       1(%rcx), %eax                                 #116.11
        vmovupd   %ymm14, 448(%rsp)                             #98.1
        vmovupd   %ymm12, 224(%rsp)                             #98.1
        vmovsd    %xmm11, 968(%rsp)                             #107.9
        vmovd     %eax, %xmm13                                  #116.11
        vmovsd    %xmm7, 936(%rsp)                              #107.9
        vmovsd    %xmm8, 944(%rsp)                              #107.9
        vpbroadcastd %xmm4, %ymm14                              #116.11
        lea       1(%rcx,%r14), %eax                            #107.9
        vpbroadcastd %xmm13, %ymm12                             #116.11
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm12, %ymm13   #116.11
        vmovsd    %xmm5, 976(%rsp)                              #107.9
        vmovd     %eax, %xmm4                                   #107.9
        vmovsd    %xmm6, 984(%rsp)                              #107.9
        vpbroadcastd %xmm4, %ymm12                              #107.9
        lea       2(%rcx,%r14), %eax                            #111.38
        movl      %ecx, %ecx                                    #107.9
        vpbroadcastd %xmm15, %ymm15                             #111.25
        movl      %edx, 2480(%rsp)                              #107.9
        vmovd     %eax, %xmm4                                   #111.38
        vpbroadcastd %xmm4, %ymm4                               #111.38
        lea       1(%rcx,%r8), %r8                              #115.11
        vbroadcastsd %xmm6, %ymm3                               #98.1
        lea       1(%rcx,%r15), %r15                            #113.11
        vbroadcastsd %xmm8, %ymm2                               #98.1
        vbroadcastsd %xmm7, %ymm1                               #98.1
        vbroadcastsd %xmm9, %ymm0                               #98.1
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm12, %ymm12   #107.9
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm4, %ymm4     #111.38
        vmovdqu   %ymm15, 1216(%rsp)                            #107.9
        vmovdqu   %ymm14, 1248(%rsp)                            #107.9
        vmovupd   224(%rsp), %ymm9                              #107.9
        vmovupd   320(%rsp), %ymm10                             #107.9
        vmovupd   448(%rsp), %ymm11                             #107.9
        movq      2184(%rsp), %rdx                              #107.9
        lea       1(%rcx,%rsi), %rsi                            #112.11
        movslq    %edi, %rax                                    #107.9
        movq      %r12, 2504(%rsp)                              #107.9
                                # LOE rax rdx rcx rsi r8 r11 r13 r15 ebx edi r9d r10d r14d ymm0 ymm1 ymm2 ymm3 ymm4 ymm9 ymm10 ymm11 ymm12 ymm13
..B3.185:                       # Preds ..B3.185 ..B3.184
        vpcmpeqd  1216(%rsp), %ymm13, %ymm14                    #111.25
        movl      %ecx, %r12d                                   #110.11
        vpblendvb %ymm14, %ymm12, %ymm4, %ymm6                  #111.38
        addl      %r14d, %r12d                                  #107.9
        vmovdqu   1248(%rsp), %ymm5                             #116.11
        vpcmpeqd  %ymm7, %ymm7, %ymm7                           #116.50
        vxorpd    %ymm14, %ymm14, %ymm14                        #116.50
        vmovdqa   %ymm7, %ymm15                                 #116.50
        vpaddd    %ymm5, %ymm13, %ymm13                         #116.11
        vpaddd    %ymm5, %ymm4, %ymm4                           #111.38
        movslq    %r12d, %r12                                   #116.37
        vextracti128 $1, %ymm6, %xmm8                           #116.50
        vgatherdpd %ymm15, (%rdx,%xmm6,8), %ymm14               #116.50
        vxorpd    %ymm15, %ymm15, %ymm15                        #116.50
        vmovdqa   %ymm7, %ymm6                                  #116.50
        vgatherdpd %ymm6, (%rdx,%xmm8,8), %ymm15                #116.50
        vmulpd    %ymm14, %ymm1, %ymm14                         #117.61
        vmulpd    %ymm15, %ymm1, %ymm8                          #117.61
        vfmadd231pd (%rdx,%r12,8), %ymm2, %ymm14                #117.61
        vfmadd231pd 32(%rdx,%r12,8), %ymm2, %ymm8               #117.61
        vfmadd231pd 8(%r13,%rcx,8), %ymm3, %ymm14               #117.61
        vfmadd231pd 40(%r13,%rcx,8), %ymm3, %ymm8               #117.61
        vxorpd    %ymm6, %ymm6, %ymm6                           #117.48
        vmovdqa   %ymm7, %ymm15                                 #117.48
        vgatherdpd %ymm15, (%rdx,%xmm12,8), %ymm6               #117.48
        vmulpd    %ymm6, %ymm10, %ymm15                         #117.61
        vextracti128 $1, %ymm12, %xmm6                          #117.48
        vpaddd    %ymm5, %ymm12, %ymm12                         #107.9
        vfmadd231pd (%rdx,%rsi,8), %ymm0, %ymm15                #117.61
        vxorpd    %ymm5, %ymm5, %ymm5                           #117.48
        vgatherdpd %ymm7, (%rdx,%xmm6,8), %ymm5                 #117.48
        vmulpd    %ymm5, %ymm10, %ymm6                          #117.61
        vmulpd    (%rdx,%r8,8), %ymm9, %ymm5                    #117.61
        vfmadd231pd 32(%rdx,%rsi,8), %ymm0, %ymm6               #117.61
        vfmadd231pd (%rdx,%r15,8), %ymm11, %ymm5                #117.61
        vaddpd    %ymm5, %ymm15, %ymm7                          #117.61
        addq      $8, %rsi                                      #107.9
        vaddpd    %ymm14, %ymm7, %ymm15                         #117.61
        vmulpd    32(%rdx,%r8,8), %ymm9, %ymm14                 #117.61
        vfmadd231pd 32(%rdx,%r15,8), %ymm11, %ymm14             #117.61
        addq      $8, %r15                                      #107.9
        vmovupd   %ymm15, 8(%r11,%rcx,8)                        #116.11
        vaddpd    %ymm14, %ymm6, %ymm6                          #117.61
        vaddpd    %ymm8, %ymm6, %ymm8                           #117.61
        addq      $8, %r8                                       #107.9
        vmovupd   %ymm8, 40(%r11,%rcx,8)                        #116.11
        addq      $8, %rcx                                      #107.9
        cmpq      %rax, %rcx                                    #107.9
        jb        ..B3.185      # Prob 82%                      #107.9
                                # LOE rax rdx rcx rsi r8 r11 r13 r15 ebx edi r9d r10d r14d ymm0 ymm1 ymm2 ymm3 ymm4 ymm9 ymm10 ymm11 ymm12 ymm13
..B3.186:                       # Preds ..B3.185
        vmovsd    936(%rsp), %xmm7                              #
        vmovsd    944(%rsp), %xmm8                              #
        vmovsd    952(%rsp), %xmm9                              #
        vmovsd    960(%rsp), %xmm10                             #
        vmovsd    968(%rsp), %xmm11                             #
        vmovsd    976(%rsp), %xmm5                              #
        vmovsd    984(%rsp), %xmm6                              #
        movq      2504(%rsp), %r12                              #
        movl      2480(%rsp), %edx                              #
                                # LOE r11 r12 r13 edx ebx edi r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.187:                       # Preds ..B3.186 ..B3.389
        lea       1(%rdi), %ecx                                 #107.9
        cmpl      %ecx, %r9d                                    #107.9
        jb        ..B3.197      # Prob 50%                      #107.9
                                # LOE r11 r12 r13 edx ecx ebx edi r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.188:                       # Preds ..B3.187
        movl      %r9d, %eax                                    #107.9
        subl      %edi, %eax                                    #107.9
        movl      %eax, 2176(%rsp)                              #107.9
        cmpl      $2, %eax                                      #107.9
        jl        ..B3.387      # Prob 10%                      #107.9
                                # LOE r11 r12 r13 edx ecx ebx edi r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.189:                       # Preds ..B3.188
        vmovd     %ecx, %xmm12                                  #116.11
        movl      $2, %ecx                                      #116.11
        movl      2160(%rsp), %r15d                             #115.43
        lea       1(%rdi,%r14), %r8d                            #107.9
        imull     %edx, %r15d                                   #115.43
        lea       2(%rdi), %esi                                 #116.11
        vmovddup  %xmm9, %xmm1                                  #98.1
        vmovd     %r9d, %xmm2                                   #111.25
        vmovd     %ecx, %xmm14                                  #116.11
        vpxor     %xmm13, %xmm13, %xmm13                        #116.11
        vmovupd   %xmm1, 672(%rsp)                              #98.1
        vmovddup  %xmm10, %xmm15                                #98.1
        vpbroadcastd %xmm14, %xmm1                              #116.11
        vmovd     %r8d, %xmm14                                  #107.9
        incl      %r8d                                          #107.9
        lea       2(%rdi,%r14), %eax                            #111.38
        movslq    %r10d, %r10                                   #112.11
        addl      %edx, %r15d                                   #115.43
        vmovupd   %xmm15, 640(%rsp)                             #98.1
        vmovd     %esi, %xmm15                                  #116.11
        vmovdqu   %xmm1, 688(%rsp)                              #116.11
        addl      %r10d, %r15d                                  #107.9
        vmovd     %r8d, %xmm1                                   #107.9
        lea       (%r10,%rdx,2), %r8d                           #107.9
        vpunpckldq %xmm15, %xmm12, %xmm12                       #116.11
        lea       (%rdi,%r14), %ecx                             #107.9
        vpunpckldq %xmm1, %xmm14, %xmm15                        #107.9
        vmovd     %eax, %xmm14                                  #111.38
        incl      %eax                                          #111.38
        movslq    %edi, %rdi                                    #112.11
        movslq    %r15d, %r15                                   #115.11
        movslq    %r8d, %r8                                     #113.11
        vpunpcklqdq %xmm13, %xmm15, %xmm1                       #107.9
        vmovd     %eax, %xmm15                                  #111.38
        movl      2176(%rsp), %r9d                              #107.9
        lea       1(%r10,%rdi), %rsi                            #112.11
        vpunpckldq %xmm15, %xmm14, %xmm14                       #111.38
        lea       1(%r15,%rdi), %rax                            #115.11
        movq      $0, 888(%rsp)                                 #107.9
        lea       (%r11,%rdi,8), %r15                           #116.11
        movq      %r15, 920(%rsp)                               #116.11
        lea       (%r13,%rdi,8), %r15                           #116.24
        movq      %r15, 904(%rsp)                               #116.24
        andl      $-2, %r9d                                     #107.9
        vmovsd    %xmm8, 944(%rsp)                              #116.24
        lea       1(%r8,%rdi), %r8                              #113.11
        vmovsd    %xmm9, 952(%rsp)                              #116.24
        vmovsd    %xmm6, 984(%rsp)                              #116.24
        movl      %r10d, 2488(%rsp)                             #116.24
        movl      %ebx, 2496(%rsp)                              #116.24
        movl      %edx, 2480(%rsp)                              #116.24
        vpbroadcastd %xmm2, %xmm2                               #111.25
        vmovddup  %xmm6, %xmm3                                  #98.1
        vmovddup  %xmm8, %xmm4                                  #98.1
        vmovddup  %xmm7, %xmm0                                  #98.1
        movslq    %r9d, %r9                                     #107.9
        vpunpcklqdq %xmm13, %xmm12, %xmm12                      #116.11
        vpunpcklqdq %xmm13, %xmm14, %xmm13                      #111.38
        vmovddup  %xmm5, %xmm15                                 #98.1
        vmovddup  %xmm11, %xmm14                                #98.1
        shlq      $3, %rsi                                      #117.35
        shlq      $3, %r8                                       #117.22
        shlq      $3, %rax                                      #117.61
        movq      920(%rsp), %r15                               #116.24
        vmovupd   640(%rsp), %xmm6                              #116.24
        vmovupd   672(%rsp), %xmm8                              #116.24
        vmovdqu   688(%rsp), %xmm9                              #116.24
        movq      904(%rsp), %rbx                               #116.24
        movq      888(%rsp), %r10                               #116.24
        movq      2184(%rsp), %rdx                              #116.24
        vmovsd    %xmm10, 960(%rsp)                             #116.24
        vmovsd    %xmm11, 968(%rsp)                             #116.24
        vmovsd    %xmm5, 976(%rsp)                              #116.24
        movq      %r11, 1024(%rsp)                              #116.24
        movq      %r13, 1016(%rsp)                              #116.24
        movq      %r12, 2504(%rsp)                              #116.24
                                # LOE rax rdx rbx rsi r8 r9 r10 r15 ecx edi r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm6 xmm7 xmm8 xmm9 xmm12 xmm13 xmm14 xmm15
..B3.190:                       # Preds ..B3.190 ..B3.189
        vpcmpeqd  %xmm2, %xmm12, %xmm10                         #111.25
        movl      %r10d, %r11d                                  #116.37
        vpblendvb %xmm10, %xmm1, %xmm13, %xmm11                 #111.38
        addl      %ecx, %r11d                                   #116.37
        vpaddd    %xmm9, %xmm12, %xmm12                         #116.11
        vpaddd    %xmm9, %xmm13, %xmm13                         #111.38
        vmovd     %xmm11, %r13                                  #116.50
        movslq    %r13d, %r12                                   #116.50
        sarq      $32, %r13                                     #116.50
        movslq    %r11d, %r11                                   #116.37
        vmovq     (%rdx,%r12,8), %xmm5                          #116.50
        vmovhpd   (%rdx,%r13,8), %xmm5, %xmm10                  #116.50
        vmulpd    %xmm10, %xmm0, %xmm5                          #117.61
        vfmadd231pd (%rdx,%r11,8), %xmm4, %xmm5                 #117.61
        vmovd     %xmm1, %r11                                   #117.48
        vpaddd    %xmm9, %xmm1, %xmm1                           #107.9
        vfmadd231pd 8(%rbx,%r10,8), %xmm3, %xmm5                #117.61
        movslq    %r11d, %r12                                   #117.48
        sarq      $32, %r11                                     #117.48
        vmovq     (%rdx,%r12,8), %xmm11                         #117.48
        vmovhpd   (%rdx,%r11,8), %xmm11, %xmm10                 #117.48
        vmulpd    %xmm10, %xmm15, %xmm11                        #117.61
        vmulpd    (%rax,%rdx), %xmm14, %xmm10                   #117.61
        vfmadd231pd (%rsi,%rdx), %xmm8, %xmm11                  #117.61
        vfmadd231pd (%r8,%rdx), %xmm6, %xmm10                   #117.61
        vaddpd    %xmm10, %xmm11, %xmm11                        #117.61
        vaddpd    %xmm5, %xmm11, %xmm5                          #117.61
        vmovupd   %xmm5, 8(%r15,%r10,8)                         #116.11
        addq      $2, %r10                                      #107.9
        addq      $16, %rsi                                     #107.9
        addq      $16, %r8                                      #107.9
        addq      $16, %rax                                     #107.9
        cmpq      %r9, %r10                                     #107.9
        jb        ..B3.190      # Prob 82%                      #107.9
                                # LOE rax rdx rbx rsi r8 r9 r10 r15 ecx edi r14d xmm0 xmm1 xmm2 xmm3 xmm4 xmm6 xmm7 xmm8 xmm9 xmm12 xmm13 xmm14 xmm15
..B3.191:                       # Preds ..B3.190
        vmovsd    944(%rsp), %xmm8                              #
        vmovsd    952(%rsp), %xmm9                              #
        vmovsd    960(%rsp), %xmm10                             #
        vmovsd    968(%rsp), %xmm11                             #
        vmovsd    976(%rsp), %xmm5                              #
        vmovsd    984(%rsp), %xmm6                              #
        movq      1024(%rsp), %r11                              #
        movq      1016(%rsp), %r13                              #
        movl      2488(%rsp), %r10d                             #
        movl      2496(%rsp), %ebx                              #
        movq      2504(%rsp), %r12                              #
        movl      2480(%rsp), %edx                              #
                                # LOE r9 r11 r12 r13 edx ebx edi r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.192:                       # Preds ..B3.191 ..B3.387
        movl      %r9d, 2280(%rsp)                              #107.9
        lea       (%rdi,%r9), %eax                              #107.9
        movl      %eax, 2208(%rsp)                              #107.9
        cmpl      2176(%rsp), %r9d                              #107.9
        jae       ..B3.384      # Prob 10%                      #107.9
                                # LOE r9 r11 r12 r13 edx ebx edi r9d r10d r14d r9b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.193:                       # Preds ..B3.192
        addl      %edi, %r14d                                   #107.9
        lea       (%r10,%rdx,2), %r8d                           #107.9
        movslq    %edi, %rdi                                    #112.11
        movl      2160(%rsp), %eax                              #115.43
        imull     %edx, %eax                                    #115.43
        addl      %edx, %eax                                    #115.43
        lea       (%r11,%rdi,8), %r15                           #116.11
        movslq    %ebx, %r11                                    #114.11
        addl      %r10d, %eax                                   #107.9
        imulq     %r12, %r11                                    #107.9
        movslq    %r10d, %rsi                                   #112.11
        addq      %r12, %r11                                    #107.9
        movslq    %r8d, %r8                                     #113.11
        addq      %rdi, %rsi                                    #107.9
        movslq    %eax, %rax                                    #115.11
        addq      %rdi, %r8                                     #107.9
        addq      %rdi, %r11                                    #107.9
        addq      %rdi, %rax                                    #107.9
        movq      %r12, 2504(%rsp)                              #115.11
        lea       (%r13,%rdi,8), %rcx                           #116.24
        addl      2280(%rsp), %r14d                             #107.9
        lea       -2(%rdx), %r13d                               #111.25
        movl      %r13d, 2712(%rsp)                             #115.11
        lea       1(%r9,%rsi), %rsi                             #112.11
        movl      %ebx, 2496(%rsp)                              #115.11
        lea       1(%r9,%r8), %r8                               #113.11
        movl      %edx, 2480(%rsp)                              #115.11
        lea       1(%r9,%r11), %r11                             #114.11
        movl      2208(%rsp), %r13d                             #115.11
        lea       1(%r9,%rax), %rax                             #115.11
        movl      %r9d, %edi                                    #115.11
        movl      2176(%rsp), %r10d                             #115.11
        movq      2184(%rsp), %r12                              #115.11
        .align    16,0x90
                                # LOE rax rcx rsi r8 r9 r11 r12 r15 edi r10d r13d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.194:                       # Preds ..B3.194 ..B3.193
        vmulsd    (%r12,%r8,8), %xmm10, %xmm0                   #116.11
        lea       1(%r14), %ebx                                 #107.9
        vmulsd    (%r12,%rsi,8), %xmm9, %xmm1                   #116.11
        vmulsd    8(%rcx,%r9,8), %xmm6, %xmm3                   #116.11
        vfmadd231sd (%r12,%rax,8), %xmm11, %xmm0                #116.11
        vfmadd231sd (%r12,%r11,8), %xmm5, %xmm1                 #116.11
        cmpl      2712(%rsp), %r13d                             #116.11
        lea       2(%r14), %edx                                 #111.38
        movslq    %r14d, %r14                                   #116.37
        vaddsd    %xmm1, %xmm0, %xmm2                           #116.11
        vfmadd231sd (%r12,%r14,8), %xmm8, %xmm3                 #116.11
        cmove     %ebx, %edx                                    #116.11
        incl      %edi                                          #107.9
        movslq    %edx, %rdx                                    #116.50
        incq      %rsi                                          #107.9
        incq      %r8                                           #107.9
        incq      %r11                                          #107.9
        incq      %rax                                          #107.9
        incl      %r13d                                         #107.9
        movl      %ebx, %r14d                                   #107.9
        vfmadd231sd (%r12,%rdx,8), %xmm7, %xmm3                 #116.11
        vaddsd    %xmm3, %xmm2, %xmm4                           #116.11
        vmovsd    %xmm4, 8(%r15,%r9,8)                          #116.11
        incq      %r9                                           #107.9
        cmpl      %r10d, %edi                                   #107.9
        jb        ..B3.194      # Prob 82%                      #107.9
                                # LOE rax rcx rsi r8 r9 r11 r12 r15 edi r10d r13d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.195:                       # Preds ..B3.194
        movl      2496(%rsp), %ebx                              #
        incl      %ebx                                          #105.7
        movq      2504(%rsp), %r12                              #
        movl      2480(%rsp), %edx                              #
        cmpl      992(%rsp), %ebx                               #105.7
        jae       ..B3.365      # Prob 18%                      #105.7
                                # LOE rdx r12 edx ebx r12d dl dh r12b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.196:                       # Preds ..B3.195
        movl      %ebx, %r10d                                   #107.9
        imull     %edx, %r10d                                   #107.9
        lea       (%rdx,%r10), %r14d                            #107.9
        lea       1(%rdx,%r10), %edi                            #111.38
        jmp       ..B3.109      # Prob 100%                     #111.38
                                # LOE r12 edx ebx edi r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.197:                       # Preds ..B3.187
        incl      %ebx                                          #105.7
        cmpl      992(%rsp), %ebx                               #105.7
        jae       ..B3.365      # Prob 18%                      #105.7
                                # LOE r12 edx ebx xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.198:                       # Preds ..B3.197
        movl      %ebx, %r10d                                   #107.9
        imull     %edx, %r10d                                   #107.9
        lea       (%rdx,%r10), %r14d                            #107.9
        lea       1(%rdx,%r10), %edi                            #111.38
        jmp       ..B3.109      # Prob 100%                     #111.38
                                # LOE r12 edx ebx edi r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.199:                       # Preds ..B3.109
        .byte     144                                           #105.7
        incl      %ebx                                          #105.7
        movl      992(%rsp), %r13d                              #
        cmpl      %r13d, %ebx                                   #105.7
        jb        ..B3.108      # Prob 82%                      #105.7
                                # LOE rcx r12 edx ecx ebx r13d cl ch xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.200:                       # Preds ..B3.199
        movq      1000(%rsp), %rax                              #
        movl      880(%rsp), %edi                               #
        movq      2144(%rsp), %r10                              #
        movq      %rcx, %r11                                    #
        movq      2152(%rsp), %rsi                              #
        movl      2160(%rsp), %ecx                              #
        movl      1080(%rsp), %r8d                              #
        movl      1008(%rsp), %r9d                              #
                                # LOE rax rsi r10 r11 edx ecx edi r8d r9d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.201:                       # Preds ..B3.331 ..B3.10 ..B3.200 ..B3.365
        cmpl      $2, %r8d                                      #104.5
        jl        ..B3.357      # Prob 10%                      #104.5
                                # LOE rax rsi r10 r11 edx ecx edi r8d r9d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.202:                       # Preds ..B3.60 ..B3.201
        xorl      %ebx, %ebx                                    #110.11
        movq      %rax, 1000(%rsp)                              #110.11
        movl      %edi, 880(%rsp)                               #110.11
        movq      %r10, 2144(%rsp)                              #110.11
        movq      %r11, 2184(%rsp)                              #110.11
        movq      %rsi, 2152(%rsp)                              #110.11
        movl      %ebx, 2800(%rsp)                              #110.11
        movl      %ecx, 2160(%rsp)                              #110.11
        movl      %r8d, 1080(%rsp)                              #110.11
        movl      %r9d, 1008(%rsp)                              #110.11
                                # LOE rcx r8 r11 edx ecx r8d r11d cl ch r8b r11b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.203:                       # Preds ..B3.317 ..B3.202
        testl     %edx, %edx                                    #107.38
        jle       ..B3.433      # Prob 50%                      #107.38
                                # LOE rcx r8 r11 edx ecx r8d r11d cl ch r8b r11b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.204:                       # Preds ..B3.203
        movl      %ecx, %r12d                                   #109.34
        movl      %r12d, %ebx                                   #109.34
        imull     %edx, %ebx                                    #109.34
        vaddsd    %xmm9, %xmm8, %xmm3                           #117.61
        movl      2800(%rsp), %eax                              #107.9
        movl      %eax, %edi                                    #107.9
        imull     %ebx, %edi                                    #107.9
        cmpl      $1, %edx                                      #116.11
        lea       (%rbx,%rdi), %r10d                            #107.9
        movslq    %r10d, %rsi                                   #111.11
        lea       (%rdx,%rbx), %r13d                            #113.37
        movq      %r11, %rcx                                    #116.24
        lea       (%rdi,%rbx,2), %r15d                          #107.9
        movq      2152(%rsp), %r9                               #116.11
        lea       -2(%r8), %r11d                                #115.24
        movl      %r11d, 2840(%rsp)                             #115.24
        movl      %r15d, 2440(%rsp)                             #107.9
        lea       1(%rsi), %r14                                 #111.38
        cmove     %rsi, %r14                                    #116.11
        addl      %edi, %r13d                                   #107.9
        cmpl      $1, %r12d                                     #116.11
        lea       (%r9,%rsi,8), %r8                             #116.11
        movslq    %r13d, %r13                                   #113.11
        lea       (%rcx,%rsi,8), %r9                            #116.24
        movslq    %r12d, %r12                                   #114.11
        cmove     %rsi, %r13                                    #116.11
        cmpl      %r11d, %eax                                   #116.11
        movslq    %edx, %r11                                    #114.11
        movslq    %eax, %rax                                    #114.11
        vmulsd    (%rcx,%r13,8), %xmm10, %xmm0                  #116.11
        vfmadd231sd (%rcx,%r14,8), %xmm7, %xmm0                 #116.11
        movslq    %r15d, %r15                                   #115.11
        movq      %r15, 2432(%rsp)                              #115.11
        cmove     %rsi, %r15                                    #116.11
        imulq     %r12, %r11                                    #109.34
        imulq     %rax, %r11                                    #107.9
        vmulsd    (%rcx,%r11,8), %xmm5, %xmm1                   #116.11
        vfmadd231sd (%r9), %xmm6, %xmm1                         #116.11
        vaddsd    %xmm1, %xmm0, %xmm2                           #116.11
        vfmadd231sd (%rcx,%r15,8), %xmm11, %xmm2                #116.11
        vfmadd132sd (%r9), %xmm2, %xmm3                         #116.11
        vmovsd    %xmm3, (%r8)                                  #116.11
        cmpl      $2, %edx                                      #107.9
        jl        ..B3.276      # Prob 50%                      #107.9
                                # LOE rsi r8 r9 edx ebx edi r10d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.205:                       # Preds ..B3.204
        cmpl      $1, 2160(%rsp)                                #113.24
        lea       -1(%rdx), %r11d                               #107.9
        jne       ..B3.247      # Prob 50%                      #113.24
                                # LOE rsi r8 r9 edx ebx edi r10d r11d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.206:                       # Preds ..B3.205
        movl      2800(%rsp), %eax                              #115.24
        cmpl      2840(%rsp), %eax                              #115.24
        jne       ..B3.224      # Prob 50%                      #115.24
                                # LOE rsi r8 r9 edx edi r10d r11d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.207:                       # Preds ..B3.206
        cmpl      $8, %r11d                                     #107.9
        jl        ..B3.394      # Prob 10%                      #107.9
                                # LOE rsi r8 r9 edx edi r10d r11d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.208:                       # Preds ..B3.207
        cmpl      $15, %r11d                                    #107.9
        jl        ..B3.396      # Prob 10%                      #107.9
                                # LOE rsi r8 r9 edx edi r10d r11d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.209:                       # Preds ..B3.208
        lea       8(%r8), %r13                                  #116.11
        andq      $31, %r13                                     #107.9
        testl     %r13d, %r13d                                  #107.9
        je        ..B3.212      # Prob 50%                      #107.9
                                # LOE rsi r8 r9 edx edi r10d r11d r13d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.210:                       # Preds ..B3.209
        testl     $7, %r13d                                     #107.9
        jne       ..B3.394      # Prob 10%                      #107.9
                                # LOE rsi r8 r9 edx edi r10d r11d r13d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.211:                       # Preds ..B3.210
        negl      %r13d                                         #107.9
        addl      $32, %r13d                                    #107.9
        shrl      $3, %r13d                                     #107.9
                                # LOE rsi r8 r9 edx edi r10d r11d r13d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.212:                       # Preds ..B3.211 ..B3.209
        lea       8(%r13), %eax                                 #107.9
        cmpl      %eax, %r11d                                   #107.9
        jl        ..B3.394      # Prob 10%                      #107.9
                                # LOE rsi r8 r9 edx edi r10d r11d r13d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.213:                       # Preds ..B3.212
        movl      %r11d, %eax                                   #107.9
        xorl      %ebx, %ebx                                    #107.9
        subl      %r13d, %eax                                   #107.9
        xorl      %ecx, %ecx                                    #107.9
        andl      $7, %eax                                      #107.9
        lea       1(%rsi), %r15                                 #112.11
        negl      %eax                                          #107.9
        addl      %r11d, %eax                                   #107.9
        testl     %r13d, %r13d                                  #107.9
        jbe       ..B3.217      # Prob 10%                      #107.9
                                # LOE rcx rsi r8 r9 r10 r15 eax edx ebx edi r10d r11d r13d r10b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.214:                       # Preds ..B3.213
        movslq    %edi, %r14                                    #114.11
        lea       -2(%rdx), %r12d                               #111.25
        movq      %rsi, 2640(%rsp)                              #111.25
        incq      %r14                                          #114.11
        movl      %edi, 2648(%rsp)                              #111.25
        vaddsd    %xmm10, %xmm9, %xmm0                          #117.61
        movl      %eax, 2680(%rsp)                              #111.25
        vaddsd    %xmm0, %xmm11, %xmm0                          #117.61
        movl      %edx, 2480(%rsp)                              #111.25
        movl      %r10d, %edi                                   #111.25
        movq      2184(%rsp), %rsi                              #111.25
        .align    16,0x90
                                # LOE rcx rsi r8 r9 r14 r15 ebx edi r10d r11d r12d r13d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.215:                       # Preds ..B3.215 ..B3.214
        vmulsd    8(%r9,%rcx,8), %xmm6, %xmm1                   #116.24
        lea       1(%rdi), %edx                                 #107.9
        cmpl      %r12d, %ebx                                   #116.11
        lea       2(%rdi), %eax                                 #111.38
        movslq    %edi, %rdi                                    #116.37
        cmove     %edx, %eax                                    #116.11
        incl      %ebx                                          #107.9
        movslq    %eax, %rax                                    #116.50
        vfmadd231sd (%rsi,%rdi,8), %xmm8, %xmm1                 #116.11
        movl      %edx, %edi                                    #107.9
        vfmadd231sd (%rsi,%rax,8), %xmm7, %xmm1                 #116.11
        vfmadd231sd (%rsi,%r14,8), %xmm5, %xmm1                 #116.11
        incq      %r14                                          #107.9
        vfmadd231sd (%rsi,%r15,8), %xmm0, %xmm1                 #116.11
        incq      %r15                                          #107.9
        vmovsd    %xmm1, 8(%r8,%rcx,8)                          #116.11
        incq      %rcx                                          #107.9
        cmpl      %r13d, %ebx                                   #107.9
        jb        ..B3.215      # Prob 82%                      #107.9
                                # LOE rcx rsi r8 r9 r14 r15 ebx edi r10d r11d r12d r13d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.216:                       # Preds ..B3.215
        movl      2680(%rsp), %eax                              #
        movq      2640(%rsp), %rsi                              #
        movl      2648(%rsp), %edi                              #
        movl      2480(%rsp), %edx                              #
                                # LOE rsi r8 r9 eax edx edi r10d r11d r13d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.217:                       # Preds ..B3.213 ..B3.216 ..B3.396
        movl      $8, %ecx                                      #116.11
        lea       1(%r13), %ebx                                 #116.11
        vbroadcastsd %xmm8, %ymm1                               #98.1
        lea       1(%r13,%r10), %r12d                           #107.9
        vbroadcastsd %xmm10, %ymm0                              #98.1
        vmovd     %r11d, %xmm15                                 #111.25
        vbroadcastsd %xmm11, %ymm14                             #98.1
        vmovd     %ecx, %xmm13                                  #116.11
        vmovsd    %xmm5, 976(%rsp)                              #107.9
        vmovsd    %xmm6, 984(%rsp)                              #107.9
        vpbroadcastd %xmm13, %ymm3                              #116.11
        lea       2(%r13,%r10), %r14d                           #111.38
        vmovupd   %ymm1, 544(%rsp)                              #98.1
        vmovdqu   %ymm3, 608(%rsp)                              #116.11
        vmovd     %r12d, %xmm3                                  #107.9
        vmovsd    %xmm7, 936(%rsp)                              #107.9
        vmovsd    %xmm8, 944(%rsp)                              #107.9
        vaddpd    %ymm14, %ymm0, %ymm0                          #117.61
        vmovd     %ebx, %xmm14                                  #116.11
        vmovsd    %xmm9, 952(%rsp)                              #107.9
        vmovsd    %xmm10, 960(%rsp)                             #107.9
        vpbroadcastd %xmm14, %ymm13                             #116.11
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm13, %ymm14   #116.11
        vmovsd    %xmm11, 968(%rsp)                             #107.9
        vbroadcastsd %xmm6, %ymm2                               #98.1
        vbroadcastsd %xmm7, %ymm1                               #98.1
        vbroadcastsd %xmm9, %ymm12                              #98.1
        vbroadcastsd %xmm5, %ymm4                               #98.1
        vmovupd   544(%rsp), %ymm5                              #107.9
        vmovdqu   608(%rsp), %ymm6                              #107.9
        vpbroadcastd %xmm3, %ymm13                              #107.9
        vmovd     %r14d, %xmm3                                  #111.38
        vpbroadcastd %xmm15, %ymm15                             #111.25
        vpbroadcastd %xmm3, %ymm3                               #111.38
        movq      2184(%rsp), %rbx                              #107.9
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm13, %ymm13   #107.9
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm3, %ymm3     #111.38
        vmovdqu   %ymm15, 1728(%rsp)                            #107.9
        movl      %r13d, %r13d                                  #107.9
        movslq    %eax, %rcx                                    #107.9
                                # LOE rcx rbx rsi r8 r9 r13 eax edx edi r10d r11d ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm12 ymm13 ymm14
..B3.218:                       # Preds ..B3.218 ..B3.217
        vpcmpeqd  1728(%rsp), %ymm14, %ymm10                    #111.25
        movl      %r13d, %r14d                                  #110.11
        vpblendvb %ymm10, %ymm13, %ymm3, %ymm8                  #111.38
        vpaddd    %ymm6, %ymm14, %ymm14                         #116.11
        vpaddd    %ymm6, %ymm3, %ymm3                           #111.38
        vpcmpeqd  %ymm7, %ymm7, %ymm7                           #116.50
        lea       (%r10,%r14), %r12d                            #107.9
        vxorpd    %ymm10, %ymm10, %ymm10                        #116.50
        addl      %edi, %r14d                                   #107.9
        vmovdqa   %ymm7, %ymm9                                  #116.50
        vmovdqa   %ymm7, %ymm15                                 #116.50
        movslq    %r14d, %r14                                   #114.11
        movslq    %r12d, %r12                                   #116.37
        vgatherdpd %ymm9, (%rbx,%xmm8,8), %ymm10                #116.50
        vextracti128 $1, %ymm8, %xmm11                          #116.50
        vmulpd    %ymm10, %ymm1, %ymm8                          #117.61
        vxorpd    %ymm10, %ymm10, %ymm10                        #116.50
        vgatherdpd %ymm15, (%rbx,%xmm11,8), %ymm10              #116.50
        vfmadd231pd (%rbx,%r12,8), %ymm5, %ymm8                 #117.61
        vmulpd    %ymm10, %ymm1, %ymm11                         #117.61
        vfmadd231pd 8(%r9,%r13,8), %ymm2, %ymm8                 #117.61
        vfmadd231pd 32(%rbx,%r12,8), %ymm5, %ymm11              #117.61
        vxorpd    %ymm15, %ymm15, %ymm15                        #117.35
        vmovdqa   %ymm7, %ymm9                                  #117.35
        vxorpd    %ymm10, %ymm10, %ymm10                        #117.35
        vfmadd231pd 40(%r9,%r13,8), %ymm2, %ymm11               #117.61
        vgatherdpd %ymm9, (%rbx,%xmm13,8), %ymm15               #117.35
        vextracti128 $1, %ymm13, %xmm9                          #117.35
        vpaddd    %ymm6, %ymm13, %ymm13                         #107.9
        vgatherdpd %ymm7, (%rbx,%xmm9,8), %ymm10                #117.35
        vmulpd    8(%rbx,%r14,8), %ymm4, %ymm9                  #117.61
        vfmadd231pd %ymm12, %ymm15, %ymm9                       #117.61
        vfmadd231pd %ymm0, %ymm15, %ymm9                        #117.61
        vaddpd    %ymm8, %ymm9, %ymm7                           #117.61
        vmulpd    40(%rbx,%r14,8), %ymm4, %ymm8                 #117.61
        vmovupd   %ymm7, 8(%r8,%r13,8)                          #116.11
        vfmadd231pd %ymm12, %ymm10, %ymm8                       #117.61
        vfmadd231pd %ymm0, %ymm10, %ymm8                        #117.61
        vaddpd    %ymm11, %ymm8, %ymm10                         #117.61
        vmovupd   %ymm10, 40(%r8,%r13,8)                        #116.11
        addq      $8, %r13                                      #107.9
        cmpq      %rcx, %r13                                    #107.9
        jb        ..B3.218      # Prob 82%                      #107.9
                                # LOE rcx rbx rsi r8 r9 r13 eax edx edi r10d r11d ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm12 ymm13 ymm14
..B3.219:                       # Preds ..B3.218
        vmovsd    936(%rsp), %xmm7                              #
        vmovsd    944(%rsp), %xmm8                              #
        vmovsd    952(%rsp), %xmm9                              #
        vmovsd    960(%rsp), %xmm10                             #
        vmovsd    968(%rsp), %xmm11                             #
        vmovsd    976(%rsp), %xmm5                              #
        vmovsd    984(%rsp), %xmm6                              #
                                # LOE rsi r8 r9 eax edx edi r10d r11d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.220:                       # Preds ..B3.219 ..B3.394
        xorl      %r13d, %r13d                                  #107.9
        lea       1(%rax), %ecx                                 #107.9
        xorl      %r14d, %r14d                                  #107.9
        cmpl      %ecx, %r11d                                   #107.9
        jb        ..B3.433      # Prob 10%                      #107.9
                                # LOE rsi r8 r9 r13 eax edx edi r10d r11d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.221:                       # Preds ..B3.220
        movslq    %edi, %rdi                                    #114.11
        vaddsd    %xmm10, %xmm9, %xmm0                          #117.61
        addl      %eax, %r10d                                   #107.9
        subl      %eax, %r11d                                   #107.9
        movslq    %eax, %rax                                    #112.11
        lea       -2(%rdx), %r12d                               #111.25
        vaddsd    %xmm0, %xmm11, %xmm0                          #117.61
        lea       1(%rsi,%rax), %rsi                            #112.11
        lea       1(%rdi,%rax), %rbx                            #114.11
        lea       (%r9,%rax,8), %rcx                            #116.24
        movq      2184(%rsp), %r9                               #116.11
        lea       (%r8,%rax,8), %r15                            #116.11
        .align    16,0x90
                                # LOE rcx rbx rsi r9 r13 r15 eax edx r10d r11d r12d r14d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.222:                       # Preds ..B3.222 ..B3.221
        vmulsd    8(%rcx,%r13,8), %xmm6, %xmm1                  #116.24
        lea       1(%r10), %r8d                                 #107.9
        cmpl      %r12d, %eax                                   #116.11
        lea       2(%r10), %edi                                 #111.38
        movslq    %r10d, %r10                                   #116.37
        cmove     %r8d, %edi                                    #116.11
        incl      %r14d                                         #107.9
        movslq    %edi, %rdi                                    #116.50
        incl      %eax                                          #107.9
        vfmadd231sd (%r9,%r10,8), %xmm8, %xmm1                  #116.11
        movl      %r8d, %r10d                                   #107.9
        vfmadd231sd (%r9,%rdi,8), %xmm7, %xmm1                  #116.11
        vfmadd231sd (%r9,%rbx,8), %xmm5, %xmm1                  #116.11
        incq      %rbx                                          #107.9
        vfmadd231sd (%r9,%rsi,8), %xmm0, %xmm1                  #116.11
        incq      %rsi                                          #107.9
        vmovsd    %xmm1, 8(%r15,%r13,8)                         #116.11
        incq      %r13                                          #107.9
        cmpl      %r11d, %r14d                                  #107.9
        jb        ..B3.222      # Prob 82%                      #107.9
        jmp       ..B3.433      # Prob 100%                     #107.9
                                # LOE rcx rbx rsi r9 r13 r15 eax edx r10d r11d r12d r14d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.224:                       # Preds ..B3.206
        cmpl      $8, %r11d                                     #107.9
        jl        ..B3.400      # Prob 10%                      #107.9
                                # LOE rsi r8 r9 edx edi r10d r11d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.225:                       # Preds ..B3.224
        cmpl      $15, %r11d                                    #107.9
        jl        ..B3.402      # Prob 10%                      #107.9
                                # LOE rsi r8 r9 edx edi r10d r11d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.226:                       # Preds ..B3.225
        lea       8(%r8), %r15                                  #116.11
        andq      $31, %r15                                     #107.9
        testl     %r15d, %r15d                                  #107.9
        je        ..B3.229      # Prob 50%                      #107.9
                                # LOE rsi r8 r9 edx edi r10d r11d r15d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.227:                       # Preds ..B3.226
        testl     $7, %r15d                                     #107.9
        jne       ..B3.400      # Prob 10%                      #107.9
                                # LOE rsi r8 r9 edx edi r10d r11d r15d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.228:                       # Preds ..B3.227
        negl      %r15d                                         #107.9
        addl      $32, %r15d                                    #107.9
        shrl      $3, %r15d                                     #107.9
                                # LOE rsi r8 r9 edx edi r10d r11d r15d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.229:                       # Preds ..B3.228 ..B3.226
        lea       8(%r15), %eax                                 #107.9
        cmpl      %eax, %r11d                                   #107.9
        jl        ..B3.400      # Prob 10%                      #107.9
                                # LOE rsi r8 r9 edx edi r10d r11d r15d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.230:                       # Preds ..B3.229
        movl      %r11d, %eax                                   #107.9
        xorl      %r12d, %r12d                                  #107.9
        subl      %r15d, %eax                                   #107.9
        lea       1(%rsi), %rbx                                 #112.11
        andl      $7, %eax                                      #107.9
        negl      %eax                                          #107.9
        addl      %r11d, %eax                                   #107.9
        movq      $0, 2464(%rsp)                                #107.9
        testl     %r15d, %r15d                                  #107.9
        jbe       ..B3.234      # Prob 10%                      #107.9
                                # LOE rbx rsi r8 r9 r10 eax edx edi r10d r11d r12d r15d r10b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.231:                       # Preds ..B3.230
        movslq    %edi, %rcx                                    #114.11
        lea       -2(%rdx), %r13d                               #111.25
        movslq    2440(%rsp), %r14                              #115.11
        incq      %rcx                                          #114.11
        movl      %eax, 2688(%rsp)                              #111.25
        incq      %r14                                          #115.11
        movq      %rsi, 2640(%rsp)                              #111.25
        vaddsd    %xmm10, %xmm9, %xmm0                          #117.61
        movl      %edi, 2648(%rsp)                              #111.25
        movl      %r11d, 2696(%rsp)                             #111.25
        movl      %edx, 2480(%rsp)                              #111.25
        movq      2464(%rsp), %rax                              #111.25
        movl      %r10d, %edi                                   #111.25
        movq      2184(%rsp), %rsi                              #111.25
        .align    16,0x90
                                # LOE rax rcx rbx rsi r8 r9 r14 edi r10d r12d r13d r15d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.232:                       # Preds ..B3.232 ..B3.231
        cmpl      %r13d, %r12d                                  #116.11
        lea       1(%rdi), %edx                                 #107.9
        vmulsd    (%rsi,%r14,8), %xmm11, %xmm1                  #116.11
        lea       2(%rdi), %r11d                                #111.38
        vmulsd    (%rsi,%rbx,8), %xmm0, %xmm2                   #116.11
        cmove     %edx, %r11d                                   #116.11
        incl      %r12d                                         #107.9
        movslq    %r11d, %r11                                   #116.50
        incq      %rbx                                          #107.9
        vfmadd231sd (%rsi,%rcx,8), %xmm5, %xmm2                 #116.11
        incq      %rcx                                          #107.9
        vfmadd231sd (%rsi,%r11,8), %xmm7, %xmm1                 #116.11
        movslq    %edi, %rdi                                    #116.37
        incq      %r14                                          #107.9
        vfmadd231sd 8(%r9,%rax,8), %xmm6, %xmm1                 #116.11
        vfmadd231sd (%rsi,%rdi,8), %xmm8, %xmm2                 #116.11
        movl      %edx, %edi                                    #107.9
        vaddsd    %xmm2, %xmm1, %xmm3                           #116.11
        vmovsd    %xmm3, 8(%r8,%rax,8)                          #116.11
        incq      %rax                                          #107.9
        cmpl      %r15d, %r12d                                  #107.9
        jb        ..B3.232      # Prob 82%                      #107.9
                                # LOE rax rcx rbx rsi r8 r9 r14 edi r10d r12d r13d r15d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.233:                       # Preds ..B3.232
        movl      2688(%rsp), %eax                              #
        movl      2696(%rsp), %r11d                             #
        movq      2640(%rsp), %rsi                              #
        movl      2648(%rsp), %edi                              #
        movl      2480(%rsp), %edx                              #
                                # LOE rsi r8 r9 eax edx edi r10d r11d r15d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.234:                       # Preds ..B3.230 ..B3.233 ..B3.402
        vbroadcastsd %xmm11, %ymm13                             #98.1
        movl      $8, %ecx                                      #116.11
        vbroadcastsd %xmm9, %ymm14                              #98.1
        vmovd     %r11d, %xmm15                                 #111.25
        vbroadcastsd %xmm10, %ymm0                              #98.1
        vmovsd    %xmm5, 976(%rsp)                              #107.9
        vmovd     %ecx, %xmm4                                   #116.11
        vmovsd    %xmm6, 984(%rsp)                              #107.9
        vmovupd   %ymm13, 576(%rsp)                             #98.1
        lea       1(%r15), %ebx                                 #116.11
        vmovsd    %xmm7, 936(%rsp)                              #107.9
        vmovsd    %xmm8, 944(%rsp)                              #107.9
        vaddpd    %ymm0, %ymm14, %ymm0                          #117.61
        vmovd     %ebx, %xmm13                                  #116.11
        vmovsd    %xmm9, 952(%rsp)                              #107.9
        vpbroadcastd %xmm4, %ymm14                              #116.11
        lea       1(%r15,%r10), %r12d                           #107.9
        vpbroadcastd %xmm13, %ymm4                              #116.11
        lea       2(%r15,%r10), %r13d                           #111.38
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm4, %ymm13    #116.11
        vmovsd    %xmm10, 960(%rsp)                             #107.9
        vmovd     %r12d, %xmm4                                  #107.9
        vmovsd    %xmm11, 968(%rsp)                             #107.9
        vbroadcastsd %xmm6, %ymm3                               #98.1
        vbroadcastsd %xmm8, %ymm2                               #98.1
        vbroadcastsd %xmm7, %ymm1                               #98.1
        vbroadcastsd %xmm5, %ymm12                              #98.1
        vmovupd   576(%rsp), %ymm5                              #107.9
        vmovdqa   %ymm13, %ymm6                                 #107.9
        vpbroadcastd %xmm4, %ymm13                              #107.9
        vmovd     %r13d, %xmm4                                  #111.38
        vpbroadcastd %xmm15, %ymm15                             #111.25
        vpbroadcastd %xmm4, %ymm4                               #111.38
        movl      2440(%rsp), %r13d                             #107.9
        movq      2184(%rsp), %r12                              #107.9
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm13, %ymm13   #107.9
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm4, %ymm4     #111.38
        vmovdqu   %ymm15, 1760(%rsp)                            #107.9
        movl      %r15d, %r15d                                  #107.9
        movslq    %eax, %rbx                                    #107.9
                                # LOE rbx rsi r8 r9 r12 r15 eax edx edi r10d r11d r13d ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm12 ymm13 ymm14
..B3.235:                       # Preds ..B3.235 ..B3.234
        vpcmpeqd  1760(%rsp), %ymm6, %ymm10                     #111.25
        movl      %r15d, %r14d                                  #110.11
        vpblendvb %ymm10, %ymm13, %ymm4, %ymm8                  #111.38
        vpaddd    %ymm14, %ymm6, %ymm6                          #116.11
        vpaddd    %ymm14, %ymm4, %ymm4                          #111.38
        vpcmpeqd  %ymm7, %ymm7, %ymm7                           #116.50
        lea       (%r10,%r14), %ecx                             #107.9
        vxorpd    %ymm10, %ymm10, %ymm10                        #116.50
        vmovdqa   %ymm7, %ymm9                                  #116.50
        vmovdqa   %ymm7, %ymm15                                 #116.50
        movslq    %ecx, %rcx                                    #116.37
        vgatherdpd %ymm9, (%r12,%xmm8,8), %ymm10                #116.50
        vextracti128 $1, %ymm8, %xmm11                          #116.50
        vmulpd    %ymm10, %ymm1, %ymm8                          #117.61
        vxorpd    %ymm10, %ymm10, %ymm10                        #116.50
        vgatherdpd %ymm15, (%r12,%xmm11,8), %ymm10              #116.50
        vfmadd231pd (%r12,%rcx,8), %ymm2, %ymm8                 #117.61
        vmulpd    %ymm10, %ymm1, %ymm11                         #117.61
        vfmadd231pd 8(%r9,%r15,8), %ymm3, %ymm8                 #117.61
        vfmadd231pd 32(%r12,%rcx,8), %ymm2, %ymm11              #117.61
        vxorpd    %ymm15, %ymm15, %ymm15                        #117.35
        lea       (%rdi,%r14), %ecx                             #107.9
        vmovdqa   %ymm7, %ymm9                                  #117.35
        addl      %r13d, %r14d                                  #107.9
        vxorpd    %ymm10, %ymm10, %ymm10                        #117.35
        movslq    %r14d, %r14                                   #115.11
        movslq    %ecx, %rcx                                    #114.11
        vfmadd231pd 40(%r9,%r15,8), %ymm3, %ymm11               #117.61
        vgatherdpd %ymm9, (%r12,%xmm13,8), %ymm15               #117.35
        vextracti128 $1, %ymm13, %xmm9                          #117.35
        vpaddd    %ymm14, %ymm13, %ymm13                        #107.9
        vgatherdpd %ymm7, (%r12,%xmm9,8), %ymm10                #117.35
        vmulpd    8(%r12,%r14,8), %ymm5, %ymm9                  #117.61
        vfmadd231pd 8(%r12,%rcx,8), %ymm12, %ymm9               #117.61
        vfmadd231pd %ymm0, %ymm15, %ymm9                        #117.61
        vaddpd    %ymm8, %ymm9, %ymm7                           #117.61
        vmulpd    40(%r12,%r14,8), %ymm5, %ymm8                 #117.61
        vfmadd231pd 40(%r12,%rcx,8), %ymm12, %ymm8              #117.61
        vmovupd   %ymm7, 8(%r8,%r15,8)                          #116.11
        vfmadd231pd %ymm0, %ymm10, %ymm8                        #117.61
        vaddpd    %ymm11, %ymm8, %ymm10                         #117.61
        vmovupd   %ymm10, 40(%r8,%r15,8)                        #116.11
        addq      $8, %r15                                      #107.9
        cmpq      %rbx, %r15                                    #107.9
        jb        ..B3.235      # Prob 82%                      #107.9
                                # LOE rbx rsi r8 r9 r12 r15 eax edx edi r10d r11d r13d ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm12 ymm13 ymm14
..B3.236:                       # Preds ..B3.235
        vmovsd    936(%rsp), %xmm7                              #
        vmovsd    944(%rsp), %xmm8                              #
        vmovsd    952(%rsp), %xmm9                              #
        vmovsd    960(%rsp), %xmm10                             #
        vmovsd    968(%rsp), %xmm11                             #
        vmovsd    976(%rsp), %xmm5                              #
        vmovsd    984(%rsp), %xmm6                              #
                                # LOE rsi r8 r9 eax edx edi r10d r11d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.237:                       # Preds ..B3.236 ..B3.400
        lea       1(%rax), %ecx                                 #107.9
        cmpl      %ecx, %r11d                                   #107.9
        jb        ..B3.433      # Prob 50%                      #107.9
                                # LOE rsi r8 r9 eax edx ecx edi r10d r11d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.238:                       # Preds ..B3.237
        movl      %r11d, %ebx                                   #107.9
        subl      %eax, %ebx                                    #107.9
        cmpl      $2, %ebx                                      #107.9
        jl        ..B3.399      # Prob 10%                      #107.9
                                # LOE rsi r8 r9 eax edx ecx ebx edi r10d r11d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.239:                       # Preds ..B3.238
        movl      $2, %r12d                                     #116.11
        lea       1(%rax,%r10), %r14d                           #107.9
        vmovd     %r11d, %xmm2                                  #111.25
        lea       2(%rax), %r13d                                #116.11
        vmovddup  %xmm9, %xmm4                                  #98.1
        lea       2(%rax,%r10), %r11d                           #111.38
        vmovddup  %xmm10, %xmm13                                #98.1
        vmovd     %ecx, %xmm14                                  #116.11
        vmovd     %r12d, %xmm15                                 #116.11
        lea       (%rax,%r10), %r12d                            #107.9
        vpbroadcastd %xmm2, %xmm0                               #111.25
        vpxor     %xmm12, %xmm12, %xmm12                        #116.11
        vmovdqu   %xmm0, 768(%rsp)                              #111.25
        movl      %ebx, %ecx                                    #107.9
        vaddpd    %xmm13, %xmm4, %xmm0                          #117.61
        vpbroadcastd %xmm15, %xmm4                              #116.11
        vmovd     %r14d, %xmm15                                 #107.9
        incl      %r14d                                         #107.9
        vmovd     %r13d, %xmm13                                 #116.11
        vpunpckldq %xmm13, %xmm14, %xmm14                       #116.11
        andl      $-2, %ecx                                     #107.9
        movslq    %eax, %rax                                    #114.11
        xorl      %r13d, %r13d                                  #107.9
        movslq    %edi, %rdi                                    #114.11
        vmovd     %r14d, %xmm13                                 #107.9
        vpunpckldq %xmm13, %xmm15, %xmm15                       #107.9
        vpunpcklqdq %xmm12, %xmm15, %xmm13                      #107.9
        vmovd     %r11d, %xmm15                                 #111.38
        incl      %r11d                                         #111.38
        lea       (%r8,%rax,8), %r15                            #116.11
        vmovdqu   %xmm13, 864(%rsp)                             #107.9
        lea       1(%rdi,%rax), %r14                            #114.11
        vmovddup  %xmm8, %xmm3                                  #98.1
        vmovddup  %xmm7, %xmm1                                  #98.1
        vmovd     %r11d, %xmm13                                 #111.38
        movq      2432(%rsp), %r11                              #115.11
        movq      %r15, 928(%rsp)                               #116.11
        lea       (%r9,%rax,8), %r15                            #116.24
        vmovupd   %xmm3, 800(%rsp)                              #98.1
        vmovupd   %xmm1, 784(%rsp)                              #98.1
        lea       1(%r11,%rax), %r11                            #115.11
        vpunpckldq %xmm13, %xmm15, %xmm15                       #111.38
        movq      %r15, 912(%rsp)                               #116.24
        vmovsd    %xmm9, 952(%rsp)                              #116.24
        vmovsd    %xmm10, 960(%rsp)                             #116.24
        vmovsd    %xmm6, 984(%rsp)                              #116.24
        movq      %rsi, 2640(%rsp)                              #116.24
        movl      %edx, 2480(%rsp)                              #116.24
        vmovddup  %xmm6, %xmm2                                  #98.1
        vmovddup  %xmm5, %xmm3                                  #98.1
        vmovddup  %xmm11, %xmm1                                 #98.1
        movslq    %ecx, %rcx                                    #107.9
        vpunpcklqdq %xmm12, %xmm14, %xmm14                      #116.11
        vpunpcklqdq %xmm12, %xmm15, %xmm12                      #111.38
        shlq      $3, %r14                                      #117.48
        shlq      $3, %r11                                      #117.61
        vmovdqu   864(%rsp), %xmm13                             #116.24
        movq      928(%rsp), %r15                               #116.24
        vmovupd   784(%rsp), %xmm6                              #116.24
        vmovupd   800(%rsp), %xmm9                              #116.24
        vmovdqu   768(%rsp), %xmm10                             #116.24
        movq      912(%rsp), %rsi                               #116.24
        movq      2184(%rsp), %rdx                              #116.24
        vmovsd    %xmm11, 968(%rsp)                             #116.24
        vmovsd    %xmm5, 976(%rsp)                              #116.24
        movq      %r9, 1056(%rsp)                               #116.24
        movq      %r8, 1064(%rsp)                               #116.24
        movl      %edi, 2648(%rsp)                              #116.24
                                # LOE rdx rcx rsi r11 r13 r14 r15 eax ebx r10d r12d xmm0 xmm1 xmm2 xmm3 xmm4 xmm6 xmm7 xmm8 xmm9 xmm10 xmm12 xmm13 xmm14
..B3.240:                       # Preds ..B3.240 ..B3.239
        vpcmpeqd  %xmm10, %xmm14, %xmm11                        #111.25
        movl      %r13d, %edi                                   #116.37
        vpblendvb %xmm11, %xmm13, %xmm12, %xmm15                #111.38
        addl      %r12d, %edi                                   #116.37
        vpaddd    %xmm4, %xmm14, %xmm14                         #116.11
        vpaddd    %xmm4, %xmm12, %xmm12                         #111.38
        vmovd     %xmm15, %r9                                   #116.50
        movslq    %r9d, %r8                                     #116.50
        sarq      $32, %r9                                      #116.50
        movslq    %edi, %rdi                                    #116.37
        vmovq     (%rdx,%r8,8), %xmm5                           #116.50
        vmovhpd   (%rdx,%r9,8), %xmm5, %xmm11                   #116.50
        vmulpd    %xmm11, %xmm6, %xmm5                          #117.61
        vfmadd231pd (%rdx,%rdi,8), %xmm9, %xmm5                 #117.61
        vmovd     %xmm13, %rdi                                  #117.35
        vpaddd    %xmm4, %xmm13, %xmm13                         #107.9
        vfmadd231pd 8(%rsi,%r13,8), %xmm2, %xmm5                #117.61
        movslq    %edi, %r8                                     #117.35
        sarq      $32, %rdi                                     #117.35
        vmovq     (%rdx,%r8,8), %xmm15                          #117.35
        vmovhpd   (%rdx,%rdi,8), %xmm15, %xmm11                 #117.35
        vmulpd    (%r11,%rdx), %xmm1, %xmm15                    #117.61
        vfmadd231pd (%r14,%rdx), %xmm3, %xmm15                  #117.61
        addq      $16, %r14                                     #107.9
        vfmadd231pd %xmm0, %xmm11, %xmm15                       #117.61
        addq      $16, %r11                                     #107.9
        vaddpd    %xmm5, %xmm15, %xmm5                          #117.61
        vmovupd   %xmm5, 8(%r15,%r13,8)                         #116.11
        addq      $2, %r13                                      #107.9
        cmpq      %rcx, %r13                                    #107.9
        jb        ..B3.240      # Prob 82%                      #107.9
                                # LOE rdx rcx rsi r11 r13 r14 r15 eax ebx r10d r12d xmm0 xmm1 xmm2 xmm3 xmm4 xmm6 xmm7 xmm8 xmm9 xmm10 xmm12 xmm13 xmm14
..B3.241:                       # Preds ..B3.240
        vmovsd    952(%rsp), %xmm9                              #
        vmovsd    960(%rsp), %xmm10                             #
        vmovsd    968(%rsp), %xmm11                             #
        vmovsd    976(%rsp), %xmm5                              #
        vmovsd    984(%rsp), %xmm6                              #
        movq      1056(%rsp), %r9                               #
        movq      1064(%rsp), %r8                               #
        movq      2640(%rsp), %rsi                              #
        movl      2648(%rsp), %edi                              #
        movl      2480(%rsp), %edx                              #
                                # LOE rcx rsi r8 r9 eax edx ebx edi r10d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.242:                       # Preds ..B3.241 ..B3.399
        movl      %ecx, %r12d                                   #107.9
        lea       (%rax,%r12), %r11d                            #107.9
        cmpl      %ebx, %r12d                                   #107.9
        jae       ..B3.433      # Prob 10%                      #107.9
                                # LOE rcx rsi r8 r9 eax edx ebx edi r10d r11d r12d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.243:                       # Preds ..B3.242
        addl      %eax, %r10d                                   #107.9
        vaddsd    %xmm10, %xmm9, %xmm0                          #117.61
        movslq    %eax, %rax                                    #112.11
        addl      %r12d, %r10d                                  #107.9
        addq      %rax, %rsi                                    #107.9
        movslq    %edi, %rdi                                    #114.11
        addq      %rax, %rdi                                    #107.9
        movl      %edx, 2480(%rsp)                              #111.25
        lea       (%r9,%rax,8), %r9                             #116.24
        lea       1(%rcx,%rsi), %r14                            #112.11
        movq      2432(%rsp), %rsi                              #107.9
        addq      %rax, %rsi                                    #107.9
        lea       1(%rcx,%rdi), %r13                            #114.11
        lea       1(%rcx,%rsi), %rdi                            #115.11
        lea       (%r8,%rax,8), %rsi                            #116.11
        lea       -2(%rdx), %r8d                                #111.25
        movq      2184(%rsp), %rdx                              #111.25
        .align    16,0x90
                                # LOE rdx rcx rsi rdi r9 r13 r14 ebx r8d r10d r11d r12d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.244:                       # Preds ..B3.244 ..B3.243
        cmpl      %r8d, %r11d                                   #116.11
        lea       1(%r10), %eax                                 #107.9
        vmulsd    (%rdx,%rdi,8), %xmm11, %xmm1                  #116.11
        lea       2(%r10), %r15d                                #111.38
        vmulsd    (%rdx,%r14,8), %xmm0, %xmm2                   #116.11
        cmove     %eax, %r15d                                   #116.11
        incl      %r12d                                         #107.9
        movslq    %r15d, %r15                                   #116.50
        incq      %r14                                          #107.9
        vfmadd231sd (%rdx,%r13,8), %xmm5, %xmm2                 #116.11
        incq      %r13                                          #107.9
        vfmadd231sd (%rdx,%r15,8), %xmm7, %xmm1                 #116.11
        movslq    %r10d, %r10                                   #116.37
        incq      %rdi                                          #107.9
        vfmadd231sd 8(%r9,%rcx,8), %xmm6, %xmm1                 #116.11
        incl      %r11d                                         #107.9
        vfmadd231sd (%rdx,%r10,8), %xmm8, %xmm2                 #116.11
        movl      %eax, %r10d                                   #107.9
        vaddsd    %xmm2, %xmm1, %xmm3                           #116.11
        vmovsd    %xmm3, 8(%rsi,%rcx,8)                         #116.11
        incq      %rcx                                          #107.9
        cmpl      %ebx, %r12d                                   #107.9
        jb        ..B3.244      # Prob 82%                      #107.9
                                # LOE rdx rcx rsi rdi r9 r13 r14 ebx r8d r10d r11d r12d xmm0 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.245:                       # Preds ..B3.244
        movl      2480(%rsp), %edx                              #
        jmp       ..B3.433      # Prob 100%                     #
                                # LOE edx xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.247:                       # Preds ..B3.205
        cmpl      $8, %r11d                                     #107.9
        jl        ..B3.409      # Prob 10%                      #107.9
                                # LOE r8 r9 edx ebx edi r10d r11d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.248:                       # Preds ..B3.247
        cmpl      $15, %r11d                                    #107.9
        jl        ..B3.411      # Prob 10%                      #107.9
                                # LOE r8 r9 edx ebx edi r10d r11d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.249:                       # Preds ..B3.248
        lea       8(%r8), %rsi                                  #116.11
        andq      $31, %rsi                                     #107.9
        testl     %esi, %esi                                    #107.9
        je        ..B3.252      # Prob 50%                      #107.9
                                # LOE r8 r9 edx ebx esi edi r10d r11d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.250:                       # Preds ..B3.249
        testl     $7, %esi                                      #107.9
        jne       ..B3.409      # Prob 10%                      #107.9
                                # LOE r8 r9 edx ebx esi edi r10d r11d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.251:                       # Preds ..B3.250
        negl      %esi                                          #107.9
        addl      $32, %esi                                     #107.9
        shrl      $3, %esi                                      #107.9
                                # LOE r8 r9 edx ebx esi edi r10d r11d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.252:                       # Preds ..B3.251 ..B3.249
        lea       8(%rsi), %eax                                 #107.9
        cmpl      %eax, %r11d                                   #107.9
        jl        ..B3.409      # Prob 10%                      #107.9
                                # LOE r8 r9 edx ebx esi edi r10d r11d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.253:                       # Preds ..B3.252
        movl      %r11d, %ecx                                   #107.9
        lea       (%rdx,%rbx), %r12d                            #113.37
        subl      %esi, %ecx                                    #107.9
        xorl      %r13d, %r13d                                  #107.9
        andl      $7, %ecx                                      #107.9
        lea       (%rdi,%r12), %eax                             #107.9
        negl      %ecx                                          #107.9
        addl      %r11d, %ecx                                   #107.9
        movl      %r10d, 2472(%rsp)                             #107.9
        movq      $0, 2456(%rsp)                                #107.9
        testl     %esi, %esi                                    #107.9
        jbe       ..B3.257      # Prob 10%                      #107.9
                                # LOE r8 r9 r10 eax edx ecx ebx esi edi r10d r11d r12d r13d r10b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.254:                       # Preds ..B3.253
        movl      %r10d, 2664(%rsp)                             #111.25
        lea       1(%rdi,%r12), %r15d                           #107.9
        movl      %ecx, 2672(%rsp)                              #111.25
        lea       1(%rdi), %r14d                                #107.9
        movl      %edi, 2648(%rsp)                              #111.25
        lea       -2(%rdx), %r12d                               #111.25
        movl      %ebx, 2656(%rsp)                              #111.25
        movl      %edx, 2480(%rsp)                              #111.25
        movslq    %r15d, %r15                                   #107.9
        movslq    %r14d, %r14                                   #107.9
        movl      %eax, 2704(%rsp)                              #111.25
        movl      %r11d, 2696(%rsp)                             #111.25
        movl      2440(%rsp), %r10d                             #111.25
        movq      2456(%rsp), %rdx                              #111.25
        movl      2472(%rsp), %ecx                              #111.25
        movq      2184(%rsp), %rbx                              #111.25
        movl      2800(%rsp), %edi                              #111.25
        .align    16,0x90
                                # LOE rdx rbx r8 r9 r14 r15 ecx esi edi r10d r12d r13d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.255:                       # Preds ..B3.255 ..B3.254
        cmpl      2840(%rsp), %edi                              #116.11
        lea       1(%rcx), %r11d                                #107.9
        vmulsd    (%rbx,%r15,8), %xmm10, %xmm0                  #116.11
        lea       1(%r13,%r10), %eax                            #111.11
        vmulsd    8(%r9,%rdx,8), %xmm6, %xmm3                   #116.11
        cmove     %r11d, %eax                                   #116.11
        cmpl      %r12d, %r13d                                  #116.11
        movslq    %r11d, %r11                                   #117.35
        movslq    %eax, %rax                                    #117.61
        vmulsd    (%rbx,%r11,8), %xmm9, %xmm1                   #116.11
        vfmadd231sd (%rbx,%rax,8), %xmm11, %xmm0                #116.11
        vfmadd231sd (%rbx,%r14,8), %xmm5, %xmm1                 #116.11
        lea       2(%rcx), %eax                                 #111.38
        movslq    %ecx, %rcx                                    #116.37
        cmove     %r11d, %eax                                   #116.11
        incl      %r13d                                         #107.9
        movslq    %eax, %rax                                    #116.50
        incq      %r15                                          #107.9
        incq      %r14                                          #107.9
        vaddsd    %xmm1, %xmm0, %xmm2                           #116.11
        vfmadd231sd (%rbx,%rcx,8), %xmm8, %xmm3                 #116.11
        vfmadd231sd (%rbx,%rax,8), %xmm7, %xmm3                 #116.11
        movl      %r11d, %ecx                                   #107.9
        vaddsd    %xmm3, %xmm2, %xmm4                           #116.11
        vmovsd    %xmm4, 8(%r8,%rdx,8)                          #116.11
        incq      %rdx                                          #107.9
        cmpl      %esi, %r13d                                   #107.9
        jb        ..B3.255      # Prob 82%                      #107.9
                                # LOE rdx rbx r8 r9 r14 r15 ecx esi edi r10d r12d r13d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.256:                       # Preds ..B3.255
        movl      2664(%rsp), %r10d                             #
        movl      2672(%rsp), %ecx                              #
        movl      2704(%rsp), %eax                              #
        movl      2696(%rsp), %r11d                             #
        movl      2648(%rsp), %edi                              #
        movl      2656(%rsp), %ebx                              #
        movl      2480(%rsp), %edx                              #
                                # LOE r8 r9 eax edx ecx ebx esi edi r10d r11d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.257:                       # Preds ..B3.253 ..B3.256 ..B3.411
        movl      2440(%rsp), %r12d                             #115.43
        lea       1(%rsi), %r15d                                #116.11
        vbroadcastsd %xmm10, %ymm12                             #98.1
        movl      $8, %r14d                                     #116.11
        vbroadcastsd %xmm5, %ymm3                               #98.1
        vmovd     %r11d, %xmm14                                 #111.25
        vbroadcastsd %xmm11, %ymm2                              #98.1
        vbroadcastsd %xmm9, %ymm4                               #98.1
        vbroadcastsd %xmm7, %ymm13                              #98.1
        vmovsd    %xmm7, 936(%rsp)                              #107.9
        vmovsd    %xmm8, 944(%rsp)                              #107.9
        vmovsd    %xmm9, 952(%rsp)                              #107.9
        vmovupd   %ymm12, 1952(%rsp)                            #98.1
        lea       1(%rsi,%r12), %r13d                           #115.43
        vmovd     %r15d, %xmm12                                 #116.11
        vmovsd    %xmm10, 960(%rsp)                             #107.9
        vmovsd    %xmm11, 968(%rsp)                             #107.9
        vmovd     %r13d, %xmm1                                  #115.43
        vpbroadcastd %xmm1, %ymm15                              #115.43
        lea       1(%rsi,%r10), %r12d                           #107.9
        lea       .L_2il0floatpacket.24(%rip), %r15             #115.43
        vpaddd    (%r15), %ymm15, %ymm1                         #115.43
        lea       2(%rsi,%r10), %r13d                           #111.38
        vmovsd    %xmm5, 976(%rsp)                              #107.9
        vmovsd    %xmm6, 984(%rsp)                              #107.9
        vmovupd   %ymm3, 1920(%rsp)                             #98.1
        vmovupd   %ymm2, 1888(%rsp)                             #98.1
        vmovd     %r12d, %xmm2                                  #107.9
        vmovupd   %ymm4, 1984(%rsp)                             #98.1
        vmovd     %r14d, %xmm4                                  #116.11
        vmovupd   %ymm13, 1856(%rsp)                            #107.9
        vbroadcastsd %xmm8, %ymm0                               #98.1
        vpbroadcastd %xmm14, %ymm15                             #111.25
        vbroadcastsd %xmm6, %ymm14                              #98.1
        vmovdqu   %ymm15, 1792(%rsp)                            #107.9
        vmovupd   %ymm14, 1824(%rsp)                            #107.9
        vpbroadcastd %xmm12, %ymm3                              #116.11
        vpaddd    (%r15), %ymm3, %ymm12                         #116.11
        vpbroadcastd %xmm2, %ymm3                               #107.9
        vmovd     %r13d, %xmm2                                  #111.38
        vpbroadcastd %xmm2, %ymm2                               #111.38
        movl      %ebx, 2656(%rsp)                              #107.9
        vpbroadcastd %xmm4, %ymm4                               #116.11
        lea       .L_2il0floatpacket.24(%rip), %rbx             #107.9
        vpaddd    (%rbx), %ymm3, %ymm3                          #107.9
        vpaddd    (%rbx), %ymm2, %ymm2                          #111.38
        movl      %esi, %esi                                    #107.9
        movslq    %ecx, %r12                                    #107.9
        movl      %edx, 2480(%rsp)                              #107.9
        movl      2840(%rsp), %ebx                              #107.9
        movq      2184(%rsp), %r13                              #107.9
        movl      2800(%rsp), %r14d                             #107.9
                                # LOE rsi r8 r9 r12 r13 eax ecx ebx edi r10d r11d r14d ymm0 ymm1 ymm2 ymm3 ymm4 ymm12
..B3.258:                       # Preds ..B3.261 ..B3.257
        cmpl      %ebx, %r14d                                   #115.24
        jne       ..B3.260      # Prob 50%                      #115.24
                                # LOE rsi r8 r9 r12 r13 eax ecx ebx edi r10d r11d r14d ymm0 ymm1 ymm2 ymm3 ymm4 ymm12
..B3.259:                       # Preds ..B3.258
        vmovdqa   %ymm3, %ymm6                                  #115.11
        jmp       ..B3.261      # Prob 100%                     #115.11
                                # LOE rsi r8 r9 r12 r13 eax ecx ebx edi r10d r11d r14d ymm0 ymm1 ymm2 ymm3 ymm4 ymm6 ymm12
..B3.260:                       # Preds ..B3.258
        vmovdqa   %ymm1, %ymm6                                  #115.11
                                # LOE rsi r8 r9 r12 r13 eax ecx ebx edi r10d r11d r14d ymm0 ymm1 ymm2 ymm3 ymm4 ymm6 ymm12
..B3.261:                       # Preds ..B3.259 ..B3.260
        vpcmpeqd  1792(%rsp), %ymm12, %ymm7                     #111.25
        movl      %esi, %r15d                                   #110.11
        vpblendvb %ymm7, %ymm3, %ymm2, %ymm9                    #111.38
        vmovupd   1856(%rsp), %ymm15                            #117.61
        vmovupd   1824(%rsp), %ymm13                            #117.61
        vpaddd    %ymm4, %ymm1, %ymm1                           #115.43
        vpaddd    %ymm4, %ymm12, %ymm12                         #116.11
        vpaddd    %ymm4, %ymm2, %ymm2                           #111.38
        vpcmpeqd  %ymm5, %ymm5, %ymm5                           #116.50
        lea       (%r10,%r15), %edx                             #107.9
        vxorpd    %ymm11, %ymm11, %ymm11                        #116.50
        vmovdqa   %ymm5, %ymm8                                  #116.50
        vxorpd    %ymm14, %ymm14, %ymm14                        #116.50
        vmovdqa   %ymm5, %ymm7                                  #116.50
        movslq    %edx, %rdx                                    #110.11
        vextracti128 $1, %ymm9, %xmm10                          #116.50
        vgatherdpd %ymm8, (%r13,%xmm9,8), %ymm11                #116.50
        vgatherdpd %ymm7, (%r13,%xmm10,8), %ymm14               #116.50
        vmulpd    %ymm11, %ymm15, %ymm9                         #117.61
        vmulpd    %ymm14, %ymm15, %ymm10                        #117.61
        vfmadd231pd (%r13,%rdx,8), %ymm0, %ymm9                 #117.61
        vfmadd231pd 32(%r13,%rdx,8), %ymm0, %ymm10              #117.61
        vfmadd231pd 8(%r9,%rsi,8), %ymm13, %ymm9                #117.61
        vfmadd231pd 40(%r9,%rsi,8), %ymm13, %ymm10              #117.61
        vxorpd    %ymm8, %ymm8, %ymm8                           #117.35
        lea       (%rax,%r15), %edx                             #107.9
        vmovdqa   %ymm5, %ymm7                                  #117.35
        addl      %edi, %r15d                                   #107.9
        vmovdqa   %ymm5, %ymm15                                 #117.35
        vxorpd    %ymm14, %ymm14, %ymm14                        #117.61
        movslq    %edx, %rdx                                    #113.11
        movslq    %r15d, %r15                                   #114.11
        vextracti128 $1, %ymm3, %xmm11                          #117.35
        vgatherdpd %ymm7, (%r13,%xmm3,8), %ymm8                 #117.35
        vpaddd    %ymm4, %ymm3, %ymm3                           #107.9
        vxorpd    %ymm7, %ymm7, %ymm7                           #117.35
        vgatherdpd %ymm15, (%r13,%xmm11,8), %ymm7               #117.35
        vmovdqa   %ymm5, %ymm15                                 #117.61
        vgatherdpd %ymm15, (%r13,%xmm6,8), %ymm14               #117.61
        vmovupd   1888(%rsp), %ymm15                            #117.61
        vextracti128 $1, %ymm6, %xmm13                          #117.61
        vmovupd   1952(%rsp), %ymm6                             #117.61
        vmulpd    %ymm14, %ymm15, %ymm11                        #117.61
        vxorpd    %ymm14, %ymm14, %ymm14                        #117.61
        vgatherdpd %ymm5, (%r13,%xmm13,8), %ymm14               #117.61
        vmovupd   1920(%rsp), %ymm13                            #117.61
        vfmadd231pd 8(%r13,%rdx,8), %ymm6, %ymm11               #117.61
        vmulpd    %ymm14, %ymm15, %ymm15                        #117.61
        vmovupd   1984(%rsp), %ymm14                            #117.61
        vfmadd231pd 40(%r13,%rdx,8), %ymm6, %ymm15              #117.61
        .byte     144                                           #117.61
        vmulpd    8(%r13,%r15,8), %ymm13, %ymm6                 #117.61
        vmulpd    40(%r13,%r15,8), %ymm13, %ymm13               #117.61
        vfmadd231pd %ymm14, %ymm8, %ymm6                        #117.61
        vfmadd231pd %ymm14, %ymm7, %ymm13                       #117.61
        vaddpd    %ymm11, %ymm6, %ymm5                          #117.61
        vaddpd    %ymm15, %ymm13, %ymm7                         #117.61
        vaddpd    %ymm9, %ymm5, %ymm8                           #117.61
        vaddpd    %ymm10, %ymm7, %ymm9                          #117.61
        vmovupd   %ymm8, 8(%r8,%rsi,8)                          #116.11
        vmovupd   %ymm9, 40(%r8,%rsi,8)                         #116.11
        addq      $8, %rsi                                      #107.9
        cmpq      %r12, %rsi                                    #107.9
        jb        ..B3.258      # Prob 82%                      #107.9
                                # LOE rsi r8 r9 r12 r13 eax ecx ebx edi r10d r11d r14d ymm0 ymm1 ymm2 ymm3 ymm4 ymm12
..B3.262:                       # Preds ..B3.261
        movq      %r13, 2184(%rsp)                              #
        movl      %r14d, 2800(%rsp)                             #
        vmovsd    936(%rsp), %xmm7                              #
        vmovsd    944(%rsp), %xmm8                              #
        vmovsd    952(%rsp), %xmm9                              #
        vmovsd    960(%rsp), %xmm10                             #
        vmovsd    968(%rsp), %xmm11                             #
        vmovsd    976(%rsp), %xmm5                              #
        vmovsd    984(%rsp), %xmm6                              #
        movl      2656(%rsp), %ebx                              #
        movl      2480(%rsp), %edx                              #
                                # LOE r8 r9 edx ecx ebx edi r10d r11d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.263:                       # Preds ..B3.262 ..B3.409
        lea       1(%rcx), %esi                                 #107.9
        cmpl      %esi, %r11d                                   #107.9
        jb        ..B3.276      # Prob 50%                      #107.9
                                # LOE r8 r9 edx ecx ebx esi edi r10d r11d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.264:                       # Preds ..B3.263
        movl      %r11d, %eax                                   #107.9
        subl      %ecx, %eax                                    #107.9
        cmpl      $2, %eax                                      #107.9
        jl        ..B3.407      # Prob 10%                      #107.9
                                # LOE r8 r9 eax edx ecx ebx esi edi r10d r11d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.265:                       # Preds ..B3.264
        vmovddup  %xmm10, %xmm13                                #98.1
        lea       1(%rcx,%r10), %r13d                           #107.9
        vmovupd   %xmm13, 112(%rsp)                             #98.1
        lea       2(%rcx), %r12d                                #116.11
        vmovd     %r11d, %xmm3                                  #111.25
        lea       2(%rcx,%r10), %r15d                           #111.38
        movl      $2, %r11d                                     #116.11
        vmovd     %esi, %xmm1                                   #116.11
        vmovd     %r13d, %xmm13                                 #107.9
        incl      %r13d                                         #107.9
        vmovddup  %xmm9, %xmm0                                  #98.1
        movl      %eax, %r14d                                   #107.9
        vmovddup  %xmm5, %xmm15                                 #98.1
        vpxor     %xmm14, %xmm14, %xmm14                        #116.11
        vmovupd   %xmm0, 128(%rsp)                              #98.1
        vmovd     %r12d, %xmm0                                  #116.11
        vmovupd   %xmm15, 96(%rsp)                              #98.1
        vmovd     %r13d, %xmm15                                 #107.9
        movl      2440(%rsp), %esi                              #115.43
        lea       (%rdx,%rbx), %r12d                            #113.37
        vpunpckldq %xmm0, %xmm1, %xmm1                          #116.11
        andl      $-2, %r14d                                    #107.9
        vpunpckldq %xmm15, %xmm13, %xmm0                        #107.9
        vmovd     %r15d, %xmm13                                 #111.38
        incl      %r15d                                         #111.38
        addl      %edi, %r12d                                   #107.9
        vmovddup  %xmm7, %xmm4                                  #98.1
        addl      %ecx, %r12d                                   #107.9
        vmovupd   %xmm4, 144(%rsp)                              #98.1
        vmovd     %r11d, %xmm4                                  #116.11
        movslq    %r14d, %r14                                   #107.9
        lea       1(%rsi,%rcx), %r11d                           #115.43
        vmovd     %r15d, %xmm15                                 #111.38
        lea       (%rcx,%rdi), %r15d                            #107.9
        vpunpckldq %xmm15, %xmm13, %xmm13                       #111.38
        vpunpcklqdq %xmm14, %xmm13, %xmm15                      #111.38
        vmovd     %r11d, %xmm13                                 #115.43
        incl      %r11d                                         #115.43
        movq      %r14, 2448(%rsp)                              #107.9
        lea       (%rcx,%r10), %r14d                            #107.9
        movslq    %ecx, %rcx                                    #116.24
        vmovdqu   %xmm15, 160(%rsp)                             #111.38
        vmovd     %r11d, %xmm15                                 #115.43
        xorl      %r11d, %r11d                                  #107.9
        vpbroadcastd %xmm3, %xmm3                               #111.25
        vpunpckldq %xmm15, %xmm13, %xmm13                       #115.43
        lea       (%r8,%rcx,8), %r13                            #116.11
        vmovsd    %xmm7, 936(%rsp)                              #116.24
        lea       (%r9,%rcx,8), %rsi                            #116.24
        vmovsd    %xmm8, 944(%rsp)                              #116.24
        vmovsd    %xmm9, 952(%rsp)                              #116.24
        vmovsd    %xmm6, 984(%rsp)                              #116.24
        movl      %ecx, 2672(%rsp)                              #116.24
        movq      %r8, 1064(%rsp)                               #116.24
        movl      %ebx, 2656(%rsp)                              #116.24
        movl      %edx, 2480(%rsp)                              #116.24
        vmovddup  %xmm6, %xmm12                                 #98.1
        vmovddup  %xmm8, %xmm2                                  #98.1
        vpbroadcastd %xmm4, %xmm4                               #116.11
        vpunpcklqdq %xmm14, %xmm1, %xmm1                        #116.11
        vpunpcklqdq %xmm14, %xmm0, %xmm0                        #107.9
        vpunpcklqdq %xmm14, %xmm13, %xmm14                      #115.43
        vmovddup  %xmm11, %xmm13                                #98.1
        vmovdqu   160(%rsp), %xmm15                             #116.24
        vmovupd   96(%rsp), %xmm6                               #116.24
        vmovupd   112(%rsp), %xmm7                              #116.24
        vmovupd   128(%rsp), %xmm8                              #116.24
        vmovupd   144(%rsp), %xmm9                              #116.24
        movq      2448(%rsp), %r8                               #116.24
        movl      2840(%rsp), %edx                              #116.24
        movq      2184(%rsp), %rcx                              #116.24
        movl      2800(%rsp), %ebx                              #116.24
        vmovdqu   %xmm3, 2736(%rsp)                             #116.24
        vmovsd    %xmm10, 960(%rsp)                             #116.24
        vmovsd    %xmm11, 968(%rsp)                             #116.24
        vmovsd    %xmm5, 976(%rsp)                              #116.24
        movl      %r10d, 2664(%rsp)                             #116.24
        movl      %eax, 2832(%rsp)                              #116.24
        movq      %r9, 1056(%rsp)                               #116.24
        movl      %edi, 2648(%rsp)                              #116.24
                                # LOE rcx rsi r8 r11 r13 edx ebx r12d r14d r15d xmm0 xmm1 xmm2 xmm4 xmm6 xmm7 xmm8 xmm9 xmm12 xmm13 xmm14 xmm15
..B3.266:                       # Preds ..B3.269 ..B3.265
        cmpl      %edx, %ebx                                    #115.24
        jne       ..B3.268      # Prob 50%                      #115.24
                                # LOE rcx rsi r8 r11 r13 edx ebx r12d r14d r15d xmm0 xmm1 xmm2 xmm4 xmm6 xmm7 xmm8 xmm9 xmm12 xmm13 xmm14 xmm15
..B3.267:                       # Preds ..B3.266
        vmovdqa   %xmm0, %xmm10                                 #115.11
        jmp       ..B3.269      # Prob 100%                     #115.11
                                # LOE rcx rsi r8 r11 r13 edx ebx r12d r14d r15d xmm0 xmm1 xmm2 xmm4 xmm6 xmm7 xmm8 xmm9 xmm10 xmm12 xmm13 xmm14 xmm15
..B3.268:                       # Preds ..B3.266
        vmovdqa   %xmm14, %xmm10                                #115.11
                                # LOE rcx rsi r8 r11 r13 edx ebx r12d r14d r15d xmm0 xmm1 xmm2 xmm4 xmm6 xmm7 xmm8 xmm9 xmm10 xmm12 xmm13 xmm14 xmm15
..B3.269:                       # Preds ..B3.267 ..B3.268
        vpcmpeqd  2736(%rsp), %xmm1, %xmm11                     #111.25
        movl      %r11d, %edi                                   #110.11
        vpblendvb %xmm11, %xmm0, %xmm15, %xmm5                  #111.38
        vpaddd    %xmm4, %xmm14, %xmm14                         #115.43
        vpaddd    %xmm4, %xmm1, %xmm1                           #116.11
        vpaddd    %xmm4, %xmm15, %xmm15                         #111.38
        vmovd     %xmm5, %rax                                   #116.50
        movslq    %eax, %r10                                    #116.50
        lea       (%r14,%rdi), %r9d                             #116.37
        sarq      $32, %rax                                     #116.50
        movslq    %r9d, %r9                                     #116.37
        vmovq     (%rcx,%r10,8), %xmm3                          #116.50
        vmovhpd   (%rcx,%rax,8), %xmm3, %xmm11                  #116.50
        vmovd     %xmm0, %rax                                   #117.35
        vpaddd    %xmm4, %xmm0, %xmm0                           #107.9
        vmulpd    %xmm11, %xmm9, %xmm5                          #117.61
        movslq    %eax, %r10                                    #117.35
        sarq      $32, %rax                                     #117.35
        vfmadd231pd (%rcx,%r9,8), %xmm2, %xmm5                  #117.61
        vmovq     (%rcx,%r10,8), %xmm3                          #117.35
        vmovd     %xmm10, %r10                                  #117.61
        vmovhpd   (%rcx,%rax,8), %xmm3, %xmm3                   #117.35
        vfmadd231pd 8(%rsi,%r11,8), %xmm12, %xmm5               #117.61
        movslq    %r10d, %r9                                    #117.61
        lea       (%r12,%rdi), %eax                             #117.22
        sarq      $32, %r10                                     #117.61
        addl      %r15d, %edi                                   #117.48
        movslq    %edi, %rdi                                    #117.48
        movslq    %eax, %rax                                    #117.22
        vmovq     (%rcx,%r9,8), %xmm10                          #117.61
        vmovhpd   (%rcx,%r10,8), %xmm10, %xmm10                 #117.61
        vmulpd    %xmm10, %xmm13, %xmm10                        #117.61
        vmulpd    8(%rcx,%rdi,8), %xmm6, %xmm11                 #117.61
        vfmadd231pd 8(%rcx,%rax,8), %xmm7, %xmm10               #117.61
        vfmadd231pd %xmm8, %xmm3, %xmm11                        #117.61
        vaddpd    %xmm10, %xmm11, %xmm3                         #117.61
        vaddpd    %xmm5, %xmm3, %xmm5                           #117.61
        vmovupd   %xmm5, 8(%r13,%r11,8)                         #116.11
        addq      $2, %r11                                      #107.9
        cmpq      %r8, %r11                                     #107.9
        jb        ..B3.266      # Prob 82%                      #107.9
                                # LOE rcx rsi r8 r11 r13 edx ebx r12d r14d r15d xmm0 xmm1 xmm2 xmm4 xmm6 xmm7 xmm8 xmm9 xmm12 xmm13 xmm14 xmm15
..B3.270:                       # Preds ..B3.269
        movq      %r8, 2448(%rsp)                               #
        movq      %rcx, 2184(%rsp)                              #
        movl      %ebx, 2800(%rsp)                              #
        vmovsd    936(%rsp), %xmm7                              #
        vmovsd    944(%rsp), %xmm8                              #
        vmovsd    952(%rsp), %xmm9                              #
        vmovsd    960(%rsp), %xmm10                             #
        vmovsd    968(%rsp), %xmm11                             #
        vmovsd    976(%rsp), %xmm5                              #
        vmovsd    984(%rsp), %xmm6                              #
        movl      2664(%rsp), %r10d                             #
        movl      2832(%rsp), %eax                              #
        movl      2672(%rsp), %ecx                              #
        movq      1056(%rsp), %r9                               #
        movq      1064(%rsp), %r8                               #
        movl      2648(%rsp), %edi                              #
        movl      2656(%rsp), %ebx                              #
        movl      2480(%rsp), %edx                              #
                                # LOE r8 r9 eax edx ecx ebx edi r10d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.271:                       # Preds ..B3.270 ..B3.407
        movq      2448(%rsp), %r13                              #107.9
        lea       (%rcx,%r13), %r12d                            #107.9
        cmpl      %eax, %r13d                                   #107.9
        jae       ..B3.276      # Prob 10%                      #107.9
                                # LOE r8 r9 eax edx ecx ebx edi r10d r12d r13d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.272:                       # Preds ..B3.271
        addl      %edx, %ebx                                    #113.37
        addl      %ecx, %r10d                                   #107.9
        addl      %edi, %ebx                                    #107.9
        addl      %ecx, %edi                                    #107.9
        addl      %ecx, %ebx                                    #107.9
        lea       -2(%rdx), %r14d                               #111.25
        movslq    %ecx, %rcx                                    #116.24
        addl      %r13d, %r10d                                  #107.9
        movl      %r14d, 2848(%rsp)                             #116.24
        movl      %eax, 2832(%rsp)                              #116.24
        lea       1(%r13,%rdi), %r11d                           #107.9
        movslq    %r11d, %r11                                   #107.9
        lea       1(%r13,%rbx), %edi                            #107.9
        movslq    %edi, %rdi                                    #107.9
        lea       (%r8,%rcx,8), %rsi                            #116.11
        movl      %edx, 2480(%rsp)                              #116.24
        lea       (%r9,%rcx,8), %rbx                            #116.24
        movq      2448(%rsp), %r15                              #116.24
        movl      2440(%rsp), %r8d                              #116.24
        movq      2184(%rsp), %r9                               #116.24
        movl      2800(%rsp), %r14d                             #116.24
                                # LOE rbx rsi rdi r9 r11 r15 ecx r8d r10d r12d r13d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.273:                       # Preds ..B3.273 ..B3.272
        vmulsd    (%r9,%rdi,8), %xmm10, %xmm0                   #116.11
        lea       1(%rcx,%r8), %eax                             #107.9
        vmulsd    8(%rbx,%r15,8), %xmm6, %xmm3                  #116.11
        addl      %r13d, %eax                                   #111.11
        lea       1(%r10), %edx                                 #107.9
        cmpl      2840(%rsp), %r14d                             #116.11
        cmove     %edx, %eax                                    #116.11
        incl      %r13d                                         #107.9
        movslq    %edx, %rdx                                    #117.35
        incq      %rdi                                          #107.9
        movslq    %eax, %rax                                    #117.61
        cmpl      2848(%rsp), %r12d                             #116.11
        vmulsd    (%r9,%rdx,8), %xmm9, %xmm1                    #116.11
        vfmadd231sd (%r9,%rax,8), %xmm11, %xmm0                 #116.11
        vfmadd231sd (%r9,%r11,8), %xmm5, %xmm1                  #116.11
        lea       2(%r10), %eax                                 #111.38
        movslq    %r10d, %r10                                   #116.37
        cmove     %edx, %eax                                    #116.11
        incq      %r11                                          #107.9
        movslq    %eax, %rax                                    #116.50
        incl      %r12d                                         #107.9
        vaddsd    %xmm1, %xmm0, %xmm2                           #116.11
        vfmadd231sd (%r9,%r10,8), %xmm8, %xmm3                  #116.11
        vfmadd231sd (%r9,%rax,8), %xmm7, %xmm3                  #116.11
        movl      %edx, %r10d                                   #107.9
        vaddsd    %xmm3, %xmm2, %xmm4                           #116.11
        vmovsd    %xmm4, 8(%rsi,%r15,8)                         #116.11
        incq      %r15                                          #107.9
        cmpl      2832(%rsp), %r13d                             #107.9
        jb        ..B3.273      # Prob 82%                      #107.9
                                # LOE rbx rsi rdi r9 r11 r15 ecx r8d r10d r12d r13d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.274:                       # Preds ..B3.273
        movl      2480(%rsp), %edx                              #
        cmpl      $2, 2160(%rsp)                                #105.7
        jge       ..B3.277      # Prob 90%                      #105.7
        jmp       ..B3.433      # Prob 100%                     #105.7
                                # LOE rdx edx dl dh xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.276:                       # Preds ..B3.271 ..B3.263 ..B3.204
        cmpl      $2, 2160(%rsp)                                #105.7
        jl        ..B3.433      # Prob 10%                      #105.7
                                # LOE edx xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.277:                       # Preds ..B3.276 ..B3.274
        movl      2160(%rsp), %eax                              #101.31
        xorl      %ecx, %ecx                                    #110.11
        movq      2184(%rsp), %rbx                              #101.31
        vaddsd    %xmm6, %xmm8, %xmm4                           #101.31
        lea       -1(%rax), %eax                                #101.31
        movl      %eax, 1048(%rsp)                              #101.31
                                # LOE rbx edx ecx xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.278:                       # Preds ..B3.311 ..B3.414 ..B3.312 ..B3.313 ..B3.277
                                #      
        movl      2160(%rsp), %edi                              #109.34
        movl      %ecx, %r10d                                   #107.9
        movl      %edi, %r11d                                   #109.34
        imull     %edx, %r11d                                   #109.34
        imull     %edx, %r10d                                   #107.9
        movl      2800(%rsp), %r13d                             #107.9
        movl      %r13d, %esi                                   #107.9
        imull     %r11d, %esi                                   #107.9
        lea       (%rdx,%r11), %r14d                            #107.9
        movl      1080(%rsp), %eax                              #115.24
        lea       (%r14,%rsi), %r15d                            #107.9
        movl      %r14d, 2344(%rsp)                             #107.9
        lea       (%r15,%r10), %r9d                             #107.9
        movslq    %r9d, %r9                                     #116.37
        lea       -2(%rdi), %r8d                                #113.24
        movl      %r8d, 2792(%rsp)                              #113.24
        lea       -2(%rax), %edi                                #115.24
        movq      2152(%rsp), %rax                              #116.11
        lea       1(%r15,%r10), %r12d                           #111.38
        movl      %edi, 2784(%rsp)                              #115.24
        addl      %r11d, %r14d                                  #107.9
        addl      %esi, %r14d                                   #107.9
        lea       (%rbx,%r9,8), %r15                            #116.37
        movq      %r15, 2776(%rsp)                              #116.37
        lea       (%rax,%r9,8), %r15                            #116.11
        movq      %r15, 1088(%rsp)                              #116.11
        lea       (%r11,%rdx,2), %r15d                          #107.9
        movl      %r15d, 2616(%rsp)                             #107.9
        addl      %esi, %r15d                                   #107.9
        addl      %r10d, %r15d                                  #107.9
        cmpl      %r8d, %ecx                                    #116.11
        lea       (%rdx,%rsi), %r8d                             #107.9
        cmove     %r9d, %r15d                                   #116.11
        addl      %r10d, %r8d                                   #107.9
        movslq    %r15d, %r15                                   #117.22
        cmpl      $1, %edx                                      #116.11
        movslq    %r8d, %r8                                     #117.48
        lea       (%rsi,%r11), %eax                             #107.9
        movl      %eax, 1112(%rsp)                              #107.9
        lea       (%rax,%r10), %eax                             #107.9
        cmove     %r9d, %r12d                                   #116.11
        addl      %r10d, %r14d                                  #107.9
        vmulsd    (%rbx,%r15,8), %xmm10, %xmm0                  #116.11
        cmpl      %edi, %r13d                                   #116.11
        vmulsd    (%rbx,%r8,8), %xmm5, %xmm1                    #116.11
        movl      %eax, 2352(%rsp)                              #107.9
        cmove     %r9d, %r14d                                   #116.11
        movslq    %eax, %rax                                    #117.35
        movslq    %r12d, %r12                                   #116.50
        movslq    %r14d, %r14                                   #117.61
        movq      2776(%rsp), %r13                              #116.11
        vfmadd231sd (%rbx,%rax,8), %xmm9, %xmm0                 #116.11
        vfmadd231sd (%rbx,%r12,8), %xmm7, %xmm1                 #116.11
        movq      1088(%rsp), %rdi                              #116.11
        vaddsd    %xmm1, %xmm0, %xmm2                           #116.11
        vfmadd231sd (%rbx,%r14,8), %xmm11, %xmm2                #116.11
        vfmadd231sd (%r13), %xmm4, %xmm2                        #116.11
        vmovsd    %xmm2, (%rdi)                                 #116.11
        movl      2616(%rsp), %r8d                              #107.9
        cmpl      $2, %edx                                      #107.9
        jl        ..B3.313      # Prob 50%                      #107.9
                                # LOE rbx rdi r8 edx ecx esi edi r8d r9d r10d r11d dil r8b xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.279:                       # Preds ..B3.278
        lea       -1(%rdx), %eax                                #107.9
        cmpl      $16, %eax                                     #107.9
        jl        ..B3.418      # Prob 10%                      #107.9
                                # LOE rbx rdi r8 eax edx ecx esi edi r8d r9d r10d r11d dil r8b xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.280:                       # Preds ..B3.279
        lea       8(%rdi), %r14                                 #116.11
        andq      $31, %r14                                     #107.9
        testl     %r14d, %r14d                                  #107.9
        je        ..B3.283      # Prob 50%                      #107.9
                                # LOE rbx rdi r8 eax edx ecx esi edi r8d r9d r10d r11d r14d dil r8b xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.281:                       # Preds ..B3.280
        testl     $7, %r14d                                     #107.9
        jne       ..B3.418      # Prob 10%                      #107.9
                                # LOE rbx rdi r8 eax edx ecx esi edi r8d r9d r10d r11d r14d dil r8b xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.282:                       # Preds ..B3.281
        negl      %r14d                                         #107.9
        addl      $32, %r14d                                    #107.9
        shrl      $3, %r14d                                     #107.9
                                # LOE rbx rdi r8 eax edx ecx esi edi r8d r9d r10d r11d r14d dil r8b xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.283:                       # Preds ..B3.282 ..B3.280
        lea       16(%r14), %r12d                               #107.9
        cmpl      %r12d, %eax                                   #107.9
        jl        ..B3.418      # Prob 10%                      #107.9
                                # LOE rbx rdi r8 eax edx ecx esi edi r8d r9d r10d r11d r14d dil r8b xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.284:                       # Preds ..B3.283
        movl      1112(%rsp), %r12d                             #107.9
        movl      2344(%rsp), %r15d                             #107.9
        movl      $0, 2392(%rsp)                                #107.9
        movl      %r9d, 2384(%rsp)                              #107.9
        lea       1(%r10,%r12), %r13d                           #107.9
        movslq    %r13d, %r13                                   #107.9
        movl      %eax, %r12d                                   #107.9
        movq      %r13, 2376(%rsp)                              #107.9
        lea       (%r11,%r15), %r13d                            #107.9
        addl      %esi, %r13d                                   #107.9
        subl      %r14d, %r12d                                  #107.9
        andl      $15, %r12d                                    #107.9
        negl      %r12d                                         #107.9
        addl      %eax, %r12d                                   #107.9
        movl      %r13d, 2424(%rsp)                             #107.9
        lea       (%r10,%r13), %r15d                            #107.9
        movl      %r15d, 1104(%rsp)                             #107.9
        lea       (%rsi,%rdx), %r15d                            #107.9
        movq      $0, 2368(%rsp)                                #107.9
        lea       (%r10,%r15), %r13d                            #107.9
        movl      %r13d, 1096(%rsp)                             #107.9
        testl     %r14d, %r14d                                  #107.9
        jbe       ..B3.288      # Prob 10%                      #107.9
                                # LOE rbx rdi r8 r9 eax edx ecx esi edi r8d r9d r10d r11d r12d r14d r15d dil r8b r9b xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.285:                       # Preds ..B3.284
        movl      %r10d, 2752(%rsp)                             #111.25
        lea       1(%r10,%r15), %r13d                           #107.9
        movl      2424(%rsp), %r15d                             #107.9
        movslq    %r13d, %r13                                   #107.9
        movq      %r13, 2408(%rsp)                              #107.9
        movl      %r9d, 2632(%rsp)                              #111.25
        lea       1(%r10,%r15), %r13d                           #107.9
        movl      %r13d, 2416(%rsp)                             #107.9
        lea       (%rsi,%r8), %r15d                             #107.9
        movl      %r11d, 2760(%rsp)                             #111.25
        lea       1(%r10,%r15), %r13d                           #107.9
        movl      %r12d, 2600(%rsp)                             #111.25
        lea       -2(%rdx), %r15d                               #111.25
        movl      %r8d, 2616(%rsp)                              #111.25
        movl      %esi, 2624(%rsp)                              #111.25
        movl      %r15d, 2824(%rsp)                             #111.25
        movl      %eax, 2608(%rsp)                              #111.25
        movl      %edx, 2480(%rsp)                              #111.25
        movl      2416(%rsp), %r12d                             #111.25
        movq      2408(%rsp), %r9                               #111.25
        movq      2368(%rsp), %rsi                              #111.25
        movq      2376(%rsp), %r8                               #111.25
        movl      2384(%rsp), %r11d                             #111.25
        movl      2392(%rsp), %r10d                             #111.25
                                # LOE rbx rsi rdi r8 r9 ecx r10d r11d r12d r13d r14d xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.286:                       # Preds ..B3.286 ..B3.285
        movq      2776(%rsp), %r15                              #116.11
        lea       1(%r11), %edx                                 #107.9
        vmulsd    (%rbx,%r8,8), %xmm9, %xmm1                    #116.11
        lea       (%r12,%r10), %eax                             #111.11
        vmulsd    8(%r15,%rsi,8), %xmm6, %xmm3                  #116.11
        vfmadd231sd (%rbx,%r9,8), %xmm5, %xmm1                  #116.11
        movl      2800(%rsp), %r15d                             #116.11
        incq      %r8                                           #107.9
        cmpl      2784(%rsp), %r15d                             #116.11
        lea       (%r13,%r10), %r15d                            #111.11
        cmove     %edx, %eax                                    #116.11
        incq      %r9                                           #107.9
        cmpl      2792(%rsp), %ecx                              #116.11
        movslq    %eax, %rax                                    #117.61
        cmove     %edx, %r15d                                   #116.11
        movslq    %r15d, %r15                                   #117.22
        cmpl      2824(%rsp), %r10d                             #116.11
        vmulsd    (%rbx,%r15,8), %xmm10, %xmm0                  #116.11
        vfmadd231sd (%rbx,%rax,8), %xmm11, %xmm0                #116.11
        lea       2(%r11), %eax                                 #111.38
        movslq    %r11d, %r11                                   #116.37
        cmove     %edx, %eax                                    #116.11
        movslq    %eax, %rax                                    #116.50
        incl      %r10d                                         #107.9
        vaddsd    %xmm1, %xmm0, %xmm2                           #116.11
        vfmadd231sd (%rbx,%r11,8), %xmm8, %xmm3                 #116.11
        vfmadd231sd (%rbx,%rax,8), %xmm7, %xmm3                 #116.11
        movl      %edx, %r11d                                   #107.9
        vaddsd    %xmm3, %xmm2, %xmm12                          #116.11
        vmovsd    %xmm12, 8(%rdi,%rsi,8)                        #116.11
        incq      %rsi                                          #107.9
        cmpl      %r14d, %r10d                                  #107.9
        jb        ..B3.286      # Prob 82%                      #107.9
                                # LOE rbx rsi rdi r8 r9 ecx r10d r11d r12d r13d r14d xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.287:                       # Preds ..B3.286
        movl      2752(%rsp), %r10d                             #
        movl      2632(%rsp), %r9d                              #
        movl      2760(%rsp), %r11d                             #
        movl      2600(%rsp), %r12d                             #
        movl      2608(%rsp), %eax                              #
        movl      2616(%rsp), %r8d                              #
        movl      2624(%rsp), %esi                              #
        movl      2480(%rsp), %edx                              #
                                # LOE rbx rdi r8 eax edx ecx esi r8d r9d r10d r11d r12d r14d r8b xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.288:                       # Preds ..B3.284 ..B3.287
        movq      %rdi, 1088(%rsp)                              #
        vmovd     %eax, %xmm2                                   #111.25
        movl      1104(%rsp), %edi                              #115.43
        movl      $16, %r15d                                    #116.11
        movl      %eax, 2608(%rsp)                              #
        lea       1(%r14), %eax                                 #116.11
        vbroadcastsd %xmm6, %ymm13                              #98.1
        vbroadcastsd %xmm7, %ymm15                              #98.1
        vbroadcastsd %xmm8, %ymm12                              #98.1
        vmovsd    %xmm7, 936(%rsp)                              #107.9
        vmovsd    %xmm8, 944(%rsp)                              #107.9
        vmovsd    %xmm9, 952(%rsp)                              #107.9
        vmovupd   %ymm13, 192(%rsp)                             #98.1
        lea       1(%r14,%rdi), %r13d                           #115.43
        vmovd     %eax, %xmm13                                  #116.11
        vmovsd    %xmm11, 968(%rsp)                             #107.9
        vmovsd    %xmm4, 1040(%rsp)                             #107.9
        vmovd     %r13d, %xmm0                                  #115.43
        vmovupd   %ymm15, 1504(%rsp)                            #98.1
        lea       9(%r14), %edi                                 #116.11
        vmovupd   %ymm12, 1536(%rsp)                            #98.1
        vmovsd    %xmm10, 960(%rsp)                             #107.9
        vmovsd    %xmm5, 976(%rsp)                              #107.9
        vmovd     %edi, %xmm15                                  #116.11
        vmovsd    %xmm6, 984(%rsp)                              #107.9
        vpbroadcastd %xmm0, %ymm3                               #115.43
        lea       8(%r11,%rdx), %eax                            #107.9
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm3, %ymm1     #115.43
        lea       (%rsi,%rax), %edi                             #107.9
        vbroadcastsd %xmm9, %ymm0                               #98.1
        vbroadcastsd %xmm10, %ymm3                              #98.1
        vmovupd   192(%rsp), %ymm7                              #107.9
        vmovdqu   %ymm1, 1632(%rsp)                             #115.43
        vmovupd   %ymm0, 1472(%rsp)                             #98.1
        vbroadcastsd %xmm5, %ymm1                               #98.1
        vmovapd   %ymm3, %ymm9                                  #107.9
        addl      %r10d, %edi                                   #107.9
        lea       1(%r14,%r9), %r13d                            #107.9
        vpbroadcastd %xmm2, %ymm14                              #111.25
        vmovd     %r15d, %xmm2                                  #116.11
        vmovdqu   %ymm14, 1568(%rsp)                            #111.25
        addl      %r11d, %eax                                   #115.43
        vmovapd   %ymm1, %ymm8                                  #107.9
        vmovd     %r13d, %xmm1                                  #107.9
        vpbroadcastd %xmm2, %ymm14                              #116.11
        lea       1(%r14,%rdi), %r15d                           #107.9
        vmovdqu   %ymm14, 1696(%rsp)                            #116.11
        lea       (%r8,%rsi), %r13d                             #113.37
        vmovd     %r15d, %xmm14                                 #107.9
        vpbroadcastd %xmm13, %ymm12                             #116.11
        lea       2(%r14,%r9), %r15d                            #111.38
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm12, %ymm0    #116.11
        lea       2(%r14,%rdi), %edi                            #111.38
        vmovd     %r15d, %xmm12                                 #111.38
        addl      %r10d, %r13d                                  #113.37
        lea       8(%r11,%rdx,2), %r15d                         #113.37
        addl      %esi, %r15d                                   #113.37
        addl      %esi, %eax                                    #115.43
        addl      %r10d, %r15d                                  #113.37
        addl      %r10d, %eax                                   #115.43
        vpbroadcastd %xmm1, %ymm2                               #107.9
        vpbroadcastd %xmm14, %ymm13                             #107.9
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm2, %ymm1     #107.9
        vpaddd    .L_2il0floatpacket.24(%rip), %ymm13, %ymm2    #107.9
        vmovd     %edi, %xmm13                                  #111.38
        vpbroadcastd %xmm15, %ymm3                              #116.11
        lea       1(%r13,%r14), %edi                            #113.37
        vpbroadcastd %xmm12, %ymm15                             #111.38
        lea       1(%r15,%r14), %r13d                           #113.37
        lea       .L_2il0floatpacket.24(%rip), %r15             #111.38
        vpaddd    (%r15), %ymm15, %ymm14                        #111.38
        lea       1(%rax,%r14), %eax                            #115.43
        vpaddd    (%r15), %ymm3, %ymm3                          #116.11
        vmovd     %edi, %xmm15                                  #113.37
        vmovdqu   %ymm14, 1280(%rsp)                            #107.9
        vpbroadcastd %xmm13, %ymm12                             #111.38
        vpaddd    (%r15), %ymm12, %ymm13                        #111.38
        vpbroadcastd %xmm15, %ymm12                             #113.37
        vmovd     %r13d, %xmm15                                 #113.37
        vpbroadcastd %xmm15, %ymm15                             #113.37
        lea       .L_2il0floatpacket.24(%rip), %r13             #113.37
        vpaddd    (%r13), %ymm15, %ymm15                        #113.37
        vpaddd    (%r13), %ymm12, %ymm12                        #113.37
        vmovdqu   %ymm13, 1312(%rsp)                            #107.9
        vmovdqu   %ymm15, 1664(%rsp)                            #113.37
        vmovd     %eax, %xmm15                                  #115.43
        vmovdqu   %ymm12, 1344(%rsp)                            #107.9
        vpbroadcastd %xmm15, %ymm15                             #115.43
        vpaddd    (%r13), %ymm15, %ymm15                        #115.43
        vmovdqu   %ymm15, 1600(%rsp)                            #115.43
        vbroadcastsd %xmm11, %ymm15                             #98.1
        vmovupd   1472(%rsp), %ymm11                            #107.9
        vmovupd   %ymm15, 1376(%rsp)                            #107.9
        movl      %r10d, 2752(%rsp)                             #107.9
        movl      %r11d, 2760(%rsp)                             #107.9
        movl      %r8d, 2616(%rsp)                              #107.9
        movl      %esi, 2624(%rsp)                              #107.9
        movl      %edx, 2480(%rsp)                              #107.9
        movl      %r14d, %r14d                                  #107.9
        movslq    %r12d, %r13                                   #107.9
        movq      1088(%rsp), %rdi                              #107.9
        movl      1096(%rsp), %r15d                             #107.9
        movl      2352(%rsp), %r11d                             #107.9
        movq      2776(%rsp), %rdx                              #107.9
        movl      2784(%rsp), %esi                              #107.9
        movl      2792(%rsp), %r8d                              #107.9
        movl      2800(%rsp), %r10d                             #107.9
        movl      %r12d, 2600(%rsp)                             #107.9
                                # LOE rdx rbx rdi r13 r14 ecx esi r8d r9d r10d r11d r15d ymm0 ymm1 ymm2 ymm3 ymm7 ymm8 ymm9 ymm11
..B3.289:                       # Preds ..B3.295 ..B3.288
        cmpl      %r8d, %ecx                                    #113.24
        jne       ..B3.291      # Prob 50%                      #113.24
                                # LOE rdx rbx rdi r13 r14 ecx esi r8d r9d r10d r11d r15d ymm0 ymm1 ymm2 ymm3 ymm7 ymm8 ymm9 ymm11
..B3.290:                       # Preds ..B3.289
        vmovdqa   %ymm1, %ymm10                                 #113.11
        vmovdqa   %ymm2, %ymm4                                  #113.11
        jmp       ..B3.292      # Prob 100%                     #113.11
                                # LOE rdx rbx rdi r13 r14 ecx esi r8d r9d r10d r11d r15d ymm0 ymm1 ymm2 ymm3 ymm4 ymm7 ymm8 ymm9 ymm10 ymm11
..B3.291:                       # Preds ..B3.289
        vmovdqu   1344(%rsp), %ymm10                            #113.11
        vmovdqu   1664(%rsp), %ymm4                             #113.11
                                # LOE rdx rbx rdi r13 r14 ecx esi r8d r9d r10d r11d r15d ymm0 ymm1 ymm2 ymm3 ymm4 ymm7 ymm8 ymm9 ymm10 ymm11
..B3.292:                       # Preds ..B3.290 ..B3.291
        cmpl      %esi, %r10d                                   #115.24
        jne       ..B3.294      # Prob 50%                      #115.24
                                # LOE rdx rbx rdi r13 r14 ecx esi r8d r9d r10d r11d r15d ymm0 ymm1 ymm2 ymm3 ymm4 ymm7 ymm8 ymm9 ymm10 ymm11
..B3.293:                       # Preds ..B3.292
        vmovdqa   %ymm1, %ymm5                                  #115.11
        vmovdqa   %ymm2, %ymm6                                  #115.11
        jmp       ..B3.295      # Prob 100%                     #115.11
                                # LOE rdx rbx rdi r13 r14 ecx esi r8d r9d r10d r11d r15d ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7 ymm8 ymm9 ymm10 ymm11
..B3.294:                       # Preds ..B3.292
        vmovdqu   1632(%rsp), %ymm5                             #115.11
        vmovdqu   1600(%rsp), %ymm6                             #115.11
                                # LOE rdx rbx rdi r13 r14 ecx esi r8d r9d r10d r11d r15d ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7 ymm8 ymm9 ymm10 ymm11
..B3.295:                       # Preds ..B3.293 ..B3.294
        vmovdqu   1696(%rsp), %ymm14                            #113.37
        movl      %r14d, %r12d                                  #110.11
        vmovupd   %ymm11, 1472(%rsp)                            #
        vpaddd    1344(%rsp), %ymm14, %ymm11                    #113.37
        vpaddd    1632(%rsp), %ymm14, %ymm15                    #115.43
        vpaddd    1664(%rsp), %ymm14, %ymm12                    #113.37
        vpaddd    1600(%rsp), %ymm14, %ymm13                    #115.43
        vmovdqu   %ymm11, 1344(%rsp)                            #113.37
        vmovdqu   1568(%rsp), %ymm11                            #111.25
        vmovdqu   %ymm15, 1632(%rsp)                            #115.43
        vmovdqu   1280(%rsp), %ymm15                            #111.38
        vmovdqu   %ymm12, 1664(%rsp)                            #113.37
        vmovdqu   %ymm13, 1600(%rsp)                            #115.43
        vpcmpeqd  %ymm11, %ymm0, %ymm12                         #111.25
        lea       (%r9,%r12), %eax                              #107.9
        vpblendvb %ymm12, %ymm1, %ymm15, %ymm13                 #111.38
        vpaddd    %ymm14, %ymm1, %ymm1                          #107.9
        vpaddd    %ymm14, %ymm0, %ymm0                          #116.11
        vmovdqu   %ymm1, 2048(%rsp)                             #107.9
        vmovdqu   %ymm0, 2016(%rsp)                             #116.11
        vpaddd    %ymm14, %ymm15, %ymm1                         #111.38
        vmovupd   1504(%rsp), %ymm15                            #117.61
        vmovdqu   %ymm1, 1280(%rsp)                             #111.38
        vxorpd    %ymm12, %ymm12, %ymm12                        #116.50
        vpcmpeqd  %ymm1, %ymm1, %ymm1                           #116.50
        movslq    %eax, %rax                                    #110.11
        vpcmpeqd  %ymm11, %ymm3, %ymm11                         #111.25
        vpaddd    %ymm14, %ymm3, %ymm3                          #116.11
        vgatherdpd %ymm1, (%rbx,%xmm13,8), %ymm12               #116.50
        vextracti128 $1, %ymm13, %xmm0                          #116.50
        vmovupd   1536(%rsp), %ymm13                            #117.61
        vmulpd    %ymm12, %ymm15, %ymm12                        #117.61
        vfmadd231pd (%rbx,%rax,8), %ymm13, %ymm12               #117.61
        vfmadd231pd 8(%rdx,%r14,8), %ymm7, %ymm12               #117.61
        vmovupd   %ymm12, 2080(%rsp)                            #117.61
        vxorpd    %ymm1, %ymm1, %ymm1                           #116.50
        vpcmpeqd  %ymm12, %ymm12, %ymm12                        #116.50
        vgatherdpd %ymm12, (%rbx,%xmm0,8), %ymm1                #116.50
        vmovdqu   1312(%rsp), %ymm0                             #111.38
        vmulpd    %ymm1, %ymm15, %ymm1                          #117.61
        vpblendvb %ymm11, %ymm2, %ymm0, %ymm11                  #111.38
        vpaddd    %ymm14, %ymm2, %ymm2                          #107.9
        vfmadd231pd 32(%rbx,%rax,8), %ymm13, %ymm1              #117.61
        vmovdqu   %ymm2, 2112(%rsp)                             #107.9
        vpaddd    %ymm14, %ymm0, %ymm2                          #111.38
        vfmadd231pd 40(%rdx,%r14,8), %ymm7, %ymm1               #117.61
        vmovdqu   %ymm2, 1312(%rsp)                             #111.38
        vxorpd    %ymm12, %ymm12, %ymm12                        #116.50
        vpcmpeqd  %ymm2, %ymm2, %ymm2                           #116.50
        vpcmpeqd  %ymm14, %ymm14, %ymm14                        #116.50
        vextracti128 $1, %ymm11, %xmm0                          #116.50
        vgatherdpd %ymm2, (%rbx,%xmm11,8), %ymm12               #116.50
        vxorpd    %ymm11, %ymm11, %ymm11                        #116.50
        vgatherdpd %ymm14, (%rbx,%xmm0,8), %ymm11               #116.50
        vmulpd    %ymm12, %ymm15, %ymm2                         #117.61
        vmulpd    %ymm11, %ymm15, %ymm0                         #117.61
        vfmadd231pd 64(%rbx,%rax,8), %ymm13, %ymm2              #117.61
        vfmadd231pd 96(%rbx,%rax,8), %ymm13, %ymm0              #117.61
        vfmadd231pd 72(%rdx,%r14,8), %ymm7, %ymm2               #117.61
        vfmadd231pd 104(%rdx,%r14,8), %ymm7, %ymm0              #117.61
        vxorpd    %ymm12, %ymm12, %ymm12                        #117.22
        lea       (%r11,%r12), %eax                             #107.9
        vpcmpeqd  %ymm15, %ymm15, %ymm15                        #117.22
        addl      %r15d, %r12d                                  #107.9
        vxorpd    %ymm13, %ymm13, %ymm13                        #117.22
        vpcmpeqd  %ymm14, %ymm14, %ymm14                        #117.22
        movslq    %r12d, %r12                                   #114.11
        movslq    %eax, %rax                                    #112.11
        vextracti128 $1, %ymm10, %xmm11                         #117.22
        vgatherdpd %ymm15, (%rbx,%xmm10,8), %ymm12              #117.22
        vpcmpeqd  %ymm10, %ymm10, %ymm10                        #117.22
        vgatherdpd %ymm10, (%rbx,%xmm11,8), %ymm13              #117.22
        vxorpd    %ymm11, %ymm11, %ymm11                        #117.22
        vpcmpeqd  %ymm10, %ymm10, %ymm10                        #117.22
        vextracti128 $1, %ymm4, %xmm15                          #117.22
        vgatherdpd %ymm10, (%rbx,%xmm4,8), %ymm11               #117.22
        vxorpd    %ymm4, %ymm4, %ymm4                           #117.22
        vgatherdpd %ymm14, (%rbx,%xmm15,8), %ymm4               #117.22
        vxorpd    %ymm10, %ymm10, %ymm10                        #117.61
        vpcmpeqd  %ymm14, %ymm14, %ymm14                        #117.61
        vgatherdpd %ymm14, (%rbx,%xmm5,8), %ymm10               #117.61
        vextracti128 $1, %ymm5, %xmm15                          #117.61
        vmovupd   1376(%rsp), %ymm5                             #117.61
        vmulpd    %ymm10, %ymm5, %ymm10                         #117.61
        vfmadd231pd %ymm9, %ymm12, %ymm10                       #117.61
        vxorpd    %ymm14, %ymm14, %ymm14                        #117.61
        vpcmpeqd  %ymm12, %ymm12, %ymm12                        #117.61
        vgatherdpd %ymm12, (%rbx,%xmm15,8), %ymm14              #117.61
        vmulpd    %ymm14, %ymm5, %ymm12                         #117.61
        vfmadd231pd %ymm9, %ymm13, %ymm12                       #117.61
        vxorpd    %ymm13, %ymm13, %ymm13                        #117.61
        vpcmpeqd  %ymm14, %ymm14, %ymm14                        #117.61
        vgatherdpd %ymm14, (%rbx,%xmm6,8), %ymm13               #117.61
        vextracti128 $1, %ymm6, %xmm15                          #117.61
        vmulpd    %ymm13, %ymm5, %ymm6                          #117.61
        vfmadd231pd %ymm9, %ymm11, %ymm6                        #117.61
        vxorpd    %ymm11, %ymm11, %ymm11                        #117.61
        vpcmpeqd  %ymm13, %ymm13, %ymm13                        #117.61
        vgatherdpd %ymm13, (%rbx,%xmm15,8), %ymm11              #117.61
        vmulpd    8(%rbx,%r12,8), %ymm8, %ymm15                 #117.61
        vmulpd    40(%rbx,%r12,8), %ymm8, %ymm13                #117.61
        vmulpd    %ymm11, %ymm5, %ymm5                          #117.61
        vmovupd   1472(%rsp), %ymm11                            #117.61
        vfmadd231pd %ymm9, %ymm4, %ymm5                         #117.61
        vfmadd231pd 8(%rbx,%rax,8), %ymm11, %ymm15              #117.61
        vfmadd231pd 40(%rbx,%rax,8), %ymm11, %ymm13             #117.61
        vaddpd    %ymm10, %ymm15, %ymm4                         #117.61
        vaddpd    2080(%rsp), %ymm4, %ymm10                     #117.61
        vaddpd    %ymm12, %ymm13, %ymm4                         #117.61
        vmulpd    72(%rbx,%r12,8), %ymm8, %ymm12                #117.61
        vaddpd    %ymm1, %ymm4, %ymm1                           #117.61
        vfmadd231pd 72(%rbx,%rax,8), %ymm11, %ymm12             #117.61
        vaddpd    %ymm6, %ymm12, %ymm6                          #117.61
        vaddpd    %ymm2, %ymm6, %ymm4                           #117.61
        vmulpd    104(%rbx,%r12,8), %ymm8, %ymm2                #117.61
        vfmadd231pd 104(%rbx,%rax,8), %ymm11, %ymm2             #117.61
        vmovupd   %ymm10, 8(%rdi,%r14,8)                        #116.11
        vmovupd   %ymm1, 40(%rdi,%r14,8)                        #116.11
        vmovupd   %ymm4, 72(%rdi,%r14,8)                        #116.11
        vmovdqu   2048(%rsp), %ymm1                             #107.9
        vaddpd    %ymm5, %ymm2, %ymm5                           #117.61
        vmovdqu   2112(%rsp), %ymm2                             #107.9
        vaddpd    %ymm0, %ymm5, %ymm0                           #117.61
        vmovupd   %ymm0, 104(%rdi,%r14,8)                       #116.11
        addq      $16, %r14                                     #107.9
        vmovdqu   2016(%rsp), %ymm0                             #107.9
        cmpq      %r13, %r14                                    #107.9
        jb        ..B3.289      # Prob 82%                      #107.9
                                # LOE rdx rbx rdi r13 r14 ecx esi r8d r9d r10d r11d r15d ymm0 ymm1 ymm2 ymm3 ymm7 ymm8 ymm9 ymm11
..B3.296:                       # Preds ..B3.295
        movl      %r10d, 2800(%rsp)                             #
        vmovsd    1040(%rsp), %xmm4                             #
        vmovsd    936(%rsp), %xmm7                              #
        vmovsd    944(%rsp), %xmm8                              #
        vmovsd    952(%rsp), %xmm9                              #
        vmovsd    960(%rsp), %xmm10                             #
        vmovsd    968(%rsp), %xmm11                             #
        vmovsd    976(%rsp), %xmm5                              #
        vmovsd    984(%rsp), %xmm6                              #
        movl      2752(%rsp), %r10d                             #
        movl      2760(%rsp), %r11d                             #
        movl      2600(%rsp), %r12d                             #
        movl      2608(%rsp), %eax                              #
        movl      2616(%rsp), %r8d                              #
        movl      2624(%rsp), %esi                              #
        movl      2480(%rsp), %edx                              #
                                # LOE rbx rdi r8 eax edx ecx esi r8d r9d r10d r11d r12d r8b xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.297:                       # Preds ..B3.296 ..B3.418
        lea       1(%r12), %r14d                                #107.9
        cmpl      %r14d, %eax                                   #107.9
        jb        ..B3.312      # Prob 50%                      #107.9
                                # LOE rbx rdi r8 eax edx ecx esi r8d r9d r10d r11d r12d r14d r8b xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.298:                       # Preds ..B3.297
        movl      %eax, %r13d                                   #107.9
        subl      %r12d, %r13d                                  #107.9
        movl      %r13d, 2768(%rsp)                             #107.9
        cmpl      $4, %r13d                                     #107.9
        jl        ..B3.416      # Prob 10%                      #107.9
                                # LOE rbx rdi r8 r13 eax edx ecx esi r8d r9d r10d r11d r12d r13d r14d r8b r13b xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.299:                       # Preds ..B3.298
        vmovd     %eax, %xmm2                                   #111.25
        vmovd     %r14d, %xmm3                                  #116.11
        movl      %r13d, %eax                                   #107.9
        lea       2(%r12), %r14d                                #116.11
        andl      $-4, %eax                                     #107.9
        movl      $4, %r13d                                     #116.11
        cltq                                                    #107.9
        lea       3(%r12), %r15d                                #116.11
        movq      %rax, 2360(%rsp)                              #107.9
        lea       4(%r12), %eax                                 #116.11
        vmovd     %r14d, %xmm15                                 #116.11
        lea       1(%r12,%r9), %r14d                            #107.9
        vmovd     %r13d, %xmm0                                  #116.11
        lea       (%r12,%r9), %r13d                             #107.9
        vpbroadcastd %xmm0, %xmm14                              #116.11
        vmovd     %eax, %xmm0                                   #116.11
        lea       2(%r14), %eax                                 #107.9
        vmovdqu   %xmm14, 32(%rsp)                              #116.11
        vpunpcklqdq %xmm15, %xmm3, %xmm14                       #116.11
        vmovd     %r15d, %xmm3                                  #116.11
        vpunpcklqdq %xmm0, %xmm3, %xmm3                         #116.11
        lea       1(%r14), %r15d                                #107.9
        vshufps   $136, %xmm3, %xmm14, %xmm15                   #116.11
        vmovd     %eax, %xmm14                                  #107.9
        incl      %eax                                          #107.9
        vmovd     %r14d, %xmm3                                  #107.9
        movl      %r13d, 8(%rsp)                                #107.9
        lea       2(%r12,%r9), %r13d                            #111.38
        vmovups   %xmm15, 48(%rsp)                              #116.11
        vmovd     %r15d, %xmm0                                  #107.9
        vpunpcklqdq %xmm0, %xmm3, %xmm3                         #107.9
        lea       1(%r13), %r14d                                #111.38
        vmovd     %eax, %xmm15                                  #107.9
        lea       2(%r13), %eax                                 #111.38
        vpunpcklqdq %xmm15, %xmm14, %xmm0                       #107.9
        lea       (%r8,%rsi), %r15d                             #113.37
        vshufps   $136, %xmm0, %xmm3, %xmm3                     #107.9
        addl      %r10d, %r15d                                  #113.37
        vmovd     %r13d, %xmm14                                 #111.38
        vmovd     %r14d, %xmm15                                 #111.38
        vmovd     %eax, %xmm0                                   #111.38
        incl      %eax                                          #111.38
        vpunpcklqdq %xmm15, %xmm14, %xmm15                      #111.38
        vbroadcastsd %xmm6, %ymm12                              #98.1
        vbroadcastsd %xmm8, %ymm13                              #98.1
        vmovd     %eax, %xmm14                                  #111.38
        vpunpcklqdq %xmm14, %xmm0, %xmm0                        #111.38
        vshufps   $136, %xmm0, %xmm15, %xmm15                   #111.38
        vmovups   %xmm15, 64(%rsp)                              #111.38
        lea       1(%r15,%r12), %eax                            #113.37
        movl      2344(%rsp), %r15d                             #115.43
        lea       1(%rax), %r13d                                #113.37
        lea       2(%rax), %r14d                                #113.37
        vmovupd   %ymm13, 1440(%rsp)                            #98.1
        vmovd     %eax, %xmm0                                   #113.37
        vmovd     %r13d, %xmm14                                 #113.37
        vmovd     %r14d, %xmm15                                 #113.37
        vpunpcklqdq %xmm14, %xmm0, %xmm14                       #113.37
        incl      %r14d                                         #113.37
        lea       (%r11,%r15), %eax                             #115.43
        addl      %esi, %eax                                    #115.43
        addl      %r10d, %eax                                   #115.43
        movl      2352(%rsp), %r15d                             #107.9
        vmovd     %r14d, %xmm0                                  #113.37
        vpunpcklqdq %xmm0, %xmm15, %xmm15                       #113.37
        vshufps   $136, %xmm15, %xmm14, %xmm14                  #113.37
        lea       1(%rax,%r12), %r13d                           #115.43
        vmovups   %xmm14, 80(%rsp)                              #113.37
        lea       2(%r13), %eax                                 #115.43
        vbroadcastsd %xmm5, %ymm13                              #98.1
        lea       1(%r13), %r14d                                #115.43
        vmovsd    %xmm7, 936(%rsp)                              #98.1
        vmovd     %r13d, %xmm0                                  #115.43
        vmovd     %eax, %xmm15                                  #115.43
        incl      %eax                                          #115.43
        vmovd     %r14d, %xmm14                                 #115.43
        vpunpcklqdq %xmm14, %xmm0, %xmm0                        #115.43
        lea       (%r12,%r15), %r13d                            #107.9
        movq      2776(%rsp), %r14                              #116.24
        movq      $0, (%rsp)                                    #107.9
        vmovd     %eax, %xmm14                                  #115.43
        lea       (%rsi,%rdx), %eax                             #107.9
        addl      %r10d, %eax                                   #107.9
        addl      %r12d, %eax                                   #107.9
        movslq    %r12d, %r12                                   #116.24
        vpunpcklqdq %xmm14, %xmm15, %xmm15                      #115.43
        vshufps   $136, %xmm15, %xmm0, %xmm0                    #115.43
        movl      %r13d, 16(%rsp)                               #107.9
        lea       (%rdi,%r12,8), %r13                           #116.11
        vpbroadcastd %xmm2, %xmm1                               #111.25
        lea       (%r14,%r12,8), %r14                           #116.24
        vmovsd    %xmm8, 944(%rsp)                              #98.1
        vmovsd    %xmm10, 960(%rsp)                             #98.1
        vmovsd    %xmm11, 968(%rsp)                             #98.1
        vmovsd    %xmm5, 976(%rsp)                              #98.1
        vmovsd    %xmm6, 984(%rsp)                              #98.1
        movl      %r10d, 2752(%rsp)                             #98.1
        movl      %r9d, 2632(%rsp)                              #98.1
        movl      %r11d, 2760(%rsp)                             #98.1
        movl      %r12d, 2600(%rsp)                             #98.1
        movl      %r8d, 2616(%rsp)                              #98.1
        movq      %rdi, 1088(%rsp)                              #98.1
        movl      %esi, 2624(%rsp)                              #98.1
        vmovdqu   %xmm1, 2720(%rsp)                             #111.25
        vbroadcastsd %xmm7, %ymm2                               #98.1
        vmovsd    %xmm4, 1040(%rsp)                             #98.1
        vmovsd    %xmm9, 952(%rsp)                              #98.1
        vmovaps   %xmm0, %xmm6                                  #98.1
        vmovapd   %ymm12, %ymm5                                 #98.1
        vmovups   80(%rsp), %xmm7                               #98.1
        vmovdqu   32(%rsp), %xmm8                               #98.1
        vmovupd   %ymm13, 1408(%rsp)                            #98.1
        vbroadcastsd %xmm9, %ymm1                               #98.1
        vbroadcastsd %xmm10, %ymm12                             #98.1
        vbroadcastsd %xmm11, %ymm0                              #98.1
        vmovups   64(%rsp), %xmm11                              #98.1
        vmovups   48(%rsp), %xmm10                              #98.1
        movq      2360(%rsp), %r11                              #98.1
        movl      16(%rsp), %r10d                               #98.1
        movq      (%rsp), %r12                                  #98.1
        movl      8(%rsp), %esi                                 #98.1
        movl      2784(%rsp), %edi                              #98.1
        movl      2792(%rsp), %r8d                              #98.1
        movl      2800(%rsp), %r9d                              #98.1
        movl      %edx, 2480(%rsp)                              #98.1
                                # LOE rbx r11 r12 r13 r14 eax ecx esi edi r8d r9d r10d xmm3 xmm6 xmm7 xmm8 xmm10 xmm11 ymm0 ymm1 ymm2 ymm5 ymm12
..B3.300:                       # Preds ..B3.306 ..B3.299
        cmpl      %r8d, %ecx                                    #113.24
        jne       ..B3.302      # Prob 50%                      #113.24
                                # LOE rbx r11 r12 r13 r14 eax ecx esi edi r8d r9d r10d xmm3 xmm6 xmm7 xmm8 xmm10 xmm11 ymm0 ymm1 ymm2 ymm5 ymm12
..B3.301:                       # Preds ..B3.300
        vmovdqa   %xmm3, %xmm4                                  #113.11
        jmp       ..B3.303      # Prob 100%                     #113.11
                                # LOE rbx r11 r12 r13 r14 eax ecx esi edi r8d r9d r10d xmm3 xmm4 xmm6 xmm7 xmm8 xmm10 xmm11 ymm0 ymm1 ymm2 ymm5 ymm12
..B3.302:                       # Preds ..B3.300
        vmovdqa   %xmm7, %xmm4                                  #113.11
                                # LOE rbx r11 r12 r13 r14 eax ecx esi edi r8d r9d r10d xmm3 xmm4 xmm6 xmm7 xmm8 xmm10 xmm11 ymm0 ymm1 ymm2 ymm5 ymm12
..B3.303:                       # Preds ..B3.301 ..B3.302
        cmpl      %edi, %r9d                                    #115.24
        jne       ..B3.305      # Prob 50%                      #115.24
                                # LOE rbx r11 r12 r13 r14 eax ecx esi edi r8d r9d r10d xmm3 xmm4 xmm6 xmm7 xmm8 xmm10 xmm11 ymm0 ymm1 ymm2 ymm5 ymm12
..B3.304:                       # Preds ..B3.303
        vmovdqa   %xmm3, %xmm9                                  #115.11
        jmp       ..B3.306      # Prob 100%                     #115.11
                                # LOE rbx r11 r12 r13 r14 eax ecx esi edi r8d r9d r10d xmm3 xmm4 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 ymm0 ymm1 ymm2 ymm5 ymm12
..B3.305:                       # Preds ..B3.303
        vmovdqa   %xmm6, %xmm9                                  #115.11
                                # LOE rbx r11 r12 r13 r14 eax ecx esi edi r8d r9d r10d xmm3 xmm4 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 ymm0 ymm1 ymm2 ymm5 ymm12
..B3.306:                       # Preds ..B3.304 ..B3.305
        vpcmpeqd  2720(%rsp), %xmm10, %xmm13                    #111.25
        movl      %r12d, %r15d                                  #110.11
        vpblendvb %xmm13, %xmm3, %xmm11, %xmm15                 #111.38
        vpaddd    %xmm8, %xmm7, %xmm7                           #113.37
        vpaddd    %xmm8, %xmm6, %xmm6                           #115.43
        vpaddd    %xmm8, %xmm10, %xmm10                         #116.11
        vxorpd    %ymm14, %ymm14, %ymm14                        #116.50
        vpaddd    %xmm8, %xmm3, %xmm3                           #107.9
        vpcmpeqd  %ymm13, %ymm13, %ymm13                        #116.50
        lea       (%rsi,%r15), %edx                             #116.37
        vgatherdpd %ymm13, (%rbx,%xmm15,8), %ymm14              #116.50
        vpaddd    %xmm8, %xmm11, %xmm11                         #111.38
        vmovupd   1440(%rsp), %ymm15                            #117.61
        vmulpd    %ymm14, %ymm2, %ymm14                         #117.61
        movslq    %edx, %rdx                                    #116.37
        vxorpd    %ymm13, %ymm13, %ymm13                        #117.22
        vfmadd231pd (%rbx,%rdx,8), %ymm15, %ymm14               #117.61
        lea       (%r10,%r15), %edx                             #117.35
        vpcmpeqd  %ymm15, %ymm15, %ymm15                        #117.22
        addl      %eax, %r15d                                   #117.48
        vgatherdpd %ymm15, (%rbx,%xmm4,8), %ymm13               #117.22
        vfmadd231pd 8(%r14,%r12,8), %ymm5, %ymm14               #117.61
        vxorpd    %ymm4, %ymm4, %ymm4                           #117.61
        vpcmpeqd  %ymm15, %ymm15, %ymm15                        #117.61
        vgatherdpd %ymm15, (%rbx,%xmm9,8), %ymm4                #117.61
        vmovupd   1408(%rsp), %ymm9                             #117.61
        vmulpd    %ymm4, %ymm0, %ymm4                           #117.61
        movslq    %r15d, %r15                                   #117.48
        vfmadd231pd %ymm12, %ymm13, %ymm4                       #117.61
        vmulpd    8(%rbx,%r15,8), %ymm9, %ymm13                 #117.61
        movslq    %edx, %rdx                                    #117.35
        vfmadd231pd 8(%rbx,%rdx,8), %ymm1, %ymm13               #117.61
        vaddpd    %ymm4, %ymm13, %ymm9                          #117.61
        vaddpd    %ymm14, %ymm9, %ymm14                         #117.61
        vmovupd   %ymm14, 8(%r13,%r12,8)                        #116.11
        addq      $4, %r12                                      #107.9
        cmpq      %r11, %r12                                    #107.9
        jb        ..B3.300      # Prob 82%                      #107.9
                                # LOE rbx r11 r12 r13 r14 eax ecx esi edi r8d r9d r10d xmm3 xmm6 xmm7 xmm8 xmm10 xmm11 ymm0 ymm1 ymm2 ymm5 ymm12
..B3.307:                       # Preds ..B3.306
        movq      %r11, 2360(%rsp)                              #
        movl      %r9d, 2800(%rsp)                              #
        vmovsd    1040(%rsp), %xmm4                             #
        vmovsd    936(%rsp), %xmm7                              #
        vmovsd    944(%rsp), %xmm8                              #
        vmovsd    952(%rsp), %xmm9                              #
        vmovsd    960(%rsp), %xmm10                             #
        vmovsd    968(%rsp), %xmm11                             #
        vmovsd    976(%rsp), %xmm5                              #
        vmovsd    984(%rsp), %xmm6                              #
        movl      2752(%rsp), %r10d                             #
        movl      2632(%rsp), %r9d                              #
        movl      2760(%rsp), %r11d                             #
        movl      2600(%rsp), %r12d                             #
        movl      2616(%rsp), %r8d                              #
        movq      1088(%rsp), %rdi                              #
        movl      2624(%rsp), %esi                              #
        movl      2480(%rsp), %edx                              #
                                # LOE rbx rdi r8 edx ecx esi r8d r9d r10d r11d r12d r8b xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.308:                       # Preds ..B3.307 ..B3.416
        movq      2360(%rsp), %r13                              #107.9
        lea       (%r12,%r13), %eax                             #107.9
        movl      %eax, 2400(%rsp)                              #107.9
        cmpl      2768(%rsp), %r13d                             #107.9
        jae       ..B3.414      # Prob 10%                      #107.9
                                # LOE rbx rdi r8 edx ecx esi r8d r9d r10d r11d r12d r13d r8b xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.309:                       # Preds ..B3.308
        addl      2344(%rsp), %r11d                             #107.9
        addl      %esi, %r8d                                    #107.9
        addl      %esi, %r11d                                   #107.9
        addl      %edx, %esi                                    #107.9
        addl      %r10d, %esi                                   #107.9
        addl      %r12d, %r9d                                   #107.9
        movl      2352(%rsp), %eax                              #107.9
        addl      %r12d, %esi                                   #107.9
        addl      %r12d, %eax                                   #107.9
        addl      %r10d, %r11d                                  #107.9
        movslq    %r12d, %r12                                   #116.24
        addl      %r8d, %r10d                                   #107.9
        movl      %r10d, 2752(%rsp)                             #116.24
        lea       -2(%rdx), %r14d                               #111.25
        movl      %r14d, 2808(%rsp)                             #116.24
        lea       1(%r13,%rsi), %r8d                            #107.9
        movl      %r11d, 2760(%rsp)                             #116.24
        lea       1(%r13,%rax), %esi                            #107.9
        movslq    %r8d, %r8                                     #107.9
        lea       (%rdi,%r12,8), %rax                           #116.11
        movq      2776(%rsp), %rdi                              #116.24
        addl      %r13d, %r9d                                   #107.9
        movl      2400(%rsp), %r14d                             #116.24
        movq      2360(%rsp), %r11                              #116.24
        movl      2800(%rsp), %r10d                             #116.24
        lea       (%rdi,%r12,8), %rdi                           #116.24
        movslq    %esi, %rsi                                    #107.9
        movq      %rdi, 2816(%rsp)                              #116.24
        movl      %edx, 2480(%rsp)                              #116.24
                                # LOE rax rbx rsi r8 r11 ecx r9d r10d r12d r13d r14d xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.310:                       # Preds ..B3.310 ..B3.309
        movq      2816(%rsp), %r15                              #116.11
        lea       1(%r9), %edi                                  #107.9
        movl      2760(%rsp), %edx                              #107.9
        vmulsd    (%rbx,%rsi,8), %xmm9, %xmm1                   #116.11
        incq      %rsi                                          #107.9
        vmulsd    8(%r15,%r11,8), %xmm6, %xmm3                  #116.11
        vfmadd231sd (%rbx,%r8,8), %xmm5, %xmm1                  #116.11
        movl      2752(%rsp), %r15d                             #107.9
        lea       1(%r12,%rdx), %edx                            #107.9
        addl      %r13d, %edx                                   #111.11
        incq      %r8                                           #107.9
        cmpl      2784(%rsp), %r10d                             #116.11
        lea       1(%r12,%r15), %r15d                           #107.9
        cmove     %edi, %edx                                    #116.11
        addl      %r13d, %r15d                                  #111.11
        cmpl      2792(%rsp), %ecx                              #116.11
        movslq    %edx, %rdx                                    #117.61
        cmove     %edi, %r15d                                   #116.11
        incl      %r13d                                         #107.9
        movslq    %r15d, %r15                                   #117.22
        cmpl      2808(%rsp), %r14d                             #116.11
        vmulsd    (%rbx,%r15,8), %xmm10, %xmm0                  #116.11
        vfmadd231sd (%rbx,%rdx,8), %xmm11, %xmm0                #116.11
        lea       2(%r9), %edx                                  #111.38
        movslq    %r9d, %r9                                     #116.37
        cmove     %edi, %edx                                    #116.11
        movslq    %edx, %rdx                                    #116.50
        incl      %r14d                                         #107.9
        vaddsd    %xmm1, %xmm0, %xmm2                           #116.11
        vfmadd231sd (%rbx,%r9,8), %xmm8, %xmm3                  #116.11
        vfmadd231sd (%rbx,%rdx,8), %xmm7, %xmm3                 #116.11
        movl      %edi, %r9d                                    #107.9
        vaddsd    %xmm3, %xmm2, %xmm12                          #116.11
        vmovsd    %xmm12, 8(%rax,%r11,8)                        #116.11
        incq      %r11                                          #107.9
        cmpl      2768(%rsp), %r13d                             #107.9
        jb        ..B3.310      # Prob 82%                      #107.9
                                # LOE rax rbx rsi r8 r11 ecx r9d r10d r12d r13d r14d xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.311:                       # Preds ..B3.310
        incl      %ecx                                          #105.7
        movl      2480(%rsp), %edx                              #
        cmpl      1048(%rsp), %ecx                              #105.7
        jb        ..B3.278      # Prob 82%                      #105.7
        jmp       ..B3.415      # Prob 100%                     #105.7
                                # LOE rdx rbx edx ecx dl dh xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.312:                       # Preds ..B3.297
        incl      %ecx                                          #105.7
        cmpl      1048(%rsp), %ecx                              #105.7
        jb        ..B3.278      # Prob 82%                      #105.7
        jmp       ..B3.415      # Prob 100%                     #105.7
                                # LOE rbx edx ecx xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.313:                       # Preds ..B3.278
        incl      %ecx                                          #105.7
        cmpl      1048(%rsp), %ecx                              #105.7
        jb        ..B3.278      # Prob 82%                      #105.7
        jmp       ..B3.415      # Prob 100%                     #105.7
                                # LOE rbx edx ecx xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.433:                       # Preds ..B3.276 ..B3.274 ..B3.242 ..B3.220 ..B3.203
                                #       ..B3.237 ..B3.222 ..B3.415 ..B3.245
        movq      1000(%rsp), %rax                              #
        movl      880(%rsp), %edi                               #
        movq      2144(%rsp), %r10                              #
        movq      2184(%rsp), %r11                              #
        movq      2152(%rsp), %rsi                              #
        movl      2800(%rsp), %ebx                              #
        movl      2160(%rsp), %ecx                              #
        movl      1080(%rsp), %r8d                              #
        movl      1008(%rsp), %r9d                              #
                                # LOE rax rsi r10 r11 edx ecx ebx edi r8d r9d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.315:                       # Preds ..B3.6 ..B3.433 ..B3.316
        incl      %ebx                                          #104.5
        lea       -1(%r8), %r12d                                #101.31
        cmpl      %r12d, %ebx                                   #104.5
        jae       ..B3.423      # Prob 18%                      #104.5
                                # LOE rax rsi r10 r11 edx ecx ebx edi r8d r9d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.316:                       # Preds ..B3.315
        testl     %ecx, %ecx                                    #105.27
        jle       ..B3.315      # Prob 50%                      #105.27
                                # LOE rax rsi r10 r11 edx ecx ebx edi r8d r9d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.317:                       # Preds ..B3.316
        movq      %rax, 1000(%rsp)                              #
        movl      %edi, 880(%rsp)                               #
        movq      %r10, 2144(%rsp)                              #
        movq      %r11, 2184(%rsp)                              #
        movq      %rsi, 2152(%rsp)                              #
        movl      %ebx, 2800(%rsp)                              #
        movl      %ecx, 2160(%rsp)                              #
        movl      %r8d, 1080(%rsp)                              #
        movl      %r9d, 1008(%rsp)                              #
        jmp       ..B3.203      # Prob 100%                     #
                                # LOE rcx r8 r11 edx ecx r8d r11d cl ch r8b r11b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.318:                       # Preds ..B3.6                  # Infreq
        incl      %edi                                          #103.3
        movq      %rax, %rbx                                    #121.15
        movq      %r11, %r12                                    #121.15
        movq      %r10, %rax                                    #122.5
        movq      %rsi, %r11                                    #122.5
        movq      %rbx, %r10                                    #123.5
        movq      %r12, %rsi                                    #123.5
        cmpl      %r9d, %edi                                    #103.3
        jb        ..B3.6        # Prob 82%                      #103.3
        jmp       ..B3.3        # Prob 100%                     #103.3
                                # LOE rax rsi r10 r11 edx ecx edi r8d r9d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.321:                       # Preds ..B3.341 ..B3.78 ..B3.32 # Infreq
        incl      %edi                                          #103.3
        movq      %r11, %rcx                                    #121.15
        movq      1000(%rsp), %rax                              #121.15
        movq      %rsi, %r11                                    #122.5
        movq      %r10, 1000(%rsp)                              #122.5
        movq      %rax, %r10                                    #123.5
        movq      %rcx, %rsi                                    #123.5
        cmpl      1008(%rsp), %edi                              #103.3
        jb        ..B3.36       # Prob 82%                      #103.3
        jmp       ..B3.3        # Prob 100%                     #103.3
                                # LOE rsi r10 r11 edx edi xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.323:                       # Preds ..B3.19 ..B3.22 ..B3.24 # Infreq
        xorl      %r9d, %r9d                                    #107.9
        jmp       ..B3.32       # Prob 100%                     #107.9
                                # LOE rsi r10 r11 edx ecx edi r9d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.325:                       # Preds ..B3.20                 # Infreq
        movl      %ecx, %r9d                                    #107.9
        xorl      %ebx, %ebx                                    #107.9
        andl      $-8, %r9d                                     #107.9
        jmp       ..B3.29       # Prob 100%                     #107.9
                                # LOE rsi r10 r11 edx ecx ebx edi r9d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.327:                       # Preds ..B3.59                 # Infreq
        movq      1000(%rsp), %rax                              #
        movl      880(%rsp), %edi                               #
        movq      2144(%rsp), %r10                              #
        movl      2160(%rsp), %ecx                              #
        movl      1080(%rsp), %r8d                              #
        movl      1008(%rsp), %r9d                              #
                                # LOE rax rsi r10 r11 edx ecx edi r8d r9d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.328:                       # Preds ..B3.331 ..B3.327       # Infreq
        incl      %edi                                          #103.3
        movq      %rax, %rbx                                    #121.15
        movq      %r11, %r12                                    #121.15
        movq      %r10, %rax                                    #122.5
        movq      %rsi, %r11                                    #122.5
        movq      %rbx, %r10                                    #123.5
        movq      %r12, %rsi                                    #123.5
        cmpl      %r9d, %edi                                    #103.3
        jae       ..B3.3        # Prob 18%                      #103.3
                                # LOE rax rsi r10 r11 edx ecx edi r8d r9d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.329:                       # Preds ..B3.328                # Infreq
        testl     %edx, %edx                                    #107.38
        jg        ..B3.12       # Prob 50%                      #107.38
                                # LOE rax rsi r10 r11 edx ecx edi r8d r9d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.331:                       # Preds ..B3.329                # Infreq
        cmpl      $2, %ecx                                      #105.7
        jl        ..B3.328      # Prob 10%                      #105.7
        jmp       ..B3.201      # Prob 100%                     #105.7
                                # LOE rax rsi r10 r11 edx ecx edi r8d r9d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.334:                       # Preds ..B3.51                 # Infreq
        xorl      %ecx, %ecx                                    #107.9
        jmp       ..B3.55       # Prob 100%                     #107.9
                                # LOE rcx rsi r9 r11 r12 eax edx r10d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.335:                       # Preds ..B3.37 ..B3.40 ..B3.42 # Infreq
        xorl      %eax, %eax                                    #107.9
        jmp       ..B3.50       # Prob 100%                     #107.9
                                # LOE rsi r9 r11 r12 eax edx ecx xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.337:                       # Preds ..B3.38                 # Infreq
        movl      %ecx, %eax                                    #107.9
        xorl      %r13d, %r13d                                  #107.9
        andl      $-8, %eax                                     #107.9
        jmp       ..B3.47       # Prob 100%                     #107.9
                                # LOE rsi r9 r11 r12 eax edx ecx r13d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.341:                       # Preds ..B3.75                 # Infreq
        cmpl      $2, 2160(%rsp)                                #105.7
        jge       ..B3.79       # Prob 90%                      #105.7
        jmp       ..B3.321      # Prob 100%                     #105.7
                                # LOE rsi r10 r11 r12 edx edi r12d r12b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.345:                       # Preds ..B3.62 ..B3.65 ..B3.67 # Infreq
        xorl      %r12d, %r12d                                  #107.9
        jmp       ..B3.75       # Prob 100%                     #107.9
                                # LOE rsi r10 r11 edx ecx edi r12d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.347:                       # Preds ..B3.63                 # Infreq
        movl      %ecx, %r12d                                   #107.9
        xorl      %r14d, %r14d                                  #107.9
        andl      $-8, %r12d                                    #107.9
        jmp       ..B3.72       # Prob 100%                     #107.9
                                # LOE rsi r10 r11 edx ecx edi r12d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.349:                       # Preds ..B3.98                 # Infreq
        cmpl      $2, 2160(%rsp)                                #105.7
        jl        ..B3.59       # Prob 10%                      #105.7
                                # LOE rsi r11 r12 edx xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.350:                       # Preds ..B3.349                # Infreq
        movq      1000(%rsp), %rax                              #
        movl      880(%rsp), %edi                               #
        movq      2144(%rsp), %r10                              #
        movl      2160(%rsp), %ecx                              #
        movl      1080(%rsp), %r8d                              #
        movl      1008(%rsp), %r9d                              #
        jmp       ..B3.107      # Prob 100%                     #
                                # LOE rax rcx rsi r8 r9 r10 r11 r12 eax edx ecx edi r8d r9d al cl ah ch r8b r9b xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.351:                       # Preds ..B3.94                 # Infreq
        xorl      %ecx, %ecx                                    #107.9
        jmp       ..B3.98       # Prob 100%                     #107.9
                                # LOE rcx rsi r9 r11 r12 eax edx edi xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.352:                       # Preds ..B3.80 ..B3.83 ..B3.85 # Infreq
        xorl      %eax, %eax                                    #107.9
        jmp       ..B3.93       # Prob 100%                     #107.9
                                # LOE rsi r9 r11 r12 eax edx ecx xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.354:                       # Preds ..B3.81                 # Infreq
        movl      %ecx, %eax                                    #107.9
        xorl      %r10d, %r10d                                  #107.9
        andl      $-8, %eax                                     #107.9
        jmp       ..B3.90       # Prob 100%                     #107.9
                                # LOE rsi r9 r11 r12 eax edx ecx r10d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.356:                       # Preds ..B3.376 ..B3.172 ..B3.359 ..B3.128 # Infreq
        movq      1000(%rsp), %rax                              #
        movl      880(%rsp), %edi                               #
        movq      2144(%rsp), %r10                              #
        movq      2184(%rsp), %r11                              #
        movq      2152(%rsp), %rsi                              #
        movl      2160(%rsp), %ecx                              #
        movl      1080(%rsp), %r8d                              #
        movl      1008(%rsp), %r9d                              #
                                # LOE rax rsi r10 r11 edx ecx edi r8d r9d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.357:                       # Preds ..B3.356 ..B3.201       # Infreq
        incl      %edi                                          #103.3
        movq      %rax, %rbx                                    #121.15
        movq      %r11, %r12                                    #121.15
        movq      %r10, %rax                                    #122.5
        movq      %rsi, %r11                                    #122.5
        movq      %rbx, %r10                                    #123.5
        movq      %r12, %rsi                                    #123.5
        cmpl      %r9d, %edi                                    #103.3
        jb        ..B3.9        # Prob 82%                      #103.3
        jmp       ..B3.3        # Prob 100%                     #103.3
                                # LOE rax rsi r10 r11 edx ecx edi r8d r9d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.359:                       # Preds ..B3.125                # Infreq
        incl      %ebx                                          #105.7
        cmpl      992(%rsp), %ebx                               #105.7
        jb        ..B3.129      # Prob 82%                      #105.7
        jmp       ..B3.356      # Prob 100%                     #105.7
                                # LOE r12 edx ebx xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.362:                       # Preds ..B3.112 ..B3.115 ..B3.117 # Infreq
        xorl      %r8d, %r8d                                    #107.9
        jmp       ..B3.125      # Prob 100%                     #107.9
                                # LOE r11 r12 r13 edx ebx r8d r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.364:                       # Preds ..B3.113                # Infreq
        movl      %r9d, %r8d                                    #107.9
        xorl      %esi, %esi                                    #107.9
        andl      $-8, %r8d                                     #107.9
        jmp       ..B3.122      # Prob 100%                     #107.9
                                # LOE r11 r12 r13 edx ebx esi r8d r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.365:                       # Preds ..B3.197 ..B3.384 ..B3.195 ..B3.153 ..B3.366
                                #       ..B3.151                # Infreq
        movq      1000(%rsp), %rax                              #
        movl      880(%rsp), %edi                               #
        movq      2144(%rsp), %r10                              #
        movq      2184(%rsp), %r11                              #
        movq      2152(%rsp), %rsi                              #
        movl      2160(%rsp), %ecx                              #
        movl      1080(%rsp), %r8d                              #
        movl      1008(%rsp), %r9d                              #
        jmp       ..B3.201      # Prob 100%                     #
                                # LOE rax rsi r10 r11 edx ecx edi r8d r9d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.366:                       # Preds ..B3.148                # Infreq
        incl      %ebx                                          #105.7
        cmpl      992(%rsp), %ebx                               #105.7
        jb        ..B3.129      # Prob 82%                      #105.7
        jmp       ..B3.365      # Prob 100%                     #105.7
                                # LOE r12 edx ebx xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.369:                       # Preds ..B3.144                # Infreq
        xorl      %edi, %edi                                    #107.9
        jmp       ..B3.148      # Prob 100%                     #107.9
                                # LOE rdi r11 r12 r13 eax edx ebx r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.371:                       # Preds ..B3.130 ..B3.133 ..B3.135 # Infreq
        xorl      %eax, %eax                                    #107.9
        jmp       ..B3.143      # Prob 100%                     #107.9
                                # LOE r11 r12 r13 eax edx ebx r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.373:                       # Preds ..B3.131                # Infreq
        movl      2160(%rsp), %ecx                              #115.43
        movl      %r9d, %eax                                    #107.9
        imull     %edx, %ecx                                    #115.43
        andl      $-8, %eax                                     #107.9
        addl      %edx, %ecx                                    #115.43
        xorl      %edi, %edi                                    #107.9
        addl      %r10d, %ecx                                   #107.9
        jmp       ..B3.140      # Prob 100%                     #107.9
                                # LOE r11 r12 r13 eax edx ecx ebx edi r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.376:                       # Preds ..B3.169                # Infreq
        incl      %ebx                                          #105.7
        cmpl      992(%rsp), %ebx                               #105.7
        jb        ..B3.129      # Prob 82%                      #105.7
        jmp       ..B3.356      # Prob 100%                     #105.7
                                # LOE r12 edx ebx xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.379:                       # Preds ..B3.156 ..B3.159 ..B3.161 # Infreq
        xorl      %eax, %eax                                    #107.9
        jmp       ..B3.169      # Prob 100%                     #107.9
                                # LOE r11 r12 r13 eax edx ebx r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.381:                       # Preds ..B3.157                # Infreq
        movl      %r9d, %eax                                    #107.9
        xorl      %edi, %edi                                    #107.9
        andl      $-8, %eax                                     #107.9
        lea       (%r10,%rdx,2), %ecx                           #107.9
        jmp       ..B3.166      # Prob 100%                     #107.9
                                # LOE r11 r12 r13 eax edx ecx ebx edi r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.384:                       # Preds ..B3.192                # Infreq
        incl      %ebx                                          #105.7
        cmpl      992(%rsp), %ebx                               #105.7
        jb        ..B3.129      # Prob 82%                      #105.7
        jmp       ..B3.365      # Prob 100%                     #105.7
                                # LOE r12 edx ebx xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.387:                       # Preds ..B3.188                # Infreq
        xorl      %r9d, %r9d                                    #107.9
        jmp       ..B3.192      # Prob 100%                     #107.9
                                # LOE r9 r11 r12 r13 edx ebx edi r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.389:                       # Preds ..B3.174 ..B3.177 ..B3.179 # Infreq
        xorl      %edi, %edi                                    #107.9
        jmp       ..B3.187      # Prob 100%                     #107.9
                                # LOE r11 r12 r13 edx ebx edi r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.391:                       # Preds ..B3.175                # Infreq
        movl      2160(%rsp), %r8d                              #115.43
        movl      %r9d, %edi                                    #107.9
        imull     %edx, %r8d                                    #115.43
        lea       (%r10,%rdx,2), %r15d                          #107.9
        addl      %edx, %r8d                                    #115.43
        andl      $-8, %edi                                     #107.9
        addl      %r10d, %r8d                                   #107.9
        xorl      %ecx, %ecx                                    #107.9
        movslq    %r15d, %r15                                   #113.11
        movslq    %r8d, %r8                                     #115.11
        movslq    %r10d, %rsi                                   #112.11
        jmp       ..B3.184      # Prob 100%                     #112.11
                                # LOE rsi r8 r11 r12 r13 r15 edx ecx ebx edi r9d r10d r14d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.394:                       # Preds ..B3.207 ..B3.210 ..B3.212 # Infreq
        xorl      %eax, %eax                                    #107.9
        jmp       ..B3.220      # Prob 100%                     #107.9
                                # LOE rsi r8 r9 eax edx edi r10d r11d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.396:                       # Preds ..B3.208                # Infreq
        movl      %r11d, %eax                                   #107.9
        xorl      %r13d, %r13d                                  #107.9
        andl      $-8, %eax                                     #107.9
        jmp       ..B3.217      # Prob 100%                     #107.9
                                # LOE rsi r8 r9 eax edx edi r10d r11d r13d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.399:                       # Preds ..B3.238                # Infreq
        xorl      %ecx, %ecx                                    #107.9
        jmp       ..B3.242      # Prob 100%                     #107.9
                                # LOE rcx rsi r8 r9 eax edx ebx edi r10d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.400:                       # Preds ..B3.224 ..B3.227 ..B3.229 # Infreq
        xorl      %eax, %eax                                    #107.9
        jmp       ..B3.237      # Prob 100%                     #107.9
                                # LOE rsi r8 r9 eax edx edi r10d r11d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.402:                       # Preds ..B3.225                # Infreq
        movl      %r11d, %eax                                   #107.9
        xorl      %r15d, %r15d                                  #107.9
        andl      $-8, %eax                                     #107.9
        jmp       ..B3.234      # Prob 100%                     #107.9
                                # LOE rsi r8 r9 eax edx edi r10d r11d r15d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.407:                       # Preds ..B3.264                # Infreq
        movq      $0, 2448(%rsp)                                #107.9
        jmp       ..B3.271      # Prob 100%                     #107.9
                                # LOE r8 r9 eax edx ecx ebx edi r10d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.409:                       # Preds ..B3.247 ..B3.250 ..B3.252 # Infreq
        xorl      %ecx, %ecx                                    #107.9
        jmp       ..B3.263      # Prob 100%                     #107.9
                                # LOE r8 r9 edx ecx ebx edi r10d r11d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.411:                       # Preds ..B3.248                # Infreq
        movl      %r11d, %ecx                                   #107.9
        lea       (%rdx,%rbx), %eax                             #113.37
        andl      $-8, %ecx                                     #107.9
        xorl      %esi, %esi                                    #107.9
        addl      %edi, %eax                                    #107.9
        jmp       ..B3.257      # Prob 100%                     #107.9
                                # LOE r8 r9 eax edx ecx ebx esi edi r10d r11d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.414:                       # Preds ..B3.308                # Infreq
        incl      %ecx                                          #105.7
        cmpl      1048(%rsp), %ecx                              #105.7
        jb        ..B3.278      # Prob 82%                      #105.7
                                # LOE rbx edx ecx xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.415:                       # Preds ..B3.313 ..B3.312 ..B3.311 ..B3.414 # Infreq
        movq      %rbx, 2184(%rsp)                              #
        jmp       ..B3.433      # Prob 100%                     #
                                # LOE edx xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.416:                       # Preds ..B3.298                # Infreq
        movq      $0, 2360(%rsp)                                #107.9
        jmp       ..B3.308      # Prob 100%                     #107.9
                                # LOE rbx rdi r8 edx ecx esi r8d r9d r10d r11d r12d r8b xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.418:                       # Preds ..B3.279 ..B3.281 ..B3.283 # Infreq
        xorl      %r12d, %r12d                                  #107.9
        jmp       ..B3.297      # Prob 100%                     #107.9
                                # LOE rbx rdi r8 eax edx ecx esi r8d r9d r10d r11d r12d r8b xmm4 xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.423:                       # Preds ..B3.315                # Infreq
        incl      %edi                                          #103.3
        movq      %rax, %rbx                                    #121.15
        movq      %r11, %r12                                    #121.15
        movq      %r10, %rax                                    #122.5
        movq      %rsi, %r11                                    #122.5
        movq      %rbx, %r10                                    #123.5
        movq      %r12, %rsi                                    #123.5
        cmpl      %r9d, %edi                                    #103.3
        jb        ..B3.4        # Prob 82%                      #103.3
        jmp       ..B3.3        # Prob 100%                     #103.3
                                # LOE rax rsi r10 r11 edx ecx edi r8d r9d xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
..B3.429:                       # Preds ..B3.10                 # Infreq
        movq      %rax, 1000(%rsp)                              #
        movl      %edi, 880(%rsp)                               #
        movq      %r10, 2144(%rsp)                              #
        movl      %ecx, 2160(%rsp)                              #
        movl      %r8d, 1080(%rsp)                              #
        movl      %r9d, 1008(%rsp)                              #
        jmp       ..B3.59       # Prob 100%                     #
        .align    16,0x90
..___tag_value_diffusion_baseline.69:                           #
                                # LOE rsi r11 edx xmm5 xmm6 xmm7 xmm8 xmm9 xmm10 xmm11
# mark_end;
	.type	diffusion_baseline,@function
	.size	diffusion_baseline,.-diffusion_baseline
	.data
# -- End  diffusion_baseline
	.text
# -- Begin  dump_result
	.text
# mark_begin;
       .align    16,0x90
	.globl dump_result
# --- dump_result(double *, int, int, int, char *)
dump_result:
# parameter 1: %rdi
# parameter 2: %esi
# parameter 3: %edx
# parameter 4: %ecx
# parameter 5: %r8
..B4.1:                         # Preds ..B4.0
..___tag_value_dump_result.70:                                  #133.67
..L71:
                                                         #133.67
        pushq     %r13                                          #133.67
..___tag_value_dump_result.72:                                  #
        pushq     %r14                                          #133.67
..___tag_value_dump_result.74:                                  #
        pushq     %r15                                          #133.67
..___tag_value_dump_result.76:                                  #
        pushq     %rbx                                          #133.67
..___tag_value_dump_result.78:                                  #
        pushq     %rbp                                          #133.67
..___tag_value_dump_result.80:                                  #
        movl      %esi, %r14d                                   #133.67
        movq      %rdi, %r15                                    #133.67
        movq      %r8, %rdi                                     #134.15
        movl      $.L_2__STRING.0, %esi                         #134.15
        movl      %ecx, %ebp                                    #133.67
        movl      %edx, %r13d                                   #133.67
#       fopen(const char *__restrict__, const char *__restrict__)
        call      fopen                                         #134.15
                                # LOE rax r12 r15 ebp r13d r14d
..B4.9:                         # Preds ..B4.1
        movq      %rax, %rbx                                    #134.15
                                # LOE rbx r12 r15 ebp r13d r14d
..B4.2:                         # Preds ..B4.9
        testq     %rbx, %rbx                                    #135.3
        je        ..B4.6        # Prob 0%                       #135.3
                                # LOE rbx r12 r15 ebp r13d r14d
..B4.3:                         # Preds ..B4.2
        imull     %r13d, %r14d                                  #137.3
        movq      %r15, %rdi                                    #137.3
        imull     %ebp, %r14d                                   #137.3
        movl      $8, %esi                                      #137.3
        movslq    %r14d, %r14                                   #137.3
        movq      %rbx, %rcx                                    #137.3
        movq      %r14, %rdx                                    #137.3
#       fwrite(const void *__restrict__, size_t, size_t, FILE *__restrict__)
        call      fwrite                                        #137.3
                                # LOE rbx r12
..B4.4:                         # Preds ..B4.3
        movq      %rbx, %rdi                                    #138.3
..___tag_value_dump_result.82:                                  #138.3
        popq      %rbp                                          #138.3
..___tag_value_dump_result.83:                                  #
        popq      %rbx                                          #138.3
..___tag_value_dump_result.85:                                  #
        popq      %r15                                          #138.3
..___tag_value_dump_result.87:                                  #
        popq      %r14                                          #138.3
..___tag_value_dump_result.89:                                  #
        popq      %r13                                          #138.3
..___tag_value_dump_result.91:                                  #
#       fclose(FILE *)
        jmp       fclose                                        #138.3
..___tag_value_dump_result.92:                                  #
                                # LOE
..B4.6:                         # Preds ..B4.2                  # Infreq
        movl      $.L_2__STRING.1, %edi                         #135.3
        movl      $.L_2__STRING.2, %esi                         #135.3
        movl      $135, %edx                                    #135.3
        movl      $__$U0, %ecx                                  #135.3
#       __assert_fail(const char *, const char *, unsigned int, const char *)
        call      __assert_fail                                 #135.3
        .align    16,0x90
..___tag_value_dump_result.98:                                  #
                                # LOE
# mark_end;
	.type	dump_result,@function
	.size	dump_result,.-dump_result
	.data
# -- End  dump_result
	.text
# -- Begin  init
	.text
# mark_begin;
       .align    16,0x90
	.globl init
# --- init(double *, const int, const int, const int, const double, const double, const double, const double, const double, const double, const double, const double)
init:
# parameter 1: %rdi
# parameter 2: %esi
# parameter 3: %edx
# parameter 4: %ecx
# parameter 5: %xmm0
# parameter 6: %xmm1
# parameter 7: %xmm2
# parameter 8: %xmm3
# parameter 9: %xmm4
# parameter 10: %xmm5
# parameter 11: %xmm6
# parameter 12: %xmm7
..B5.1:                         # Preds ..B5.0
..___tag_value_init.99:                                         #65.46
..L100:
                                                        #65.46
        pushq     %rbp                                          #65.46
..___tag_value_init.101:                                        #
        movq      %rsp, %rbp                                    #65.46
..___tag_value_init.102:                                        #
        andq      $-32, %rsp                                    #65.46
        pushq     %r12                                          #65.46
        pushq     %r13                                          #65.46
        pushq     %r14                                          #65.46
        pushq     %r15                                          #65.46
        pushq     %rbx                                          #65.46
        subq      $376, %rsp                                    #65.46
..___tag_value_init.104:                                        #
        movl      %esi, %r12d                                   #65.46
        vmulsd    %xmm0, %xmm0, %xmm8                           #68.8
        movl      %ecx, %r15d                                   #65.46
        vmulsd    %xmm6, %xmm8, %xmm9                           #68.8
        movl      %edx, %r14d                                   #65.46
        vmulsd    %xmm7, %xmm9, %xmm10                          #68.8
        movq      %rdi, %r13                                    #65.46
        vmovsd    %xmm0, 56(%rsp)                               #65.46
        vxorpd    .L_2il0floatpacket.26(%rip), %xmm10, %xmm0    #68.8
        vmovsd    %xmm7, 8(%rsp)                                #65.46
        vmovsd    %xmm6, (%rsp)                                 #65.46
        vmovsd    %xmm5, 48(%rsp)                               #65.46
        vmovsd    %xmm4, 40(%rsp)                               #65.46
        vmovsd    %xmm3, 32(%rsp)                               #65.46
        vmovsd    %xmm2, 64(%rsp)                               #65.46
        vmovsd    %xmm1, 72(%rsp)                               #65.46
        movslq    %r12d, %rbx                                   #65.46
        call      exp                                           #68.8
                                # LOE rbx r13 r12d r14d r15d xmm0
..B5.40:                        # Preds ..B5.1
        vmovsd    %xmm0, 240(%rsp)                              #68.8
        vmovsd    72(%rsp), %xmm0                               #69.8
        vmulsd    %xmm0, %xmm0, %xmm1                           #69.8
        vmulsd    (%rsp), %xmm1, %xmm2                          #69.8
        vmulsd    8(%rsp), %xmm2, %xmm3                         #69.8
        vxorpd    .L_2il0floatpacket.26(%rip), %xmm3, %xmm0     #69.8
        call      exp                                           #69.8
                                # LOE rbx r13 r12d r14d r15d xmm0
..B5.39:                        # Preds ..B5.40
        vmovsd    %xmm0, 120(%rsp)                              #69.8
        vmovsd    64(%rsp), %xmm0                               #70.8
        vmulsd    %xmm0, %xmm0, %xmm1                           #70.8
        vmulsd    (%rsp), %xmm1, %xmm2                          #70.8
        vmulsd    8(%rsp), %xmm2, %xmm3                         #70.8
        vxorpd    .L_2il0floatpacket.26(%rip), %xmm3, %xmm0     #70.8
        call      exp                                           #70.8
                                # LOE rbx r13 r12d r14d r15d xmm0
..B5.38:                        # Preds ..B5.39
        vmovapd   %xmm0, %xmm4                                  #70.8
        xorl      %edx, %edx                                    #71.3
        testl     %r15d, %r15d                                  #71.21
        jle       ..B5.26       # Prob 9%                       #71.21
                                # LOE rbx r13 edx r12d r14d r15d xmm4
..B5.2:                         # Preds ..B5.38
        vmovsd    56(%rsp), %xmm1                               #79.29
        movl      $4, %eax                                      #74.38
        vmulsd    32(%rsp), %xmm1, %xmm3                        #79.29
        movl      %r12d, %esi                                   #82.9
        imull     %r14d, %esi                                   #82.9
        vmovupd   .L_2il0floatpacket.2(%rip), %ymm10            #75.34
        vmovupd   .L_2il0floatpacket.5(%rip), %ymm9             #78.19
        vmovupd   .L_2il0floatpacket.6(%rip), %ymm8             #79.13
        vmovsd    72(%rsp), %xmm0                               #80.29
        vmovd     %eax, %xmm6                                   #74.38
        vmovsd    64(%rsp), %xmm5                               #81.29
        vmovsd    .L_2il0floatpacket.4(%rip), %xmm1             #75.34
        vmovsd    .L_2il0floatpacket.25(%rip), %xmm12           #78.19
        vmulsd    40(%rsp), %xmm0, %xmm0                        #80.29
        movl      %r12d, %ecx                                   #73.7
        vbroadcastsd 240(%rsp), %ymm7                           #68.8
        vbroadcastsd %xmm3, %ymm2                               #79.29
        vmulsd    48(%rsp), %xmm5, %xmm13                       #81.29
        vbroadcastsd %xmm4, %ymm5                               #70.8
        vmovupd   %ymm7, 160(%rsp)                              #72.10
        vmovupd   %ymm2, 192(%rsp)                              #72.10
        vmovsd    %xmm13, 88(%rsp)                              #72.10
        vmovsd    %xmm0, 280(%rsp)                              #72.10
        vmovsd    %xmm3, 264(%rsp)                              #72.10
        vmovsd    %xmm4, 80(%rsp)                               #72.10
        vpbroadcastd %xmm6, %xmm11                              #74.38
        andl      $-4, %ecx                                     #73.7
        vbroadcastsd 120(%rsp), %ymm6                           #69.8
        vmovdqu   %xmm11, 224(%rsp)                             #72.10
        vmovupd   %ymm5, (%rsp)                                 #72.10
        vmovupd   %ymm6, 128(%rsp)                              #72.10
        movslq    %ecx, %rcx                                    #73.7
        movq      %rcx, 96(%rsp)                                #72.10
        movl      %esi, 104(%rsp)                               #72.10
        movq      %rbx, 272(%rsp)                               #72.10
        movl      %edx, %ebx                                    #72.10
        movq      %r13, 248(%rsp)                               #72.10
        movl      %r14d, 256(%rsp)                              #72.10
        movl      %r15d, 112(%rsp)                              #72.10
        movl      %edx, %r15d                                   #72.10
                                # LOE ebx r12d r15d
..B5.3:                         # Preds ..B5.5 ..B5.2
        xorl      %r14d, %r14d                                  #72.5
        cmpl      $0, 256(%rsp)                                 #72.23
        jle       ..B5.5        # Prob 10%                      #72.23
                                # LOE ebx r12d r14d r15d
..B5.4:                         # Preds ..B5.3
        testl     %r12d, %r12d                                  #73.25
        jg        ..B5.6        # Prob 50%                      #73.25
                                # LOE ebx r12d r14d r15d
..B5.5:                         # Preds ..B5.3 ..B5.28 ..B5.24 ..B5.4
        incl      %r15d                                         #71.3
        addl      104(%rsp), %ebx                               #71.3
        cmpl      112(%rsp), %r15d                              #71.3
        jb        ..B5.3        # Prob 82%                      #71.3
        jmp       ..B5.26       # Prob 100%                     #71.3
                                # LOE ebx r12d r15d
..B5.6:                         # Preds ..B5.4
        vxorpd    %xmm0, %xmm0, %xmm0                           #81.22
        vcvtsi2sd %r15d, %xmm0, %xmm0                           #81.22
        movslq    %ebx, %r13                                    #73.12
        vaddsd    .L_2il0floatpacket.4(%rip), %xmm0, %xmm1      #81.22
        vmulsd    88(%rsp), %xmm1, %xmm0                        #81.22
        vzeroupper                                              #81.22
        call      cos                                           #81.22
                                # LOE r13 ebx r12d r14d r15d xmm0
..B5.41:                        # Preds ..B5.6
        vmovsd    .L_2il0floatpacket.27(%rip), %xmm2            #81.22
        vfnmadd231sd 80(%rsp), %xmm0, %xmm2                     #81.22
        vbroadcastsd %xmm0, %ymm1                               #81.29
        vmovupd   .L_2il0floatpacket.6(%rip), %ymm0             #81.22
        vmovsd    %xmm2, 56(%rsp)                               #81.22
        vfnmadd231pd (%rsp), %ymm1, %ymm0                       #81.22
        vmovupd   %ymm0, 320(%rsp)                              #81.22
        movl      %ebx, 32(%rsp)                                #81.22
        movl      %r15d, 40(%rsp)                               #81.22
                                # LOE r13 r12d r14d
..B5.7:                         # Preds ..B5.23 ..B5.27 ..B5.41
        cmpl      $4, %r12d                                     #73.7
        jl        ..B5.30       # Prob 10%                      #73.7
                                # LOE r13 r12d r14d
..B5.8:                         # Preds ..B5.7
        movq      248(%rsp), %rax                               #82.9
        lea       (%rax,%r13,8), %rdx                           #82.9
        movq      %rdx, 72(%rsp)                                #82.9
        cmpl      $600, %r12d                                   #73.7
        jl        ..B5.32       # Prob 10%                      #73.7
                                # LOE rdx r13 edx r12d r14d dl dh
..B5.9:                         # Preds ..B5.8
        movq      %rdx, %r15                                    #73.7
        andq      $31, %r15                                     #73.7
        testl     %r15d, %r15d                                  #73.7
        je        ..B5.12       # Prob 50%                      #73.7
                                # LOE r13 r12d r14d r15d
..B5.10:                        # Preds ..B5.9
        testl     $7, %r15d                                     #73.7
        jne       ..B5.30       # Prob 10%                      #73.7
                                # LOE r13 r12d r14d r15d
..B5.11:                        # Preds ..B5.10
        negl      %r15d                                         #73.7
        addl      $32, %r15d                                    #73.7
        shrl      $3, %r15d                                     #73.7
                                # LOE r13 r12d r14d r15d
..B5.12:                        # Preds ..B5.11 ..B5.9
        lea       4(%r15), %eax                                 #73.7
        cmpl      %eax, %r12d                                   #73.7
        jl        ..B5.30       # Prob 10%                      #73.7
                                # LOE r13 r12d r14d r15d
..B5.13:                        # Preds ..B5.12
        vxorpd    %xmm0, %xmm0, %xmm0                           #76.29
        movl      %r12d, %ebx                                   #73.7
        vcvtsi2sd %r14d, %xmm0, %xmm0                           #76.29
        subl      %r15d, %ebx                                   #73.7
        xorl      %eax, %eax                                    #74.38
        andl      $3, %ebx                                      #73.7
        vaddsd    .L_2il0floatpacket.4(%rip), %xmm0, %xmm1      #76.34
        negq      %rbx                                          #73.7
        addq      272(%rsp), %rbx                               #73.7
        vmulsd    280(%rsp), %xmm1, %xmm0                       #76.34
        movl      $0, 296(%rsp)                                 #73.7
        movq      %rax, 288(%rsp)                               #74.38
        testl     %r15d, %r15d                                  #73.7
        jbe       ..B5.29       # Prob 10%                      #73.7
                                # LOE rbx r13 r12d r14d r15d xmm0
..B5.14:                        # Preds ..B5.13
        vzeroupper                                              #80.22
        call      cos                                           #80.22
                                # LOE rbx r13 r12d r14d r15d xmm0
..B5.42:                        # Preds ..B5.14
        vmovapd   %xmm0, %xmm11                                 #80.22
        vmovsd    .L_2il0floatpacket.27(%rip), %xmm0            #80.22
        vfnmadd231sd 120(%rsp), %xmm11, %xmm0                   #80.22
        vmovsd    264(%rsp), %xmm10                             #82.9
        vmovsd    240(%rsp), %xmm12                             #82.9
        vmovsd    .L_2il0floatpacket.4(%rip), %xmm9             #82.9
        vmulsd    56(%rsp), %xmm0, %xmm1                        #82.9
        movl      %r12d, 48(%rsp)                               #82.9
        vmulsd    .L_2il0floatpacket.25(%rip), %xmm1, %xmm8     #82.9
        movq      288(%rsp), %rsi                               #82.9
        movl      296(%rsp), %edi                               #82.9
        movq      72(%rsp), %r12                                #82.9
                                # LOE rbx rsi r12 r13 edi r14d r15d xmm8 xmm9 xmm10 xmm11 xmm12
..B5.15:                        # Preds ..B5.43 ..B5.42
        vxorpd    %xmm1, %xmm1, %xmm1                           #79.22
        vcvtsi2sd %edi, %xmm1, %xmm1                            #79.22
        vaddsd    %xmm1, %xmm9, %xmm2                           #79.22
        vmulsd    %xmm2, %xmm10, %xmm3                          #79.22
        vbroadcastsd %xmm3, %ymm0                               #79.22
        call      __svml_cos4                                   #79.22
                                # LOE rbx rsi r12 r13 edi r14d r15d xmm8 xmm9 xmm10 xmm11 xmm12 ymm0
..B5.43:                        # Preds ..B5.15
        incl      %edi                                          #73.7
        vmulsd    %xmm0, %xmm12, %xmm1                          #82.9
        vfnmadd213sd %xmm8, %xmm8, %xmm1                        #82.9
        vmovsd    %xmm1, (%r12,%rsi,8)                          #82.9
        incq      %rsi                                          #73.7
        cmpl      %r15d, %edi                                   #73.7
        jb        ..B5.15       # Prob 82%                      #73.7
                                # LOE rbx rsi r12 r13 edi r14d r15d xmm8 xmm9 xmm10 xmm11 xmm12
..B5.16:                        # Preds ..B5.43
        movl      48(%rsp), %r12d                               #
                                # LOE rbx r13 r12d r14d r15d xmm11
..B5.17:                        # Preds ..B5.16 ..B5.47 ..B5.48
        vmovupd   .L_2il0floatpacket.6(%rip), %ymm8             #80.22
        lea       1(%r15), %eax                                 #74.38
        vmovd     %r15d, %xmm1                                  #74.38
        vbroadcastsd %xmm11, %ymm0                              #80.29
        vmovdqu   224(%rsp), %xmm13                             #74.38
        vmovd     %eax, %xmm2                                   #74.38
        vpunpcklqdq %xmm2, %xmm1, %xmm5                         #74.38
        vfnmadd231pd 128(%rsp), %ymm0, %ymm8                    #80.22
        lea       2(%r15), %edx                                 #74.38
        vmovupd   160(%rsp), %ymm9                              #74.38
        vmovupd   192(%rsp), %ymm14                             #74.38
        vmovupd   .L_2il0floatpacket.6(%rip), %ymm10            #74.38
        vmovd     %edx, %xmm3                                   #74.38
        vmovupd   .L_2il0floatpacket.5(%rip), %ymm11            #74.38
        vmovupd   .L_2il0floatpacket.2(%rip), %ymm12            #74.38
        movq      72(%rsp), %rsi                                #74.38
        lea       3(%r15), %ecx                                 #74.38
        movl      %r15d, %r15d                                  #73.7
        vmovd     %ecx, %xmm4                                   #74.38
        vpunpcklqdq %xmm4, %xmm3, %xmm6                         #74.38
        vshufps   $136, %xmm6, %xmm5, %xmm15                    #74.38
                                # LOE rbx rsi r13 r15 r12d r14d xmm13 xmm15 ymm8 ymm9 ymm10 ymm11 ymm12 ymm14
..B5.18:                        # Preds ..B5.44 ..B5.17
        vcvtdq2pd %xmm15, %ymm1                                 #75.29
        vaddpd    %ymm1, %ymm12, %ymm2                          #75.34
        vmulpd    %ymm2, %ymm14, %ymm0                          #75.34
        call      __svml_cos4                                   #79.22
                                # LOE rbx rsi r13 r15 r12d r14d xmm13 xmm15 ymm0 ymm8 ymm9 ymm10 ymm11 ymm12 ymm14
..B5.44:                        # Preds ..B5.18
        vmovapd   %ymm10, %ymm1                                 #79.22
        vpaddd    %xmm13, %xmm15, %xmm15                        #74.38
        vfnmadd231pd %ymm9, %ymm0, %ymm1                        #79.22
        vmulpd    %ymm1, %ymm11, %ymm2                          #79.22
        vmulpd    %ymm8, %ymm2, %ymm3                           #80.22
        vmulpd    320(%rsp), %ymm3, %ymm4                       #81.22
        vmovupd   %ymm4, (%rsi,%r15,8)                          #82.9
        addq      $4, %r15                                      #73.7
        cmpq      %rbx, %r15                                    #73.7
        jb        ..B5.18       # Prob 82%                      #73.7
                                # LOE rbx rsi r13 r15 r12d r14d xmm13 xmm15 ymm8 ymm9 ymm10 ymm11 ymm12 ymm14
..B5.20:                        # Preds ..B5.44 ..B5.30
        movl      %ebx, %r15d                                   #73.7
        movslq    %ebx, %rbx                                    #73.7
        cmpl      %r12d, %r15d                                  #73.7
        jae       ..B5.27       # Prob 10%                      #73.7
                                # LOE rbx r13 r12d r14d r15d
..B5.21:                        # Preds ..B5.20
        vxorpd    %xmm0, %xmm0, %xmm0                           #80.22
        vcvtsi2sd %r14d, %xmm0, %xmm0                           #80.22
        movq      248(%rsp), %rax                               #82.9
        vaddsd    .L_2il0floatpacket.4(%rip), %xmm0, %xmm1      #80.22
        vmulsd    280(%rsp), %xmm1, %xmm0                       #80.22
        lea       (%rax,%r13,8), %rdx                           #82.9
        movq      %rdx, 64(%rsp)                                #82.9
        vzeroupper                                              #80.22
        call      cos                                           #80.22
                                # LOE rbx r13 r12d r14d r15d xmm0
..B5.45:                        # Preds ..B5.21
        vmovsd    .L_2il0floatpacket.27(%rip), %xmm1            #80.22
        vfnmadd231sd 120(%rsp), %xmm0, %xmm1                    #80.22
        vmovsd    264(%rsp), %xmm9                              #82.9
        vmovsd    240(%rsp), %xmm11                             #82.9
        vmovsd    .L_2il0floatpacket.4(%rip), %xmm10            #82.9
        vmulsd    56(%rsp), %xmm1, %xmm2                        #82.9
        movq      64(%rsp), %rsi                                #82.9
        vmulsd    .L_2il0floatpacket.25(%rip), %xmm2, %xmm8     #82.9
                                # LOE rbx rsi r13 r12d r14d r15d xmm8 xmm9 xmm10 xmm11
..B5.22:                        # Preds ..B5.46 ..B5.45
        vxorpd    %xmm1, %xmm1, %xmm1                           #79.22
        vcvtsi2sd %r15d, %xmm1, %xmm1                           #79.22
        vaddsd    %xmm1, %xmm10, %xmm2                          #79.22
        vmulsd    %xmm2, %xmm9, %xmm3                           #79.22
        vbroadcastsd %xmm3, %ymm0                               #79.22
        call      __svml_cos4                                   #79.22
                                # LOE rbx rsi r13 r12d r14d r15d xmm8 xmm9 xmm10 xmm11 ymm0
..B5.46:                        # Preds ..B5.22
        incl      %r15d                                         #73.7
        vmulsd    %xmm0, %xmm11, %xmm1                          #82.9
        vfnmadd213sd %xmm8, %xmm8, %xmm1                        #82.9
        vmovsd    %xmm1, (%rsi,%rbx,8)                          #82.9
        incq      %rbx                                          #73.7
        cmpl      %r12d, %r15d                                  #73.7
        jb        ..B5.22       # Prob 82%                      #73.7
                                # LOE rbx rsi r13 r12d r14d r15d xmm8 xmm9 xmm10 xmm11
..B5.23:                        # Preds ..B5.46
        incl      %r14d                                         #72.5
        addq      272(%rsp), %r13                               #72.5
        cmpl      256(%rsp), %r14d                              #72.5
        jb        ..B5.7        # Prob 82%                      #72.5
                                # LOE r13 r12d r14d
..B5.24:                        # Preds ..B5.23                 # Infreq
        movl      32(%rsp), %ebx                                #
        movl      40(%rsp), %r15d                               #
        jmp       ..B5.5        # Prob 100%                     #
                                # LOE ebx r12d r15d
..B5.26:                        # Preds ..B5.5 ..B5.38          # Infreq
        vzeroupper                                              #86.1
        addq      $376, %rsp                                    #86.1
..___tag_value_init.109:                                        #86.1
        popq      %rbx                                          #86.1
..___tag_value_init.110:                                        #86.1
        popq      %r15                                          #86.1
..___tag_value_init.111:                                        #86.1
        popq      %r14                                          #86.1
..___tag_value_init.112:                                        #86.1
        popq      %r13                                          #86.1
..___tag_value_init.113:                                        #86.1
        popq      %r12                                          #86.1
        movq      %rbp, %rsp                                    #86.1
        popq      %rbp                                          #86.1
..___tag_value_init.114:                                        #
        ret                                                     #86.1
..___tag_value_init.116:                                        #
                                # LOE
..B5.27:                        # Preds ..B5.20                 # Infreq
        incl      %r14d                                         #72.5
        addq      272(%rsp), %r13                               #72.5
        cmpl      256(%rsp), %r14d                              #72.5
        jb        ..B5.7        # Prob 82%                      #72.5
                                # LOE r13 r12d r14d
..B5.28:                        # Preds ..B5.27                 # Infreq
        movl      32(%rsp), %ebx                                #
        movl      40(%rsp), %r15d                               #
        jmp       ..B5.5        # Prob 100%                     #
                                # LOE ebx r12d r15d
..B5.29:                        # Preds ..B5.13                 # Infreq
        vzeroupper                                              #80.22
        call      cos                                           #80.22
                                # LOE rbx r13 r12d r14d r15d xmm0
..B5.47:                        # Preds ..B5.29                 # Infreq
        vmovapd   %xmm0, %xmm11                                 #80.22
        jmp       ..B5.17       # Prob 100%                     #80.22
                                # LOE rbx r13 r12d r14d r15d xmm11
..B5.30:                        # Preds ..B5.7 ..B5.10 ..B5.12  # Infreq
        xorl      %ebx, %ebx                                    #73.7
        jmp       ..B5.20       # Prob 100%                     #73.7
                                # LOE rbx r13 r12d r14d
..B5.32:                        # Preds ..B5.8                  # Infreq
        vxorpd    %xmm0, %xmm0, %xmm0                           #80.22
        xorl      %r15d, %r15d                                  #73.7
        vcvtsi2sd %r14d, %xmm0, %xmm0                           #80.22
        movq      96(%rsp), %rbx                                #73.7
        vaddsd    .L_2il0floatpacket.4(%rip), %xmm0, %xmm1      #80.22
        vmulsd    280(%rsp), %xmm1, %xmm0                       #80.22
        vzeroupper                                              #80.22
        call      cos                                           #80.22
                                # LOE rbx r13 ebx r12d r14d r15d bl bh xmm0
..B5.48:                        # Preds ..B5.32                 # Infreq
        vmovapd   %xmm0, %xmm11                                 #80.22
        jmp       ..B5.17       # Prob 100%                     #80.22
        .align    16,0x90
..___tag_value_init.123:                                        #
                                # LOE rbx r13 r12d r14d r15d xmm11
# mark_end;
	.type	init,@function
	.size	init,.-init
	.data
# -- End  init
	.section .rodata, "a"
	.align 32
	.align 32
.L_2il0floatpacket.1:
	.long	0x54442d18,0x3f9921fb,0x54442d18,0x3f9921fb,0x54442d18,0x3f9921fb,0x54442d18,0x3f9921fb
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,32
	.align 32
.L_2il0floatpacket.2:
	.long	0x00000000,0x3fe00000,0x00000000,0x3fe00000,0x00000000,0x3fe00000,0x00000000,0x3fe00000
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,32
	.align 32
.L_2il0floatpacket.5:
	.long	0x00000000,0x3fc00000,0x00000000,0x3fc00000,0x00000000,0x3fc00000,0x00000000,0x3fc00000
	.type	.L_2il0floatpacket.5,@object
	.size	.L_2il0floatpacket.5,32
	.align 32
.L_2il0floatpacket.6:
	.long	0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000,0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.6,@object
	.size	.L_2il0floatpacket.6,32
	.align 32
.L_2il0floatpacket.9:
	.long	0x9999999a,0x3fd99999,0x9999999a,0x3fd99999,0x9999999a,0x3fd99999,0x9999999a,0x3fd99999
	.type	.L_2il0floatpacket.9,@object
	.size	.L_2il0floatpacket.9,32
	.align 32
.L_2il0floatpacket.10:
	.long	0x9999999a,0x3fb99999,0x9999999a,0x3fb99999,0x9999999a,0x3fb99999,0x9999999a,0x3fb99999
	.type	.L_2il0floatpacket.10,@object
	.size	.L_2il0floatpacket.10,32
	.align 32
.L_2il0floatpacket.14:
	.long	0x8b6320fc,0x3fefdffc,0x8b6320fc,0x3fefdffc,0x8b6320fc,0x3fefdffc,0x8b6320fc,0x3fefdffc
	.type	.L_2il0floatpacket.14,@object
	.size	.L_2il0floatpacket.14,32
	.align 32
.L_2il0floatpacket.20:
	.long	0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007,0x00000008
	.type	.L_2il0floatpacket.20,@object
	.size	.L_2il0floatpacket.20,32
	.align 32
.L_2il0floatpacket.21:
	.long	0x0000ff01,0x0000ff02,0x0000ff03,0x0000ff04,0x0000ff05,0x0000ff06,0x0000ff07,0x0000ff08
	.type	.L_2il0floatpacket.21,@object
	.size	.L_2il0floatpacket.21,32
	.align 32
.L_2il0floatpacket.22:
	.long	0x00ff0001,0x00ff0002,0x00ff0003,0x00ff0004,0x00ff0005,0x00ff0006,0x00ff0007,0x00ff0008
	.type	.L_2il0floatpacket.22,@object
	.size	.L_2il0floatpacket.22,32
	.align 32
.L_2il0floatpacket.23:
	.long	0x00ffff01,0x00ffff02,0x00ffff03,0x00ffff04,0x00ffff05,0x00ffff06,0x00ffff07,0x00ffff08
	.type	.L_2il0floatpacket.23,@object
	.size	.L_2il0floatpacket.23,32
	.align 32
.L_2il0floatpacket.24:
	.long	0x00000000,0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007
	.type	.L_2il0floatpacket.24,@object
	.size	.L_2il0floatpacket.24,32
	.align 16
.L_2il0floatpacket.0:
	.long	0x00000000,0x00000001,0x00000002,0x00000003
	.type	.L_2il0floatpacket.0,@object
	.size	.L_2il0floatpacket.0,16
	.align 16
.L_2il0floatpacket.11:
	.long	0x9999999a,0x3fd99999,0x9999999a,0x3fd99999
	.type	.L_2il0floatpacket.11,@object
	.size	.L_2il0floatpacket.11,16
	.align 16
.L_2il0floatpacket.12:
	.long	0x9999999a,0x3fb99999,0x9999999a,0x3fb99999
	.type	.L_2il0floatpacket.12,@object
	.size	.L_2il0floatpacket.12,16
	.align 16
.L_2il0floatpacket.26:
	.long	0x00000000,0x80000000,0x00000000,0x00000000
	.type	.L_2il0floatpacket.26,@object
	.size	.L_2il0floatpacket.26,16
	.align 8
.L_2il0floatpacket.3:
	.long	0x54442d18,0x3f9921fb
	.type	.L_2il0floatpacket.3,@object
	.size	.L_2il0floatpacket.3,8
	.align 8
.L_2il0floatpacket.4:
	.long	0x00000000,0x3fe00000
	.type	.L_2il0floatpacket.4,@object
	.size	.L_2il0floatpacket.4,8
	.align 8
.L_2il0floatpacket.7:
	.long	0x9999999a,0x3fb99999
	.type	.L_2il0floatpacket.7,@object
	.size	.L_2il0floatpacket.7,8
	.align 8
.L_2il0floatpacket.8:
	.long	0x9999999a,0x3fd99999
	.type	.L_2il0floatpacket.8,@object
	.size	.L_2il0floatpacket.8,8
	.align 8
.L_2il0floatpacket.13:
	.long	0x00000000,0x40000000
	.type	.L_2il0floatpacket.13,@object
	.size	.L_2il0floatpacket.13,8
	.align 8
.L_2il0floatpacket.15:
	.long	0xe826d695,0x3e112e0b
	.type	.L_2il0floatpacket.15,@object
	.size	.L_2il0floatpacket.15,8
	.align 8
.L_2il0floatpacket.16:
	.long	0x00000000,0x420a6800
	.type	.L_2il0floatpacket.16,@object
	.size	.L_2il0floatpacket.16,8
	.align 8
.L_2il0floatpacket.17:
	.long	0x00000000,0x42186000
	.type	.L_2il0floatpacket.17,@object
	.size	.L_2il0floatpacket.17,8
	.align 8
.L_2il0floatpacket.18:
	.long	0x00000000,0x3e700000
	.type	.L_2il0floatpacket.18,@object
	.size	.L_2il0floatpacket.18,8
	.align 8
.L_2il0floatpacket.19:
	.long	0x00000000,0x40504000
	.type	.L_2il0floatpacket.19,@object
	.size	.L_2il0floatpacket.19,8
	.align 8
.L_2il0floatpacket.25:
	.long	0x00000000,0x3fc00000
	.type	.L_2il0floatpacket.25,@object
	.size	.L_2il0floatpacket.25,8
	.align 8
.L_2il0floatpacket.27:
	.long	0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.27,@object
	.size	.L_2il0floatpacket.27,8
	.align 1
__$U1:
	.long	1852399981
	.byte	0
	.type	__$U1,@object
	.size	__$U1,5
	.align 1
__$U0:
	.long	1886221668
	.long	1936028255
	.long	7629941
	.type	__$U0,@object
	.size	__$U0,12
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.6:
	.long	1852732754
	.long	543649385
	.long	1717987684
	.long	1869181813
	.long	1701519470
	.long	1818586738
	.long	543434016
	.long	1701669236
	.word	2675
	.byte	0
	.type	.L_2__STRING.6,@object
	.size	.L_2__STRING.6,35
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.7:
	.long	1885432901
	.long	543450483
	.long	1701669236
	.long	622869024
	.long	543568686
	.long	170488616
	.byte	0
	.type	.L_2__STRING.7,@object
	.size	.L_2__STRING.7,25
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.8:
	.long	1347374150
	.long	538976339
	.long	538976288
	.long	622869024
	.long	543568686
	.long	1816545064
	.long	695431279
	.word	10
	.type	.L_2__STRING.8,@object
	.size	.L_2__STRING.8,30
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.9:
	.long	1869768788
	.long	1885890421
	.long	538997877
	.long	622869024
	.long	543568686
	.long	792872744
	.long	665971
	.type	.L_2__STRING.9,@object
	.size	.L_2__STRING.9,28
	.align 4
.L_2__STRING.10:
	.long	1969447745
	.long	2036556146
	.long	538976288
	.long	622869024
	.word	2661
	.byte	0
	.type	.L_2__STRING.10,@object
	.size	.L_2__STRING.10,19
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.5:
	.long	2004053601
	.long	555774565
	.long	673718333
	.long	1684631414
	.long	691022122
	.byte	0
	.type	.L_2__STRING.5,@object
	.size	.L_2__STRING.5,21
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.2:
	.long	1684892019
	.long	1970299694
	.word	25390
	.byte	0
	.type	.L_2__STRING.2,@object
	.size	.L_2__STRING.2,11
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.4:
	.long	555758182
	.long	673718333
	.long	1684631414
	.long	691022122
	.byte	0
	.type	.L_2__STRING.4,@object
	.size	.L_2__STRING.4,17
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.3:
	.long	555757926
	.long	673718333
	.long	1684631414
	.long	691022122
	.byte	0
	.type	.L_2__STRING.3,@object
	.size	.L_2__STRING.3,17
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.0:
	.word	119
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,2
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.1:
	.long	7632239
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,4
	.data
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 8
	.4byte 0x00000014
	.8byte 0x7801000100000000
	.8byte 0x0000019008070c10
	.4byte 0x00000000
	.4byte 0x0000010c
	.4byte 0x0000001c
	.8byte ..___tag_value_main.1
	.8byte ..___tag_value_main.35-..___tag_value_main.1
	.byte 0x04
	.4byte ..___tag_value_main.3-..___tag_value_main.1
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value_main.4-..___tag_value_main.3
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value_main.6-..___tag_value_main.4
	.8byte 0xff800d1c380e0310
	.8byte 0xffffffd80d1affff
	.8byte 0x800d1c380e0c1022
	.8byte 0xfffff80d1affffff
	.8byte 0x0d1c380e0d1022ff
	.8byte 0xfff00d1affffff80
	.8byte 0x1c380e0e1022ffff
	.8byte 0xe80d1affffff800d
	.8byte 0x380e0f1022ffffff
	.8byte 0x0d1affffff800d1c
	.4byte 0xffffffe0
	.2byte 0x0422
	.4byte ..___tag_value_main.21-..___tag_value_main.6
	.2byte 0x04c3
	.4byte ..___tag_value_main.22-..___tag_value_main.21
	.2byte 0x04cf
	.4byte ..___tag_value_main.23-..___tag_value_main.22
	.2byte 0x04ce
	.4byte ..___tag_value_main.24-..___tag_value_main.23
	.2byte 0x04cd
	.4byte ..___tag_value_main.25-..___tag_value_main.24
	.2byte 0x04cc
	.4byte ..___tag_value_main.26-..___tag_value_main.25
	.4byte 0xc608070c
	.byte 0x04
	.4byte ..___tag_value_main.28-..___tag_value_main.26
	.8byte 0x1c380e031010060c
	.8byte 0xd80d1affffff800d
	.8byte 0x0c10028622ffffff
	.8byte 0xffffff800d1c380e
	.8byte 0x1022fffffff80d1a
	.8byte 0xffff800d1c380e0d
	.8byte 0x22fffffff00d1aff
	.8byte 0xff800d1c380e0e10
	.8byte 0xffffffe80d1affff
	.8byte 0x800d1c380e0f1022
	.8byte 0xffffe00d1affffff
	.8byte 0x00000000000022ff
	.byte 0x00
	.4byte 0x00000034
	.4byte 0x0000012c
	.8byte ..___tag_value_accuracy.36
	.8byte ..___tag_value_accuracy.44-..___tag_value_accuracy.36
	.byte 0x04
	.4byte ..___tag_value_accuracy.38-..___tag_value_accuracy.36
	.4byte 0x0283100e
	.byte 0x04
	.4byte ..___tag_value_accuracy.40-..___tag_value_accuracy.38
	.2byte 0x04c3
	.4byte ..___tag_value_accuracy.41-..___tag_value_accuracy.40
	.2byte 0x080e
	.byte 0x04
	.4byte ..___tag_value_accuracy.42-..___tag_value_accuracy.41
	.4byte 0x0283100e
	.byte 0x00
	.4byte 0x0000010c
	.4byte 0x00000164
	.8byte ..___tag_value_diffusion_baseline.45
	.8byte ..___tag_value_diffusion_baseline.69-..___tag_value_diffusion_baseline.45
	.byte 0x04
	.4byte ..___tag_value_diffusion_baseline.47-..___tag_value_diffusion_baseline.45
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value_diffusion_baseline.48-..___tag_value_diffusion_baseline.47
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value_diffusion_baseline.50-..___tag_value_diffusion_baseline.48
	.8byte 0xffe00d1c380e0310
	.8byte 0xffffffd80d1affff
	.8byte 0xe00d1c380e0c1022
	.8byte 0xfffff80d1affffff
	.8byte 0x0d1c380e0d1022ff
	.8byte 0xfff00d1affffffe0
	.8byte 0x1c380e0e1022ffff
	.8byte 0xe80d1affffffe00d
	.8byte 0x380e0f1022ffffff
	.8byte 0x0d1affffffe00d1c
	.4byte 0xffffffe0
	.2byte 0x0422
	.4byte ..___tag_value_diffusion_baseline.55-..___tag_value_diffusion_baseline.50
	.2byte 0x04c3
	.4byte ..___tag_value_diffusion_baseline.56-..___tag_value_diffusion_baseline.55
	.2byte 0x04cf
	.4byte ..___tag_value_diffusion_baseline.57-..___tag_value_diffusion_baseline.56
	.2byte 0x04ce
	.4byte ..___tag_value_diffusion_baseline.58-..___tag_value_diffusion_baseline.57
	.2byte 0x04cd
	.4byte ..___tag_value_diffusion_baseline.59-..___tag_value_diffusion_baseline.58
	.2byte 0x04cc
	.4byte ..___tag_value_diffusion_baseline.60-..___tag_value_diffusion_baseline.59
	.4byte 0xc608070c
	.byte 0x04
	.4byte ..___tag_value_diffusion_baseline.62-..___tag_value_diffusion_baseline.60
	.8byte 0x1c380e031010060c
	.8byte 0xd80d1affffffe00d
	.8byte 0x0c10028622ffffff
	.8byte 0xffffffe00d1c380e
	.8byte 0x1022fffffff80d1a
	.8byte 0xffffe00d1c380e0d
	.8byte 0x22fffffff00d1aff
	.8byte 0xffe00d1c380e0e10
	.8byte 0xffffffe80d1affff
	.8byte 0xe00d1c380e0f1022
	.8byte 0xffffe00d1affffff
	.8byte 0x00000000000022ff
	.byte 0x00
	.4byte 0x00000084
	.4byte 0x00000274
	.8byte ..___tag_value_dump_result.70
	.8byte ..___tag_value_dump_result.98-..___tag_value_dump_result.70
	.byte 0x04
	.4byte ..___tag_value_dump_result.72-..___tag_value_dump_result.70
	.4byte 0x028d100e
	.byte 0x04
	.4byte ..___tag_value_dump_result.74-..___tag_value_dump_result.72
	.4byte 0x038e180e
	.byte 0x04
	.4byte ..___tag_value_dump_result.76-..___tag_value_dump_result.74
	.4byte 0x048f200e
	.byte 0x04
	.4byte ..___tag_value_dump_result.78-..___tag_value_dump_result.76
	.4byte 0x0583280e
	.byte 0x04
	.4byte ..___tag_value_dump_result.80-..___tag_value_dump_result.78
	.4byte 0x0686300e
	.byte 0x04
	.4byte ..___tag_value_dump_result.82-..___tag_value_dump_result.80
	.2byte 0x04c6
	.4byte ..___tag_value_dump_result.83-..___tag_value_dump_result.82
	.4byte 0x04c3280e
	.4byte ..___tag_value_dump_result.85-..___tag_value_dump_result.83
	.4byte 0x04cf200e
	.4byte ..___tag_value_dump_result.87-..___tag_value_dump_result.85
	.4byte 0x04ce180e
	.4byte ..___tag_value_dump_result.89-..___tag_value_dump_result.87
	.4byte 0x04cd100e
	.4byte ..___tag_value_dump_result.91-..___tag_value_dump_result.89
	.2byte 0x080e
	.byte 0x04
	.4byte ..___tag_value_dump_result.92-..___tag_value_dump_result.91
	.8byte 0x028d06860583300e
	.8byte 0x00000000048f038e
	.byte 0x00
	.4byte 0x0000010c
	.4byte 0x000002fc
	.8byte ..___tag_value_init.99
	.8byte ..___tag_value_init.123-..___tag_value_init.99
	.byte 0x04
	.4byte ..___tag_value_init.101-..___tag_value_init.99
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value_init.102-..___tag_value_init.101
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value_init.104-..___tag_value_init.102
	.8byte 0xffe00d1c380e0310
	.8byte 0xffffffd80d1affff
	.8byte 0xe00d1c380e0c1022
	.8byte 0xfffff80d1affffff
	.8byte 0x0d1c380e0d1022ff
	.8byte 0xfff00d1affffffe0
	.8byte 0x1c380e0e1022ffff
	.8byte 0xe80d1affffffe00d
	.8byte 0x380e0f1022ffffff
	.8byte 0x0d1affffffe00d1c
	.4byte 0xffffffe0
	.2byte 0x0422
	.4byte ..___tag_value_init.109-..___tag_value_init.104
	.2byte 0x04c3
	.4byte ..___tag_value_init.110-..___tag_value_init.109
	.2byte 0x04cf
	.4byte ..___tag_value_init.111-..___tag_value_init.110
	.2byte 0x04ce
	.4byte ..___tag_value_init.112-..___tag_value_init.111
	.2byte 0x04cd
	.4byte ..___tag_value_init.113-..___tag_value_init.112
	.2byte 0x04cc
	.4byte ..___tag_value_init.114-..___tag_value_init.113
	.4byte 0xc608070c
	.byte 0x04
	.4byte ..___tag_value_init.116-..___tag_value_init.114
	.8byte 0x1c380e031010060c
	.8byte 0xd80d1affffffe00d
	.8byte 0x0c10028622ffffff
	.8byte 0xffffffe00d1c380e
	.8byte 0x1022fffffff80d1a
	.8byte 0xffffe00d1c380e0d
	.8byte 0x22fffffff00d1aff
	.8byte 0xffe00d1c380e0e10
	.8byte 0xffffffe80d1affff
	.8byte 0xe00d1c380e0f1022
	.8byte 0xffffe00d1affffff
	.8byte 0x00000000000022ff
	.byte 0x00
# End
