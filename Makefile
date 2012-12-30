.PHONY: clean build publish

build:
	cat introduction.markdown background.markdown documentation.markdown methodology.markdown > output.markdown

publish: clean build
	pandoc output.markdown -o output.latex -f markdown -t latex
	sed 's/\[htbp\]//' < output.latex  > output2.latex
	pandoc -H margins.sty output2.latex  -o try.pdf

clean:
	rm -f output.markdown try.pdf output.latex output2.latex
