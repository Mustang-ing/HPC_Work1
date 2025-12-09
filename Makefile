SOURCEDIR=src/
OUTDIR=release/
C=icx
INCLUDES=
CFLAGS= -std=c99 -qopenmp -O2 -axALDERLAKE -xHost -g -qopt-report=max -qopt-report-phase=vec -ipo $(INCLUDES)

#.PHONY: default #.PHONY make sure that any file name like a Makefile command won't interfere with this command. 
default: $(SOURCEDIR)omp_homework.c $(OUTDIR)
	$(C) $(CFLAGS) $(SOURCEDIR)omp_homework.c -o $(OUTDIR)omp_homework_vectorised -lm

$(OUTDIR):
	mkdir $(OUTDIR)

.PHONY: clean
clean:
	rm -r $(OUTDIR)
