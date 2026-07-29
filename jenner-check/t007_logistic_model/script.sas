/*********************************************************
Building a Logistic Regression Model
Fit a logistic model on the training data (OUTMODEL), then
score the testing data with the saved model (INMODEL / SCORE).
**********************************************************/
PROC LOGistic DATA=  LIB2023.TRAINING_DS1 OUTMODEL= LIB2023.TRAINING_DS1_LR_MODEL;

/* categorical predictors */
CLASS
	Gender
	Marital_Status
	FAMILY_MEMBERS
	QUALIFICATION
	EMPLOYMENT
	LOAN_HISTORY
	LOAN_LOCATION;

MODEL LOAN_APPROVAL_STATUS =	/*DV*/
	GENDER
    MARITAL_STATUS
    FAMILY_MEMBERS
    QUALIFICATION
    EMPLOYMENT
    CANDIDATE_INCOME
    GUARANTEE_INCOME
    LOAN_AMOUNT
    LOAN_DURATION
    LOAN_HISTORY
    LOAN_LOCATION
    /* Above all are independent variables */
    ;
OUTPUT OUT = LIB2023.TRAINING_OUT_DS P = PPRED_PROB;
RUN;

/* Predict the loan approval status using the model created */
PROC LOGISTIC INMODEL =  LIB2023.TRAINING_DS1_LR_MODEL;
SCORE DATA= LIB2023.TESTING_DS
OUT= LIB2023.TESTING_LAS_PREDICTED_DS;
QUIT;

/* Show a few scored rows with the predicted probability */
TITLE 'Scored testing observations (first rows)';
PROC PRINT DATA = LIB2023.TESTING_LAS_PREDICTED_DS (OBS=10);
VAR sme_loan_id_no gender loan_location;
RUN;
