/*********************************************************************************************
Bivariate Analysis: Categorical vs Categorical (two-way PROC FREQ with FREQPLOT)
**********************************************************************************************/

TITLE1 'Figure number - Bivatiate analysis of the variables: ';
TITLE2 'Categorical variable[GENDER] vs Categorical variable[LOAN_APPROVAL_STATUS]';
FOOTNOTE '-------END-----';
PROC FREQ DATA =    LIB2023.TRAINING_DS1;
TABLE gender * loan_approval_status/
PLOTS = FREQPLOT( TWOWAY = STACKED SCALE = GROUPPCT );
RUN;

TITLE1 'Figure number - Bivatiate analysis of the variables: ';
TITLE2 'Categorical variable[GENDER] vs Categorical variable[MARITAL_STATUS]';
FOOTNOTE '-------END-----';
PROC FREQ DATA =    LIB2023.TRAINING_DS1;
TABLE gender * marital_status/
PLOTS = FREQPLOT( TWOWAY = STACKED SCALE = GROUPPCT );
RUN;
