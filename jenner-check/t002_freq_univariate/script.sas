/*********************************************************************************************
EDA: Univariate Analysis - Categorical Variables
**********************************************************************************************/

/* GENDER */
TITLE 'Univariate Analysis of the Categorical variable: GENDER';
PROC FREQ DATA=  LIB2023.TRAINING_DS1;
TABLE GENDER;
RUN;

/* MARITAL_STATUS */
TITLE 'Univariate Analysis of the Categorical variable: MARTIAL_STATUS';
PROC FREQ DATA=  LIB2023.TRAINING_DS1;
TABLE MARITAL_STATUS;
RUN;

/* LOAN_APPROVAL_STATUS */
TITLE 'Univariate Analysis of the Categorical Variable: LOAN_APPROVAL_STATUS';
PROC FREQ DATA = LIB2023.TRAINING_DS1;
TABLE LOAN_APPROVAL_STATUS;
RUN;
