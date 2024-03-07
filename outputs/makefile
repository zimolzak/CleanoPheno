.PHONY: all clean

files = er-boarder-escalation.docx er-revisit-critical.docx
files += er-boarder-escalation.pdf er-revisit-critical.pdf
files += discovery-manual.docx discovery-manual.pdf discovery-manual.md
files += lung-icd10.md

discovery_src = ../src/discovery.md lung-icd10.md ../src/colon-icd10.md
lung_src = ../src/lung-red-flag-criteria.md ../src/pancreatic_cancer.md

all: $(files)

%.docx: ../src/%.md
	pandoc -o $@ $<

%.pdf: ../src/%.md
	pandoc -o $@ $<

## specific rules

lung-icd10.md: $(lung_src)
	cat $(lung_src) > $@

discovery-manual.md: $(discovery_src)
	cat $(discovery_src) > $@

discovery-manual.docx: discovery-manual.md
	pandoc -o $@ $<

discovery-manual.pdf: discovery-manual.md
	pandoc -o $@ $<

## clean

clean:
	rm -f $(files)
