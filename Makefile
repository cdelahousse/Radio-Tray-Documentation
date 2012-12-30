.PHONY: clean build publish

build:
	cat introduction.markdown documentation.markdown > output.markdown

html: build
	markdown output.markdown > output.html

clean:
	rm -f output.markdown output.html
