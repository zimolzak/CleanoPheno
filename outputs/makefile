.PHONY: all clean

m = ../src/modules/

files = er-boarder-escalation.docx er-revisit-critical.docx
files += er-boarder-escalation.pdf er-revisit-critical.pdf

files += lung-icd10.md lung-icd10.docx lung-icd10.pdf
files += colon-icd10.md colon-icd10.docx colon-icd10.pdf
files += psa-e-trigger.pdf psa-e-trigger.md

lung_src = ../src/lung-red-flag-criteria.md
lung_src += $(m)pancreatic_cancer.md
lung_src += $(m)biliary_cancer.md
lung_src += $(m)brain_cancer.md
lung_src += $(m)esophageal_cancer.md
lung_src += $(m)gastric_cancer.md
lung_src += $(m)leukemia.md
lung_src += $(m)liver_cancer.md
lung_src += $(m)myeloma.md
lung_src += $(m)ovarian_cancer.md
lung_src += $(m)peritoneal_cancer.md
lung_src += $(m)tracheal_cancer.md
lung_src += $(m)uterine_cancer.md
lung_src += $(m)lung_pleura_cancer.md
lung_src += $(m)hospice.md

colon_src = ../src/colon-red-flag-criteria.md
colon_src += $(m)pancreatic_cancer.md
colon_src += $(m)leukemia.md
colon_src += $(m)liver_cancer.md
colon_src += $(m)esophageal_cancer.md
colon_src += $(m)gastric_cancer.md
colon_src += $(m)brain_cancer.md
colon_src += $(m)uterine_cancer.md
colon_src += $(m)ovarian_cancer.md
colon_src += $(m)peritoneal_cancer.md
colon_src += $(m)myeloma.md
colon_src += $(m)tracheal_cancer.md
colon_src += $(m)biliary_cancer.md
colon_src += $(m)lung_pleura_cancer.md
colon_src += $(m)hospice.md

psa_src = ../src/psa-test-etrigger-criteria.md
psa_src += $(m)hospice.md
psa_src += $(m)leukemia.md
psa_src += $(m)liver_cancer.md
psa_src += $(m)biliary_cancer.md
psa_src += $(m)esophageal_cancer.md
psa_src += $(m)gastric_cancer.md
psa_src += $(m)brain_cancer.md
psa_src += $(m)ovarian_cancer.md
psa_src += $(m)pancreatic_cancer.md
psa_src += $(m)lung_pleura_cancer.md




all: $(files)

# When .md file for pandoc is in src/ (no "cat" involved)

er-%.docx: ../src/er-%.md
	pandoc -o $@ $<

er-%.pdf: ../src/er-%.md
	pandoc -o $@ $<

# "cat" commands to make intermediate .md files

lung-icd10.md: $(lung_src)
	cat $(lung_src) > $@

colon-icd10.md: $(colon_src)
	cat $(colon_src) > $@

psa-e-trigger.md: $(psa_src)
	cat $(psa_src) > $@

# When intermediate .md file is in outputs/ (the current dir)

%.pdf: %.md
	pandoc -o $@ $<

%.docx: %.md
	pandoc -o $@ $<

# clean

clean:
	rm -f $(files)
