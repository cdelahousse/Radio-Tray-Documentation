.PHONY: clean

build:
	cat introduction.markdown background.markdown draft.markdown methodology.markdown > output.markdown

clean:
	rm output.markdown
