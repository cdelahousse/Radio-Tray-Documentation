.PHONY: clean build publish

build:
	cat introduction.markdown documentation.markdown > output/output.markdown

html: clean build
	echo '<html><head><link rel="stylesheet" href="markdown.css"></head><body>' > output/output.html
	markdown output/output.markdown >> output/output.html
	echo '</body></html>' >> output/output.html
	mkdir output/img
	cp img/* output/img/

clean:
	rm -rf output/output.markdown output/output.html output/img*
