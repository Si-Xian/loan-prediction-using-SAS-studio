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
