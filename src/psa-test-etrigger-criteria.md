% Missed Test Suggestive of Prostate Cancer e-Trigger
% Alexis Offner MPH, Andrew Zimolzak MD MMSc
% April, 2024


# Inclusion criteria

1. Identify all patient records with positive prostate specific
antigen (PSA) tests, defined as all of the following:

    a. Had PSA test[^psa_test] collected from January 1, 2009 to December 31, 2009. (The date of lab collection will be called the *index date.*)

    b. **and** PSA test value of 4.1 to 15 ng/mL

    c. **and** patient aged 40--70 years on index date

    d. **and** no PSA greater than 4.1 ng/mL in the two years prior to
    index date

    e. **and** patient alive 90 days after the index date.




# Exclusion criteria

Exclude patients with any of the following:

2.  Previous prostate cancer (any prior diagnosis)[^prostate_cancer]

3. Terminal illnesses or recent major diagnoses within **one year
    before or 90 days after** the index date, defined as any of the
    following:

    - acute leukemia[^leukemia]
    - hepatocellular cancer[^liver_cancer]
    - biliary cancer[^biliary_cancer]
    - esophageal cancer[^esophageal_cancer]
    - gastric cancer[^gastric_cancer]
    - head and neck cancer[^head_neck_cancer]
    - brain cancer[^brain_cancer]
    - kidney cancer[^kidney_cancer]
    - ovarian cancer[^ovarian_cancer]
    - pancreatic cancer[^pancreatic_cancer]
    - lung cancer[^lung_pleura_cancer]

4. **Ever in the past or within 90 days after** the index date had an
    encounter for hospice/palliative care[^hospice]

5. Prostatitis **within 30 days prior** to index date[^prostatitis]

6. Prostate biopsy performed **in the 2 years prior** to index
    date[^prostate_biopsy]




# Expected follow-up criteria

Exclude patients with any of the following **within 90 days after**
the index date:

7. Urology consult[^urology_visit] requested or completed

8. Diagnosed with prostatitis[^prostatitis]

9. Prostate biopsy[^prostate_biopsy] performed

10. Repeat PSA[^psa_test] lab test result




----




[^psa_test]: Labs matching the following:
```sql
SELECT nvlc.LabProcedure, lct.*
FROM [CDWWork].[Dim].[LabChemTest] as lct
left join dim.NationalVALabCode as nvlc
on lct.NationalVALabCodeSID = nvlc.NationalVALabCodeSID
where
  (LabProcedure like 'prostate specific%' or
  LabProcedure like 'PSA%') and
  LabProcedure not like '%free%'
```

[^prostate_cancer]: ICD-10 prostate: C61

[^prostatitis]: ICD-10 acute prostatitis: N41.0

[^prostate_biopsy]: CPT prostate biopsy: 55700

[^urology_visit]: Urology clinic stop codes: 65, 414, 430, 451, 473

