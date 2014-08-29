ASSETS := assets/
OUTPUT := output/
PAGE := $(OUTPUT)index.html

.PHONY: clean build publish

build:
	cat usage.markdown technical.markdown > $(OUTPUT)output.markdown

html: clean build
	cat $(ASSETS)header.html > $(PAGE)
	echo "<span class=\"last-updated\">\nLast Updated:" `date +%F` "</span>" >> $(PAGE)
	markdown $(OUTPUT)output.markdown >> $(PAGE)
	cat $(ASSETS)footer.html >> $(PAGE)
	mkdir $(OUTPUT)img
	cp img/* $(OUTPUT)img/
	cp assets/markdown.css $(OUTPUT)

clean:
	rm -rf $(OUTPUT)*

