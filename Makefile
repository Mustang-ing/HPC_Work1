SOURCEDIR=src/
OUTDIR=release/
C=icx
INCLUDES=
CFLAGS= -std=c99 -qopenmp -O2 -axALDERLAKE,AVX2 -xHost -g -qopt-report=max -qopt-report-phase=vec -ipo $(INCLUDES)

.PHONY: default #.PHONY make sure that any file name like a Makefile command won't interfere with this command. 
default: $(OUTDIR)omp_homework_vectorised
	$(C) $(OUTDIR)omp_homework_vectorised -o $(OUTDIR)

