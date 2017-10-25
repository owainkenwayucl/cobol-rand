COBOLC=cobc
FC=gfortran

all: hist.png histfort.png

hist.png: plot.R genrand.out
	Rscript plot.R genrand.out hist.png

histfort.png: plot.R genfort.out
	Rscript plot.R genfort.out histfort.png

genrand.out: genrand.exe
	./genrand.exe > genrand.out

genfort.out: fortrand.exe
	./fortrand.exe > genfort.out

genrand.exe: genrand.cbl Makefile
	$(COBOLC) -o genrand.exe -x -free genrand.cbl

fortrand.exe: fortrand.cbl Makefile cobsupport.o
	$(COBOLC) -g -o fortrand.exe -x -free fortrand.cbl cobsupport.o -lgfortran

cobsupport.o: cobsupport.f Makefile
	$(FC) -c cobsupport.f

clean:
	rm -f genrand.exe genrand.out hist.png histfort.png genfort.out fortrand.exe cobsupport.o
