OPT = -O3 -fno-alias
ifeq ($(windir),)
CC              =       icc
#CFLAGShost      =      -openmp $(OPT) -std=c99 -vec-report=6 -S -fsource-asm
CFLAGShost      =      -openmp $(OPT) -std=c99 -opt-report=3
MIC_OPT         =      -mmic
#HOST            =      -xHost
OUT             =      "-o"
else
CC              =       icl
#CFLAGShost      =      -openmp $(OPT) /Qstd=c99 /Qvec-report6 -S -fsource-asm
CFLAGShost      =      -openmp $(OPT) /Qstd=c99 /Qvec-report3
MIC_OPT         =      /Qmic
#HOST            =      /QxHost
OUT             =      /Fe
endif
#CFLAGSmic       =      -openmp $(OPT) -std=c99 -vec-report=6 -S -fsource-asm
CFLAGSmic       =      -openmp $(OPT) -std=c99 -vec-report=3
BIN_DIR         = ../bin/


#BASEFLAGS=-opt-prefetch=0 -no-vec
BASEFLAGS=-opt-prefetch=0
OMPFLAGS=-openmp -opt-prefetch=0
AVXFLAGS=-xCORE-AVX2 -fma
#AVXFLAGS=-xAVX


all: base.load.cpu base.gather.cpu

base.load.cpu: base_load.cpu.c
	$(CC) $(CFLAGShost) $(BASEFLAGS) $(AVXFLAGS) $^ -o $(BIN_DIR)$@

base.gather.cpu: base_gather.cpu.c
	$(CC) $(CFLAGShost) $(BASEFLAGS) $(AVXFLAGS) $^ -o $(BIN_DIR)$@


clean:
	rm -f ./*.knc
	rm -f ./*.cpu
	rm -f ./*.o
	rm -f ./*.optrpt
