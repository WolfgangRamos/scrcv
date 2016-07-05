test: ./test/cv.tex scrcv.cls clean
	latexmk -cd -pdf ./test/cv.tex

clean:
	rm -f ./test/cv.pdf
