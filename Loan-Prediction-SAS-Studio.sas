/********************************************************

Developer name: Mr.DHASON PADMAKUMAR
Job position: DATA Scientist, APU SDN BHD
Program name: mydapproject.sas
Description: Loan application status prediction - 1 - 2 lines 
Date first written: Mon,22-Jan-2024
Date last updated: Mon,22-Jan-2024
Folder name: DAPTP075336  
Library name:  LIB2023
 
********************************************************/

/********************************************************
			
			NOTE:

The dataset is named 

		TRAINING_DS1 

from TRAINING_DS due to technical issue.

********************************************************/


/********************************************************
To display the DATA dictionary of  "TRAINING_DS1" dataset
********************************************************/

PROC contents DATA= LIB2023.TRAINING_DS1;

RUN;

/********************************************************
To display the structure of  "TRAINING_DS1" Dataset
********************************************************/
TITLE 'Display the Structure of "TRAINING_DS1" dataset';

PROC SQL;

DESCRIBE TABLE  LIB2023.TRAINING_DS1;

QUIT;

/*********************************************************************************************
EDA: Univariate Analysis
**********************************************************************************************/

/*********************************************************************************************
Categorical Variable
**********************************************************************************************/

/* GENDER */
TITLE 'Univariate Analysis of the Categorical variable: GENDER';

PROC FREQ DATA=  LIB2023.TRAINING_DS1;
TABLE GENDER;
RUN;
ODS GRAPHICS / RESET WIDTH = 3.0 IN HEIGHT = 4.0 IN IMAGEMAP;
PROC SGPLOT DATA =  LIB2023.TRAINING_DS1;
VBAR GENDER;
RUN;

/* MARITAL_STATUS */
TITLE 'Univariate Analysis of the Categorical variable: MARTIAL_STATUS';
PROC FREQ DATA=  LIB2023.TRAINING_DS1;
TABLE MARITAL_STATUS;
RUN;

ODS GRAPHICS / RESET WIDTH = 3.0 IN HEIGHT = 4.0 IN IMAGEMAP;
PROC SGPLOT DATA =  LIB2023.TRAINING_DS1;
VBAR MARITAL_STATUS;
RUN;

/* FAMILY_MEMBERS */
TITLE 'Univariate Analysis of the Categorical Variable: FAMILY_MEMBERS';
/* SAS code to do Univariate Analysis of the "FAMILY_MEMBERS" variable */
PROC FREQ DATA = LIB2023.TRAINING_DS1;
TABLE FAMILY_MEMBERS;
RUN;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = LIB2023.TRAINING_DS1;
VBAR FAMILY_MEMBERS;
RUN;

/* LOAN_HISTORY */
TITLE 'Univariate Analysis of the Categorical Variable: LOAN_HISTORY';
/* SAS code to do Univariate Analysis of the "LOAN_HISTORY" variable */
PROC FREQ DATA = LIB2023.TRAINING_DS1;
TABLE LOAN_HISTORY;
RUN;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = LIB2023.TRAINING_DS1;
VBAR LOAN_HISTORY;
RUN;

/* QUALIFICATION */
TITLE 'Univariate Analysis of the "QUALIFICATION" Variable - Categorical Variable';
/* SAS code to do Univariate Analysis of the "QUALIFICATION" variable */
PROC FREQ DATA = LIB2023.TRAINING_DS1;
TABLE QUALIFICATION;
RUN;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = LIB2023.TRAINING_DS1;
VBAR QUALIFICATION;
RUN;

/* EMPLOYMENT */
TITLE 'Univariate Analysis of the Categorical Variable: EMPLOYMENT';
/* SAS code to do Univariate Analysis of the "EMPLOYMENT" variable */
PROC FREQ DATA = LIB2023.TRAINING_DS1;
TABLE EMPLOYMENT;
RUN;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = LIB2023.TRAINING_DS1;
VBAR EMPLOYMENT;
RUN;

/* LOAN_LOCATION */
TITLE 'Univariate Analysis of the Categorical Variable: LOAN_LOCATION';
/* SAS code to do Univariate Analysis of the "LOAN_LOCATION" variable */
PROC FREQ DATA = LIB2023.TRAINING_DS1;
TABLE LOAN_LOCATION;
RUN;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = LIB2023.TRAINING_DS1;
VBAR LOAN_LOCATION;
RUN;

/* LOAN_APPROVAL_STATUS */
TITLE 'Univariate Analysis of the Categorical Variable: LOAN_APPROVAL_STATUS';
/* SAS code to do Univariate Analysis of the "LOAN_APPROVAL_STATUS" variable */
PROC FREQ DATA = LIB2023.TRAINING_DS1;
TABLE LOAN_APPROVAL_STATUS;
RUN;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = LIB2023.TRAINING_DS1;
VBAR LOAN_APPROVAL_STATUS;
RUN;

/*********************************************************************************************
Numerical Variable
**********************************************************************************************/

/* LOAN_AMOUNT */
TITLE 'Univariate analysis of the continuous/numeric variable: LOAN_AMOUNT '; 
PROC MEANS DATA =   LIB2023.TRAINING_DS1 N NMISS MIN MAX MEAN MEDIAN STD;
VAR loan_amount; 
RUN; 
ODS GRAPHICS / RESET WIDTH = 4.0 IN HEIGHT = 3.0 IN IMAGEMAP; 
PROC SGPLOT DATA =   LIB2023.TRAINING_DS1; 
HISTOGRAM loan_amount;
RUN;

/* LOAN_DURATION */
TITLE 'Univariate analysis of the continuous/numeric variable: LOAN_DURATION '; 
PROC MEANS DATA =   LIB2023.TRAINING_DS1 N NMISS MIN MAX MEAN MEDIAN STD;
VAR LOAN_DURATION; 
RUN; 
ODS GRAPHICS / RESET WIDTH = 4.0 IN HEIGHT = 3.0 IN IMAGEMAP; 
PROC SGPLOT DATA =   LIB2023.TRAINING_DS1; 
HISTOGRAM LOAN_DURATION;
RUN;

/* CANDIDATE_INCOME  */
TITLE 'Univariate analysis of the continuous/numeric variable: CANDIDATE_INCOME  '; 
PROC MEANS DATA =   LIB2023.TRAINING_DS1 N NMISS MIN MAX MEAN MEDIAN STD;
VAR CANDIDATE_INCOME ; 
RUN; 
ODS GRAPHICS / RESET WIDTH = 4.0 IN HEIGHT = 3.0 IN IMAGEMAP; 
PROC SGPLOT DATA =   LIB2023.TRAINING_DS1; 
HISTOGRAM CANDIDATE_INCOME ;
RUN;

/* GUARANTEE_INCOME  */
TITLE 'Univariate analysis of the continuous/numeric variable: GUARANTEE_INCOME  '; 
PROC MEANS DATA =   LIB2023.TRAINING_DS1 N NMISS MIN MAX MEAN MEDIAN STD;
VAR GUARANTEE_INCOME ; 
RUN; 
ODS GRAPHICS / RESET WIDTH = 4.0 IN HEIGHT = 3.0 IN IMAGEMAP; 
PROC SGPLOT DATA =   LIB2023.TRAINING_DS1; 
HISTOGRAM GUARANTEE_INCOME ;
RUN;


/*********************************************************************************************
Bivariate Analysis on the dataset TRAINING_DS1 using Macro
**********************************************************************************************/
/*********************************************************************************************
Categorical vs Categorical 
**********************************************************************************************/
/* Example of not using Macro */
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

/* Macro */
%MACRO MACRO_BIVA_CV( DATASET_NAME, VARIABLE_1, VARIABLE_2, TITLE_1, TITLE_2);
PROC FREQ data= &DATASET_NAME;
TABLE &VARIABLE_1 * &VARIABLE_2 /
PLOTS= FREQPLOT( TWOWAY= STACKED SCALE = GROUPPCT );
TITLE &TITLE_1;
TITLE2 &TITLE_2;
RUN;
%MEND MACRO_BIVA_CV;

/*********************************************************************************************
To run bivariate analysis on Categorical vs Categorical (3 CASES)
**********************************************************************************************/

/* GENDER Vs. MARITAL_STATUS */
%MACRO_BIVA_CV(LIB2023.TRAINING_DS1, GENDER, MARITAL_STATUS,'Bivariate analysis', 'on GENDER(Categorical) Vs. MARITAL_STATUS(Categorical)');

/* GENDER VS. LOAN_APPROVAL_STATUS */
%MACRO_BIVA_CV(LIB2023.TRAINING_DS1, GENDER, LOAN_APPROVAL_STATUS,'Bivariate analysis', 'on GENDER(Categorical) Vs. LOAN_APPROVAL_STATUS(Categorical)');

/*EMPLOYMENT Vs. MARITAL-STATUS */
%MACRO_BIVA_CV(LIB2023.TRAINING_DS1, EMPLOYMENT, MARITAL_STATUS,'Bivariate analysis', 'on EMPLOYMENT(Categorical) Vs. MARITAL_STATUS(Categorical)');

/*********************************************************************************************
IMPUTATION (Training DS)
**********************************************************************************************/

/* IMPUTE Gender */

/* Step 1: Make a copy of DS */
Proc SQL;
Create table LIB2023.TRAINING_GENDER_DS_BK AS
SELECT * FROM LIB2023.TRAINING_DS1;
QUIT;

/* Step 2: Find the statistics to get the MOD in Gender */
Proc SQL;
CREATE TABLE LIB2023.TRAINING_DIS_GENDER as
SELECT GENDER, COUNT(*) AS FREQ  FROM LIB2023.TRAINING_DS1
WHERE GENDER IS NOT NULL
GROUP BY GENDER;
QUIT;

/* Step 3: Find the MOD */
PROC SQL;
SELECT GENDER  FROM LIB2023.TRAINING_DIS_GENDER G
WHERE G.FREQ=(SELECT MAX(FREQ) FROM LIB2023.TRAINING_DIS_GENDER);
QUIT;

/* Step 4: Impute using the MOD */
PROC SQL;
UPDATE LIB2023.TRAINING_DS1
SET GENDER =( SELECT GENDER  FROM LIB2023.TRAINING_DIS_GENDER G
			WHERE G.FREQ=(SELECT MAX(FREQ) FROM LIB2023.TRAINING_DIS_GENDER)
			)
WHERE (GENDER EQ '') OR (GENDER IS NULL);
QUIT;

/*STEP 5: CHECK THE CHANGES*/
PROC SQL;
SELECT * FROM LIB2023.TRAINING_DS1
WHERE (GENDER IS NULL) OR (GENDER EQ "");
QUIT;

/*Impute MARITAL STATUS*/

/* Step 0: Create shorcut */
DATA Training; 
Set  LIB2023.TRAINING_DS1;
RUN;

/* Step 1: List the details of missing values*/
TITLE 'STEP1: List the details of user who dont have marital status';
PROC SQL;
Select * FROM LIB2023.TRAINING_DS1
Where (MARITAL_STATUS EQ '') OR (MARITAL_STATUS IS NULL);
QUIT;

TITLE 'Count the total of user who dont have "MARITAL_STATUS"';
PROC SQL;
Select Count(*) LABEL='Number of applicants'
FROM Training
Where (MARITAL_STATUS EQ '') OR (MARITAL_STATUS IS NULL);
Quit;

/* Step 3: Find the statistics and store the statistics in the dataset */
PROC Sql;
Create TABLE  LIB2023.TRAINING_MS_STAT_DS as
Select marital_status as marital_status, Count(*) as Count
From Training 
Where (marital_status Is Not Missing or marital_status ne '')
Group by marital_status;
Quit;

/* Step 4: Find the mod*/
PROC SQL;

Select Marital_Status as Marital_Status
From  LIB2023.TRAINING_MS_STAT_DS
WHERE Count eq ( Select Max(Count) Label = 'highest_count'
					From  LIB2023.TRAINING_MS_STAT_DS);
					
/* Step 5: Make a backup copy of dataset- LIB2023.TRAINING_DS1 */
PROC SQL;
Create TABLE  LIB2023.Training_BK
as Select *
From Training;
Quit;

/* Step 6: Impute the missing values OF Marital_status */
PROC SQL;
UPDATE Training
Set Marital_status=(
	Select Marital_Status as Marital_Status
	From  LIB2023.TRAINING_MS_STAT_DS
	WHERE Count eq ( Select Max(Count) Label = 'highest_count'
					 From  LIB2023.TRAINING_MS_STAT_DS))
WHERE ( Marital_status eq '');
QUIT;

/* RUN Step 1 again to check the result*/

/******************************
IMPUTE FAMILY_MEMBERS
*******************************/
/* Step 0: Create shorcut */
DATA Training; 
Set  LIB2023.TRAINING_DS1;
RUN;

/*Step 1. Count the missing values in FAMILY_MEMBERS */
PROC SQL;
Select Count(*) as No_of_family_missing from Training
where Family_Members is missing;

/*Step 2. Make a copy of the table to keep track of the number of observations for diff. groups*/
Proc sql;
Create TABLE  LIB2023.TRAINING_FM_STAT_DS AS
Select Family_members, Count(*) as Counts
From Training
Where Family_members is not missing
Group by Family_members;

/*Shortcut  */
DATA Family_Members_DS;  
Set  LIB2023.training_fm_stat_ds;

/*Step 3. Obtain the Mode  */
PROC SQL;
Select Family_members AS family_members
From Family_Members_DS 
Where Counts=(
	Select Max(Counts) as Highest_Count 
	From Family_Members_DS);
QUIT;

/*Step 4. Impute missing values with the mode  */
PROC SQL;
Update Training
Set Family_Members=(
	Select Family_members AS family_members
	From Family_Members_DS 
	Where Counts=(
		Select Max(Counts) as Highest_Count  /* Subquery to find highest count in family members*/
		From Family_Members_DS))
Where ( Family_Members eq '');
QUIT;  

/*Step 5. Check the imputation results */
** Using Step 1;
PROC SQL;
Select Count(*) as No_of_family_missing from Training
where Family_Members is missing;


/*Impute LOAN_HISTORY*/
/* Step 0: Create shorcut */
DATA Training; 
Set  LIB2023.TRAINING_DS1;
RUN;


/* Step 1: List the details of missing values*/
TITLE 'STEP1: List the details of user who dont have loan_history';
PROC SQL;
Select * FROM Training
Where (LOAN_HISTORY EQ .) OR (LOAN_HISTORY IS NULL);
QUIT;

TITLE 'Count the total of user who dont have "LOAN_HISTORY"';
PROC SQL;
Select Count(*) LABEL='Number of applicants'
FROM Training
Where (LOAN_HISTORY EQ .) OR (LOAN_HISTORY IS NULL);
Quit;

/* Step 3: Find the statistics and store the statistics in the dataset */
PROC Sql;
Create TABLE  LIB2023.TRAINING_MS_STAT_DS as
Select LOAN_HISTORY as LOAN_HISTORY, Count(*) as Count
From Training 
Where (LOAN_HISTORY Is Not Missing or LOAN_HISTORY ne .)
Group by LOAN_HISTORY;
Quit;

/* Step 4: Find the mod*/
PROC SQL;

Select LOAN_HISTORY as LOAN_HISTORY
From  LIB2023.TRAINING_MS_STAT_DS
WHERE Count eq ( Select Max(Count) Label = 'highest_count'
					From  LIB2023.TRAINING_MS_STAT_DS);
					
/* Step 5: Make a backup copy of dataset- LIB2023.TRAINING_DS1 */
PROC SQL;
Create TABLE  LIB2023.Training_BK
as Select *
From Training;
Quit;

/* Step 6: Impute the missing values OF LOAN_HISTORY */
PROC SQL;
UPDATE Training
Set LOAN_HISTORY=(
	Select LOAN_HISTORY as Loan_History
	From  LIB2023.TRAINING_MS_STAT_DS
	WHERE Count eq ( Select Max(Count) Label = 'highest_count'
					 From  LIB2023.TRAINING_MS_STAT_DS))
WHERE ( LOAN_HISTORY eq .);
QUIT;

/* Step 7: Run Step 1 again to check the result*/
PROC SQL;
Select COunt(*) FROM Training
Where (LOAN_HISTORY EQ .) OR (LOAN_HISTORY IS NULL);
QUIT;



/*Impute Employment*/

/* Step 0: Create shorcut */
DATA Training; 
Set  LIB2023.TRAINING_DS1;
RUN;

/* Step 1: List the details of missing values*/
TITLE 'STEP1: List the details of user who dont have Employment';
PROC SQL;
Select * FROM Training
Where (Employment EQ '') OR (Employment IS NULL);
QUIT;

TITLE 'Count the total of user who dont have "Employment"';
PROC SQL;
Select Count(*) LABEL='Number of applicants'
FROM Training
Where (Employment EQ '') OR (Employment IS NULL);
Quit;

/* Step 3: Find the statistics and store the statistics in the dataset */
PROC Sql;
Create TABLE  LIB2023.TRAINING_MS_STAT_DS as
Select Employment as Employment, Count(*) as Count
From Training 
Where (Employment Is Not Missing or Employment ne '')
Group by Employment;
Quit;

/* Step 4: Find the mod*/
PROC SQL;

Select Employment as Employment
From  LIB2023.TRAINING_MS_STAT_DS
WHERE Count eq ( Select Max(Count) Label = 'highest_count'
					From  LIB2023.TRAINING_MS_STAT_DS);
					
/* Step 5: Make a backup copy of dataset- LIB2023.TRAINING_DS1 */
PROC SQL;
Create TABLE  LIB2023.Training_BK
as Select *
From Training;
Quit;

/* Step 6: Impute the missing values OF LOAN_HISTORY */
PROC SQL;
UPDATE Training
Set Employment=(
	Select Employment as Employment
	From  LIB2023.TRAINING_MS_STAT_DS
	WHERE Count eq ( Select Max(Count) Label = 'highest_count'
					 From  LIB2023.TRAINING_MS_STAT_DS))
WHERE ( Employment eq '');
QUIT;

/* Step 7: Run Step 1 again to check the result*/
PROC SQL;
Select * FROM Training
Where (Employment EQ '') OR (Employment IS NULL);
QUIT;

/*********************************************************
IMPUTE Continuous Var. using Mean
*********************************************************/

/* LOAN_AMOUNT (Continuous) */

** Step 0: Create shorcut;
DATA Training; 
Set  LIB2023.TRAINING_DS1;
RUN;

**Step 1. Count the empty values (if any);
PROC sql;
Select Count(*) Label='Number of loan applicants'
From LIB2023.TRAINING_DS1
Where (Loan_amount = .) or (Loan_amount is missing);

**Step 2. Create Backup;
Create TABLE Training_BK as Select * from Training;

**Step 3. Impute missing value;
PROC STDIZE DATA=Training REPONLY  /*Replace only*/
METHOD = MEAN OUT =  LIB2023.TRAINING_DS1; 
VAR loan_amount;	
QUIT;
    
**Step 4. Check the results after imputation ;
TITLE 'List the details of the loan applicants who submitted their loan applications without loan amount';
PROC SQL; 
SELECT COunt(*)
FROM  LIB2023.TRAINING_DS1 t
WHERE ( t.loan_amount IS MISSING or t.loan_amount eq . ); 
QUIT;

/* LOAN_DURATION (Continuous) */

**Step 1. Count the empty values (if any);
PROC sql;
Select Count(*) Label='Number of loan applicants'
From Training
Where (LOAN_DURATION = .);

**Step 2. Create Backup;
Create TABLE Training_BK as Select * from Training;

**Step 3. Impute missing value;
PROC STDIZE DATA=Training REPONLY  /*Replace only*/
METHOD = MEAN OUT =  LIB2023.TRAINING_DS1; 
VAR LOAN_DURATION;	
QUIT;
    
**Step 4. Check the results after imputation ;
TITLE 'List the details of the loan applicants who submitted their loan applications without loan amount';
PROC SQL; 
SELECT Count(*)
FROM  LIB2023.TRAINING_DS1 t
WHERE ( t.LOAN_DURATION IS MISSING or t.LOAN_DURATION eq . ); 
QUIT;

/*********************************************************************************************
Univariate Analysis of the Categorical variables using SAS MACRO in “TESTING_DS”
**********************************************************************************************/  
/* Macro Begins here */
OPTIONS mcompilenote=ALL;
%MACRO MMACRO_UVA_TRAINING_DS1(pvariable,pdataset);
TITLE "Univariate Analysis of the categorical variable- &pvariable using SAS MACRO" ;
PROC FREQ DATA= &pdataset;
TABLE &pvariable;
RUN;
%MEND MMACRO_UVA_TRAINING_DS1;
/* Macro ends here */

/*********************************************************************************************
To run Univariate Analysis on Categorical variables in “TESTING_DS”
**********************************************************************************************/ 
/* Gender */
%MMACRO_UVA_TRAINING_DS1(GENDER, LIB2023.Testing_Ds); 

/*Marital_Status*/
%MMACRO_UVA_TRAINING_DS1(MARITAL_STATUS, LIB2023.Testing_Ds);

/*Family_Members*/
%MMACRO_UVA_TRAINING_DS1(FAMILY_MEMBERS, LIB2023.Testing_Ds);

/* QUALIFICATION */
%MMACRO_UVA_TRAINING_DS1(QUALIFICATION, LIB2023.Testing_Ds);

/* EMPLOYMENT */
%MMACRO_UVA_TRAINING_DS1(EMPLOYMENT, LIB2023.Testing_Ds);

/* LOAN_HISTORY */
%MMACRO_UVA_TRAINING_DS1(LOAN_HISTORY, LIB2023.Testing_Ds);

/* LOAN_LOCATION */
%MMACRO_UVA_TRAINING_DS1(LOAN_LOCATION, LIB2023.Testing_Ds);
/*********************************************************************************************
Univariate Analysis of the Continuous variables using SAS MACRO in “TESTING_DS”
**********************************************************************************************/ 
/* SAS MACRO */
Options MCOMPILENOTE=ALL;
%MACRO MACRO_UVA_CONTI_VARI(pcontivar,pdataset);
TITLE "Univariate Analysis of the Continuous Variable- &pcontivar using SAS MACRO" ;
PROC MEANS DATA=&pdataset N NMISS MIN MAX MEAN MEDIAN STD;
VAR &pcontivar;
RUN;
%MEND MACRO_UVA_CONTI_VARI;
/*SAS MACRO ends here*/


/*********************************************************************************************
To run the univariate analysis of the continuous variables in “TESTING_DS”
**********************************************************************************************/ 
/* LOAN_AMOUNT */
%MACRO_UVA_CONTI_VARI(LOAN_AMOUNT, LIB2023.Testing_Ds);

/* LOAN_DURATION */
%Macro_uva_conti_vari(LOAN_DURATION, LIB2023.Testing_Ds);

/* CANDIDATE_INCOME */
%Macro_uva_conti_vari(CANDIDATE_INCOME, LIB2023.Testing_Ds);

/* GUARANTEE_INCOME */
%Macro_uva_conti_vari(GUARANTEE_INCOME, LIB2023.Testing_Ds);



/*********************************************************************************************
Bivariate Analysis using SAS MACRO in “TESTING_DS”
/* Categorical vs. Categorical */
**********************************************************************************************/ 

/* SAS MACRO begins here */
OPTIONS MCOMPILENOTE=ALL;
%MACRO MACRO_BVA_CATE_CATE(ptitle1,ptitle2,pcate_vari1,pcate_vari2,pdataset);
TITLE1 &ptitle1;
TITLE2 &ptitle2; 
PROC FREQ DATA=&pdataset;
TABLE &pcate_vari1 * &pcate_vari2/ 
PLOTS=FREQPLOT(TWOWAY=STACKED SCALE=GROUPPCT);
RUN;
%MEND MACRO_BVA_CATE_CATE;
/*SAS MACRO ends here */

/* Call the MACRO */
/* GENDER VS LOAN LOCATION */
%Macro_bva_cate_cate('Bivariate Analysis of Variables', 'GENDER VS LOAN LOCATION', gender, loan_location,  LIB2023.Testing_DS);

/* GENDER VS qualification */
%Macro_bva_cate_cate('Bivariate Analysis of Variables', 'GENDER VS qualification', gender, qualification,  LIB2023.Testing_DS);

/* GENDER VS LOAN HISTORY */
%Macro_bva_cate_cate('Bivariate Analysis of Variables', 'GENDER VS LOAN HISTORY', gender, loan_history,  LIB2023.Testing_DS);


/*********************************************************************************************
Bivariate Analysis using SAS MACRO in “TESTING_DS”
CATEGORICAL VS. CONTINUOUS 
**********************************************************************************************/ 

/* SAS MACRO begins here */
OPTIONS Mcompilenote=ALL;
%MACRO MACRO_BVA_CATE_CONTI(ptitle1,ptitle2,pcate,pconti,pdataset);
TITLE1 &ptitle1;
TITLE2 &ptitle2;
PROC Means DATA=&pdataset;
	CLASS &pcate;/*  CATE */
	VAR &pconti; /* CONTI */
RUN;
%MEND MACRO_BVA_CATE_CONTI;
/* MACRO ENDS HERE */

/* Gender vs Guarantee_income */
%MACRO_BVA_CATE_CONTI("Bivariate Analysis of Variables",'GENDER vs GUARANTEE_INCOME',
gender, guarantee_income,  LIB2023.Testing_DS);

/* Location vs Candidate_income */
%MACRO_BVa_cate_conti('Bivariate Analysis of Variables','Location vs Candidate Income',
 Loan_location, Candidate_income,  LIB2023.Testing_DS);

/* Marital_status vs Candidate_income */
%macro_bva_cate_conti('Bivariate Analysis of Variables','Marital status vs Candidate Income',
 MARITAL_STATUS, CANDIDATE_INCOME, LIB2023.TESTING_DS);

/*********************************************************************************************
Bivariate Analysis using SAS MACRO in “TESTING_DS”
CONTINUOUS VS. CONTINUOUS 
**********************************************************************************************/ 
--
/************************************************************************
Imputation for categorical variable on "Testing_DS"
*************************************************************************/
/* Gender--Categorical */

/* Step 1: Make a copy of DS */
Proc SQL;
Create table LIB2023.TESTING_BK AS
SELECT * FROM LIB2023.TESTING_DS;
QUIT;

/* Step 2: Find the statistics to get the MOD in Gender */
Proc SQL;
CREATE TABLE LIB2023.TESTING_DIS_GENDER as
SELECT GENDER, COUNT(*) AS FREQ  FROM LIB2023.TESTING_DS
WHERE GENDER IS NOT NULL
GROUP BY GENDER;
QUIT;

/* Step 3: Find the MOD */
PROC SQL;
SELECT GENDER  FROM LIB2023.TESTING_DIS_GENDER G
WHERE G.FREQ=(SELECT MAX(FREQ) FROM LIB2023.TESTING_DIS_GENDER);
QUIT;

/* Step 4: Impute using the MOD */
PROC SQL;
UPDATE LIB2023.TESTING_DS
SET GENDER =( SELECT GENDER  FROM LIB2023.TESTING_DIS_GENDER G
			WHERE G.FREQ=(SELECT MAX(FREQ) FROM LIB2023.TESTING_DIS_GENDER)
			)
WHERE (GENDER EQ '') OR (GENDER IS NULL);
QUIT;

/*STEP 5: CHECK THE CHANGES*/
PROC SQL;
SELECT * FROM LIB2023.TESTING_DS
WHERE (GENDER IS NULL) OR (GENDER EQ "");
QUIT;

/* FAMILY_MEMBERS */

/*Step 1. Count the missing values in FAMILY_MEMBERS */
PROC SQL;
Select Count(*) as No_of_family_missing from LIB2023.TESTING_DS
where Family_Members is missing;

/*Step 2. Make a copy of the table to keep track of the number of observations for diff. groups*/
Create TABLE  LIB2023.TESTING_FM_STAT_DS AS
Select Family_members, Count(*) as Counts
From LIB2023.TESTING_DS
Where Family_members is not missing
Group by Family_members;

/*Shortcut  */
DATA Family_Members_DS;  
Set  LIB2023.TESTING_fm_stat_ds;

/*Step 3. Obtain the Mode  */
Proc Sql;
Select Family_members AS family_members
From Family_Members_DS 
Where Counts=(
	Select Max(Counts) as Highest_Count 
	From Family_Members_DS);

/*Step 4. Impute missing values with the mode  */
Proc SQL;
Update LIB2023.TESTING_DS
Set Family_Members=(
	Select Family_members AS family_members
	From Family_Members_DS 
	Where Counts=(
		Select Max(Counts) as Highest_Count  /* Subquery to find highest count in family members*/
		From Family_Members_DS))
Where ( Family_Members eq '');
QUIT;  

/*Step 5. Check the imputation results */
** Using Step 1;

/* LOAN_HISTORY */

/*Step 1. Count the missing values in LOAN_HISTORY */
PROC SQL;
Select Count(*) as No_of_missing_LOAN_HISTORY from LIB2023.TESTING_DS
where LOAN_HISTORY is missing;

/*Step 2. Make a copy of the table to keep track of the number of observations for diff. groups*/
Create TABLE  LIB2023.TESTING_LH_STAT_DS AS
Select LOAN_HISTORY, Count(*) as Counts
From LIB2023.TESTING_DS
Where LOAN_HISTORY is not missing
Group by LOAN_HISTORY;

/*Shortcut  */
DATA LOAN_HISTORY_DS;  
Set  LIB2023.TESTING_LH_stat_ds;

/*Step 3. Obtain the Mode  */
PROC SQL;
Select LOAN_HISTORY AS LOAN_HISTORY
From LOAN_HISTORY_DS 
Where Counts=(
	Select Max(Counts) as Highest_Count 
	From LOAN_HISTORY_DS);

/*Step 4. Impute missing values with the mode  */
PROC SQL;
Update LIB2023.TESTING_DS
Set LOAN_HISTORY=(
	Select LOAN_HISTORY AS LOAN_HISTORY
	From LOAN_HISTORY_DS 
	Where Counts=(
		Select Max(Counts) as Highest_Count  /* Subquery to find highest count in family members*/
		From LOAN_HISTORY_DS))
Where ( LOAN_HISTORY eq .);
QUIT;  

/*Step 5. Check the imputation results */
** Using Step 1;


/* EMPLOYMENT */

/* Step 1: List the details of missing values*/
TITLE 'STEP1: List the details of user who dont have Employment';
PROC SQL;
Select * FROM LIB2023.TESTING_DS
Where (Employment EQ '') OR (Employment IS NULL);
QUIT;

TITLE 'Count the total of user who dont have "Employment"';
PROC SQL;
Select Count(*) LABEL='Number of applicants'
FROM LIB2023.TESTING_DS
Where (Employment EQ '') OR (Employment IS NULL);
Quit;

/* Step 3: Find the statistics and store the statistics in the dataset */
PROC Sql;
Create TABLE  LIB2023.TESTING_MS_STAT_DS as
Select Employment as Employment, Count(*) as Count
From LIB2023.TESTING_DS 
Where (Employment Is Not Missing or Employment ne '')
Group by Employment;
Quit;

/* Step 4: Find the mod*/
PROC SQL;

Select Employment as Employment
From  LIB2023.TESTING_MS_STAT_DS
WHERE Count eq ( Select Max(Count) Label = 'highest_count'
					From  LIB2023.TESTING_MS_STAT_DS);
					
/* Step 5: Make a backup copy of dataset- LIB2023.TESTING_DS */
PROC SQL;
Create TABLE  LIB2023.TESTING_BK
as Select *
From LIB2023.TESTING_DS;
Quit;

/* Step 6: Impute the missing values OF LOAN_HISTORY */
PROC SQL;
UPDATE LIB2023.TESTING_DS
Set Employment=(
	Select Employment as Employment
	From  LIB2023.TESTING_MS_STAT_DS
	WHERE Count eq ( Select Max(Count) Label = 'highest_count'
					 From  LIB2023.TESTING_MS_STAT_DS))
WHERE ( Employment eq '');
QUIT;

/* Step 7: Run Step 1 again to check the result*/
PROC SQL;
Select * FROM LIB2023.TESTING_DS
Where (Employment EQ '') OR (Employment IS NULL);
QUIT;

/************************************************************************
Imputation for continuous variable on dataset LIB2023.TESTING_DS
*************************************************************************/
/* LOAN_AMOUNT */

/*Step 1. Count the missing values  */
Proc Sql;
Select Count(*) Label ='Total missing values'
FROM lib2023.Testing_DS 
where (LOAN_AMOUNT EQ .);
QUIT;

/*STEP 2. Create a copy for backup  */
proc sql;
CREATE TABLE LIB2023.TESTING_BK AS
SELECT * FROM LIB2023.TESTING_DS; 
QUIT;

/*Step 3. Impute missing value */
PROC STDIZE DATA=LIB2023.TESTING_DS REPONLY  /*Replace only*/
METHOD = MEAN OUT =  LIB2023.TESTING_DS; 
VAR loan_amount;	
QUIT;
    
**Step 4. Check the results after imputation ;
TITLE 'List the details of the loan applicants who submitted their loan applications without loan amount';
PROC SQL; 
SELECT *
FROM  LIB2023.TESTING_DS t
WHERE ( t.loan_amount IS MISSING or t.loan_amount eq . ); 
QUIT;
 

/* LOAN_DURATION */

/*Step 1. Count the missing values  */
Proc Sql;
Select Count(*) Label ='Total missing values'
FROM lib2023.Testing_DS 
where (LOAN_DURATION EQ .);
QUIT;

/*STEP 2. Create a copy for backup  */
proc sql;
CREATE TABLE LIB2023.TESTING_BK AS
SELECT * FROM LIB2023.TESTING_DS; 
QUIT;

/*Step 3. Impute missing value */
PROC STDIZE DATA=LIB2023.TESTING_DS REPONLY  /*Replace only*/
METHOD = MEAN OUT =  LIB2023.TESTING_DS; 
VAR LOAN_DURATION;	
QUIT;
    
**Step 4. Check the results after imputation ;
TITLE 'List the details of the loan applicants who submitted their loan applications without LOAN_DURATION';
PROC SQL; 
SELECT *
FROM  LIB2023.TESTING_DS t
WHERE ( t.LOAN_DURATION IS MISSING or t.LOAN_DURATION eq .); 
QUIT;

/*********************************************************
Building a Logistic Regression Model
**********************************************************/
PROC LOGistic DATA=  LIB2023.TRAINING_DS1 OUTMODEL= LIB2023.TRAINING_DS1_LR_MODEL;

/*categorical  */
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
/*PRED_PROB ->Predicted probability - variable to hold predicted probability */
 
RUN;

/***************************************************************************
PRED_PROB ->Predicted probability - variable to hold predicted probability 
OUT -> the output will be stored in the dataset 

Akaike Information criterion must ( AIC ) < SC (Schwarz Criterion) */
/*If Pr > ChiSq is <= 0.05, it means that that independent variable is an 
important variable and as is truely contributing to predict dependent variable

***************************************************************************/


/* Predict the loan approval status using the model created */

PROC LOGISTIC INMODEL =  LIB2023.TRAINING_DS1_LR_MODEL;/* Model that is created */
SCORE DATA= LIB2023.TESTING_DS /* Enter with the Testing Dataset */
OUT= LIB2023.TESTING_LAS_PREDICTED_DS; /* Location of output */
QUIT;

/* Visualize the Prediction */

/* Simple barchart */
PROC SGPLOT DATA =  LIB2023.TESTING_LAS_PREDICTED_DS;
VBAR loan_location;
TITLE 'Loan Applicants by Loan Location';
RUN;

/* Stacked bar chart */
Title 'Number of family members by loan location';
PROC sgplot DATA=  LIB2023.Testing_las_predicted_ds;

vbar family_members / group = loan_location  groupdisplay=cluster;
label family_members ='Number of family members by loan location';
RUN;

/* Pie Chart 3D*/
TITLE 'Loan approval status by loan location';
 
PROC GCHART DATA =  LIB2023.TESTING_LAS_PREDICTED_DS;
pie3d I_LOAN_APPROVAL_STATUS;
RUN;
QUIT;

/* Pie Chart 2D */
GOPTIONS RESET=ALL BORDER;
TITLE 'family_members vs loan location';
PROC GCHART DATA= LIB2023.TESTING_LAS_PREDICTED_DS;
pie family_members / detail=loan_location
detail_percent=best
detail_value=none
detail_slice=best
detail_threshold=2
legend;
RUN;

/*********************************************************
Generate report using SAS ODS - Output Delivery System
*********************************************************/

ODS HTML CLOSE;
ODS PDF CLOSE;
/* Determine the physical location of pdf */ 
ODS PDF FILE = "/home/u63525503/DAPTP075336/MAYBK_LASR.pdf";
OPTIONS NODATE;
TITLE1 'Bank Loan Approval Status Predicted';
TITLE2 'APU,TPM';
PROC REPORT DATA =  LIB2023.TESTING_LAS_PREDICTED_DS NOWINDOWS; 
BY SME_LOAN_ID_NO; 
DEFINE SME_LOAN_ID_NO / GROUP 'LOAN ID';
DEFINE GENDER / GROUP 'GENDER NAME';
DEFINE MARITAL_STATUS / GROUP 'MARITAL STATUS';
DEFINE FAMILY_MEMBERS / GROUP 'FAMILY MEMBERS';
DEFINE CANDIDATE_INCOME / GROUP 'MONTHLY INCOME';
DEFINE GUARANTEE_INCOME / GROUP "CO-APPLICANT'S INCOME";
DEFINE LOAN_AMOUNT / GROUP 'LOAN AMOUNT';
DEFINE LOAN_DURATION / GROUP 'LOAN DURATION';
DEFINE LOAN_HISTORY / GROUP 'LOAN HISTORY';
DEFINE LOAN_LOCATION / GROUP 'LOAN LOCATION';
FOOTNOTE '---End of Report----';

RUN;

/*********************************************************
Generate report carrying the loan approval status (without using SAS ODS) 
*********************************************************/

/*******************************************************************************
STEP 1: Sort the data found in the dataset - LIB51510.TESTING_LAS_PREDICTED_DS 
********************************************************************************/
 
OPTIONS NODATE;
 
PROC SORT DATA = LIB2023.TESTING_LAS_PREDICTED_DS OUT = LIB2023.TESTING_LAS_PREDICTED_SORTED_DS;
 
BY loan_location 
   sme_loan_id_no;
RUN;
 
/********************************************************************
STEP 2: List the details of the data sorted 
*********************************************************************/
 
PROC SQL;
 
SELECT *
FROM LIB2023.TESTING_LAS_PREDICTED_SORTED_DS;

QUIT;

PROC SQL;
 
SELECT COUNT(*)
FROM LIB2023.TESTING_LAS_PREDICTED_SORTED_DS
where into:LOAN_APPROVAL_STATUS eq '';
QUIT;
/********************************************************************
STEP 3: Generate the report
*********************************************************************/

PROC PRINT DATA = LIB2023.TESTING_LAS_PREDICTED_SORTED_DS SPLIT = '*';
id loan_location;
by loan_location;
var sme_loan_id_no
     candidate_income
     loan_amount
     loan_duration
     i_loan_approval_status;
sum candidate_income loan_amount;  
label loan_location = 'LOAN LOCATION*======='
       sme_loan_id_no = 'LOAN ID*======='
       candidate_income = 'CANDIDATE INCOME*================'
       loan_amount = 'LOAN AMOUNT*==========='
       loan_duration = 'LOAN DURATION*============='
       i_loan_approval_status ='LOAN APPROVAL STATUS*===================='; 
TITLE1 'Bank Loan Approval Status Predicted';
TITLE2 'MAYBANK,TPM';
 
RUN;
