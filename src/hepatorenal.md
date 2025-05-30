% Hepatorenal Syndrome e-Trigger
% Kavish Patidar, Andrew Zimolzak, Hardeep Singh.
% May, 2025

**Affiliation**: Michael E. DeBakey Veterans Affairs Medical Center, and
Baylor College of Medicine. Houston, TX, USA.

**For questions**: <zimolzak@bcm.edu>


# Inclusion criteria

1. Identify all patients with cirrhosis[^cirrhosis] or any complication directly associated with cirrhosis (ascites[^ascites], HRS[^hrs], varices[^varices]) any time within the past **5 years** prior to e-trigger run.

2. For those patients, retrieve all serum creatinine tests within the past **1 year** prior to trigger run, where the
requesting location was an outpatient clinic (primary care clinic,
satellite clinic, or specialty clinic). Exclude if requesting location is telehealth or other rare requesting locations.[^clinic]

# Exclusion criteria

1. Patients with end-stage renal disease or hemodialysis[^esrd]

# Trigger flag criteria

1. Of the included creatinine tests, flag any time the test value was a $\ge$ 1.5-fold
increase in serum creatinine (or $\ge$ 50% increase in serum
creatinine) from baseline. (Baseline defined as the lowest creatinine
within the prior 1 year. If this is not possible, use the most recent
serum creatinine within a previous 1 year as baseline.)

----

[^esrd]: ICD-10: Z99.2, Z49.9, Z49.02, T82.42, N18.6, I12.0

[^clinic]: For VA, that is the following clinic types: COM CARE, PHONE
APPOINTMENT, TELEPHONE APPOINTMENT, MAMMOGRAPHY, OPERATING ROOM, OTHER
LCOATION, NON-CLINIC STOP, VIDEO CONNECT, SECMSG, INJECTION CLINICS,
IMMUNIZATION CLINICS, EMPLOYEE HLTH, EYE/VISION, SWS, ECONSULT

[^cirrhosis]: Cirrhosis ICD-10: K70.30, K70.31, K74.60, K74.69, K74.3, K74.4,
K74.5,

[^varices]: Varices ICD-10: I85.01, I85.00, I85.10, I85.11, I86.4

[^ascites]: Ascites ICD-10: K70.11, K70.31, R18.8, K65.2

[^he]: Hepatic encephalopathy ICD-10: K70.41, K72.11, K72.91, B15.0, B16.0, B16.2, B17.11, B19.0, B19.11, B19.21

[^hcc]: HCC ICD-10: C22.0, C22.8, C22.9

