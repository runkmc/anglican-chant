default: psalm.pdf

psalm.pdf: psalm.ltx psalm.sty chant.png
	pdflatex psalm.ltx
	rm psalm.aux psalm.log

chant.png: chant.pdf
	convert -density 600 chant.pdf -trim chant.png

chant.pdf: chant.ly
	lilypond -dno-point-and-click chant.ly

.PHONY: clean
clean:
	rm -f psalm.pdf psalm.aux psalm.log chant.png chant.pdf
