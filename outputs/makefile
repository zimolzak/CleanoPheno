.PHONY: all clean

files = er-boarder-escalation.docx er-revisit-critical.docx
files += er-boarder-escalation.pdf er-revisit-critical.pdf

files += lung-icd10.md lung-icd10.docx lung-icd10.pdf
files += colon-icd10.md colon-icd10.docx colon-icd10.pdf

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
lung_src += ../src/lung_pleura_cancer.md

colon_src = ../src/colon-red-flag-criteria.md
colon_src += ../src/pancreatic_cancer.md
colon_src += ../src/leukemia.md
colon_src += ../src/liver_cancer.md
colon_src += ../src/esophageal_cancer.md
colon_src += ../src/gastric_cancer.md
colon_src += ../src/brain_cancer.md
colon_src += ../src/uterine_cancer.md
colon_src += ../src/ovarian_cancer.md
colon_src += ../src/peritoneal_cancer.md
colon_src += ../src/myeloma.md
colon_src += ../src/tracheal_cancer.md
colon_src += ../src/biliary_cancer.md
colon_src += ../src/lung_pleura_cancer.md




# main

all: $(files)

er-%.docx: ../src/er-%.md
	pandoc -o $@ $<

er-%.pdf: ../src/er-%.md
	pandoc -o $@ $<

# When .md file is in outputs/

%.pdf: %.md
	pandoc -o $@ $<

%.docx: %.md
	pandoc -o $@ $<

lung-icd10.md: $(lung_src)
	cat $(lung_src) > $@

colon-icd10.md: $(colon_src)
	cat $(colon_src) > $@




## clean

clean:
	rm -f $(files)
