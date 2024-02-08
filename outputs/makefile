.PHONY: all clean

files = er-boarder-escalation.docx er-revisit-critical.docx
files += er-boarder-escalation.pdf er-revisit-critical.pdf

all: $(files)

%.docx: ../src/%.md
	pandoc -o $@ $<

%.pdf: ../src/%.md
	pandoc -o $@ $<

clean:
	rm -f $(files)
