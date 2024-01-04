.PHONY: all clean

files = er-boarder-escalation.docx er-revisit-critical.docx

all: $(files)

%.docx: %.md
	pandoc -o $@ $<

clean:
	rm -f $(files)
