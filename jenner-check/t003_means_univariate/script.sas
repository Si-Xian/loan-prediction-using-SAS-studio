/*********************************************************************************************
EDA: Univariate Analysis - Numerical Variables
**********************************************************************************************/

/* LOAN_AMOUNT */
TITLE 'Univariate analysis of the continuous/numeric variable: LOAN_AMOUNT ';
PROC MEANS DATA =   LIB2023.TRAINING_DS1 N NMISS MIN MAX MEAN MEDIAN STD;
VAR loan_amount;
RUN;

/* LOAN_DURATION */
TITLE 'Univariate analysis of the continuous/numeric variable: LOAN_DURATION ';
PROC MEANS DATA =   LIB2023.TRAINING_DS1 N NMISS MIN MAX MEAN MEDIAN STD;
VAR LOAN_DURATION;
RUN;

/* CANDIDATE_INCOME  */
TITLE 'Univariate analysis of the continuous/numeric variable: CANDIDATE_INCOME  ';
PROC MEANS DATA =   LIB2023.TRAINING_DS1 N NMISS MIN MAX MEAN MEDIAN STD;
VAR CANDIDATE_INCOME ;
RUN;

/* GUARANTEE_INCOME  */
TITLE 'Univariate analysis of the continuous/numeric variable: GUARANTEE_INCOME  ';
PROC MEANS DATA =   LIB2023.TRAINING_DS1 N NMISS MIN MAX MEAN MEDIAN STD;
VAR GUARANTEE_INCOME ;
RUN;
