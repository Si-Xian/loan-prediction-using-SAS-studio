/*********************************************************************************************
Bivariate Analysis (Categorical vs Categorical) using a SAS MACRO
The %MACRO_BIVA_CV macro parameterises the two-way PROC FREQ so the same
analysis can be run across several variable pairs.
**********************************************************************************************/

%MACRO MACRO_BIVA_CV( DATASET_NAME, VARIABLE_1, VARIABLE_2, TITLE_1, TITLE_2);
PROC FREQ data= &DATASET_NAME;
TABLE &VARIABLE_1 * &VARIABLE_2 /
PLOTS= FREQPLOT( TWOWAY= STACKED SCALE = GROUPPCT );
TITLE &TITLE_1;
TITLE2 &TITLE_2;
RUN;
%MEND MACRO_BIVA_CV;

/* GENDER Vs. MARITAL_STATUS */
%MACRO_BIVA_CV(LIB2023.TRAINING_DS1, GENDER, MARITAL_STATUS,'Bivariate analysis', 'on GENDER(Categorical) Vs. MARITAL_STATUS(Categorical)');

/* GENDER VS. LOAN_APPROVAL_STATUS */
%MACRO_BIVA_CV(LIB2023.TRAINING_DS1, GENDER, LOAN_APPROVAL_STATUS,'Bivariate analysis', 'on GENDER(Categorical) Vs. LOAN_APPROVAL_STATUS(Categorical)');

/* EMPLOYMENT Vs. MARITAL_STATUS */
%MACRO_BIVA_CV(LIB2023.TRAINING_DS1, EMPLOYMENT, MARITAL_STATUS,'Bivariate analysis', 'on EMPLOYMENT(Categorical) Vs. MARITAL_STATUS(Categorical)');
