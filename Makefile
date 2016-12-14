COBOLC=cobc

hist.png: plot.R genrand.out
	Rscript plot.R

genrand.out: genrand.exe
	./genrand.exe > genrand.out

genrand.exe: genrand.cbl Makefile
	$(COBOLC) -o genrand.exe -x -free genrand.cbl

clean:
	rm -f genrand.exe genrand.out hist.png 
