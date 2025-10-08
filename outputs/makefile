.PHONY: all clean

m = ../src/modules/

files =  er-boarder-escalation.md er-boarder-escalation.docx er-boarder-escalation.pdf
files += er-revisit-critical.docx er-revisit-critical.pdf
files +=     lung-cancer-missed-tests.md     lung-cancer-missed-tests.docx     lung-cancer-missed-tests.pdf
files +=    colon-cancer-missed-tests.md    colon-cancer-missed-tests.docx    colon-cancer-missed-tests.pdf
files += prostate-cancer-missed-tests.md prostate-cancer-missed-tests.docx prostate-cancer-missed-tests.pdf
files += hepatorenal.docx hepatorenal.pdf
files += bladder-cancer-missed-tests.docx bladder-cancer-missed-tests.pdf


boarder_src = ../src/er-boarder-escalation.md
boarder_src += $(m)hospice.md

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
psa_src += $(m)head_neck_cancer.md

bladder_src = ../src/bladder.md
bladder_src += $(m)head_neck_cancer.md


all: $(files)

# When .md file for pandoc is in src/ (no "cat" involved)

er-revisit-critical.docx: ../src/er-revisit-critical.md
	pandoc -o $@ $<

er-revisit-critical.pdf: ../src/er-revisit-critical.md
	pandoc -o $@ $<

hepatorenal.docx: ../src/hepatorenal.md
	pandoc -o $@ $<

hepatorenal.pdf: ../src/hepatorenal.md
	pandoc -o $@ $<

# "cat" commands to make intermediate .md files

lung-cancer-missed-tests.md: $(lung_src)
	cat $(lung_src) > $@

colon-cancer-missed-tests.md: $(colon_src)
	cat $(colon_src) > $@

prostate-cancer-missed-tests.md: $(psa_src)
	cat $(psa_src) > $@

bladder-cancer-missed-tests.md: $(bladder_src)
	cat $(bladder_src) > $@

er-boarder-escalation.md: $(boarder_src)
	cat $(boarder_src) > $@

# When intermediate .md file is in outputs/ (the current dir)

%.pdf: %.md
	pandoc -o $@ $<

%.docx: %.md
	pandoc -o $@ $<

# clean

clean:
	rm -f $(files)
