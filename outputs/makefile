.PHONY: all clean

files = er-boarder-escalation.docx er-revisit-critical.docx
files += er-boarder-escalation.pdf er-revisit-critical.pdf
files += discovery-manual.docx discovery-manual.pdf discovery-manual.md
files += lung-icd10.md lung-icd10.docx lung-icd10.pdf

discovery_src = ../src/discovery.md lung-icd10.md ../src/colon-icd10.md

lung_src = ../src/lung-red-flag-criteria.md ../src/pancreatic_cancer.md
lung_src += ../src/biliary_cancer.md
lung_src += ../src/brain_cancer.md
lung_src += ../src/esophageal_cancer.md
lung_src += ../src/gastric_cancer.md
lung_src += ../src/leukemia.md
lung_src += ../src/liver_cancer.md
lung_src += ../src/myeloma.md
lung_src += ../src/ovarian_cancer.md
lung_src += ../src/peritoneal_cancer.md
lung_src += ../src/tracheal_cancer.md
lung_src += ../src/uterine_cancer.md




# main

all: $(files)

%.docx: ../src/%.md
	pandoc -o $@ $<

%.pdf: ../src/%.md
	pandoc -o $@ $<




## specific rules

lung-icd10.pdf: lung-icd10.md
	pandoc -o $@ $<

lung-icd10.docx: lung-icd10.md
	pandoc -o $@ $<

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
