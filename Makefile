.PHONY: clean

build:
	cat introduction.markdown background.markdown methodology.markdown draft.markdown > output.markdown


clean:
	rm output.markdown
