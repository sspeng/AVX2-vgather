CC              =      icc 
OPT             =      -std=c99 -openmp -O3 -fno-alias -opt-prefetch=0
AVXFLAGS        =      -xCORE-AVX2 -fma
KNCFLAGS        =      -mmic
KNLFLAGS        =      -xMIC-AVX512
#HOST           =      -xHost

BIN_DIR         =      ../bin


#BASEFLAGS=-opt-prefetch=0 -no-vec
OMPFLAGS=-openmp -opt-prefetch=0

#AVXFLAGS=-xAVX



all: base.load.cpu base.gather.cpu base.load.SP.cpu base.gather.knl simd.cpu simd.knc simd.knl 



base.load.cpu: base_load.cpu.c
	touch base_load.cpu.c
	$(CC) $(OPT) $(AVXFLAGS) $^ -o $(BIN_DIR)/$@
	
base.gather.cpu: base_gather.cpu.c
	touch base_gather.cpu.c
	$(CC) $(OPT) $(AVXFLAGS) $^ -o $(BIN_DIR)/$@


base.load.SP.cpu: base_load_SP.cpu.c
	touch base_load_SP.cpu.c
	$(CC) $(OPT) $(AVXFLAGS) $^ -o $(BIN_DIR)/$@

base.gather.knl: base_gather.knl.c
	touch base_gather.knl.c
	$(CC) $(OPT) $(KNLFLAGS) $^ -o $(BIN_DIR)/$@


simd.cpu: simd.cpu.c
	touch simd.cpu.c
	$(CC) $(OPT) $(AVXFLAGS) $^ -o $(BIN_DIR)/$@

simd.knc: simd.mic.c
	touch simd.mic.c
	$(CC) $(OPT) $(KNCFLAGS) $^ -o $(BIN_DIR)/$@

simd.knl: simd.mic.c
	touch simd.mic.c
	$(CC) $(OPT) $(KNLFLAGS) $^ -o $(BIN_DIR)/$@

clean:
	rm -f $(BIN_DIR)/*.knc
	rm -f $(BIN_DIR)/*.knl
	rm -f $(BIN_DIR)/*.cpu
	rm -f $(BIN_DIR)/*.o
	rm -f $(BIN_DIR)/*.optrpt
