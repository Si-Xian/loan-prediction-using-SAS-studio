/*********************************************************************************************
IMPUTATION (Training DS): impute missing GENDER with the mode, using PROC SQL
Steps: back up, compute per-category frequencies, find the mode via a correlated
subquery, UPDATE the missing rows, then verify none remain missing.
**********************************************************************************************/

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
TITLE 'Mode of GENDER';
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

/* STEP 5: CHECK THE CHANGES */
TITLE 'Rows still missing GENDER after imputation (expect none)';
PROC SQL;
SELECT * FROM LIB2023.TRAINING_DS1
WHERE (GENDER IS NULL) OR (GENDER EQ "");
QUIT;
