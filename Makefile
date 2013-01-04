
OUTPUT := output/

.PHONY: clean build publish

build:
	cat usage.markdown technical.markdown > $(OUTPUT)output.markdown

html: clean build
	echo '<html><head><link rel="stylesheet" href="markdown.css"></head><body>' > $(OUTPUT)output.html
	markdown $(OUTPUT)output.markdown >> $(OUTPUT)output.html
	echo '</body></html>' >> $(OUTPUT)output.html
	mkdir $(OUTPUT)img
	cp img/* $(OUTPUT)img/

clean:
	rm -rf $(OUTPUT)output.markdown $(OUTPUT)output.html $(OUTPUT)img*
