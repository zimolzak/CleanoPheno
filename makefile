.PHONY: all clean

files = er-boarder-escalation.docx er-revisit-critical.docx
files += er-boarder-escalation.pdf er-revisit-critical.pdf

all: $(files)

%.docx: %.md
	pandoc -o $@ $<

%.pdf: %.md
	pandoc -o $@ $<

clean:
	rm -f $(files)
