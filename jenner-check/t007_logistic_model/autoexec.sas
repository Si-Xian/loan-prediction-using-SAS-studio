/* cap input rows for the captured run */
options obs=100;
/* the upstream script reads LIB2023.TRAINING_DS1 / LIB2023.TESTING_DS from an
   external library; alias LIB2023 onto WORK and seed it with a sample below */
libname LIB2023 (WORK);

data TRAINING_DS1;
  length SME_LOAN_ID_NO $ 12 GENDER $ 8 MARITAL_STATUS $ 12 FAMILY_MEMBERS $ 4 QUALIFICATION $ 16 EMPLOYMENT $ 4 LOAN_LOCATION $ 8 LOAN_APPROVAL_STATUS $ 1;
  infile datalines dsd truncover;
  input SME_LOAN_ID_NO $ GENDER $ MARITAL_STATUS $ FAMILY_MEMBERS $ QUALIFICATION $ EMPLOYMENT $ CANDIDATE_INCOME GUARANTEE_INCOME LOAN_AMOUNT LOAN_DURATION LOAN_HISTORY LOAN_LOCATION $ LOAN_APPROVAL_STATUS $;
datalines;
LP001002,Male,Not Married,0,Graduate,No,5849,0,,360,1,City,Y
LP001027,Male,Married,2,Graduate,,2500,1840,109,360,1,City,Y
LP001034,Male,Not Married,1,Under Graduate,No,3596,0,100,240,,City,Y
LP001041,Male,Married,0,Graduate,,2600,3500,115,,1,City,Y
LP001050,,Married,2,Under Graduate,No,3365,1917,112,360,0,Village,N
LP001052,Male,Married,1,Graduate,,3717,2925,151,360,,Town,N
LP001003,Male,Married,1,Graduate,No,4583,1508,128,360,1,Village,N
LP001005,Male,Married,0,Graduate,Yes,3000,0,66,360,1,City,Y
LP001006,Male,Married,0,Under Graduate,No,2583,2358,120,360,1,City,Y
LP001008,Male,Not Married,0,Graduate,No,6000,0,141,360,1,City,Y
LP001011,Male,Married,2,Graduate,Yes,5417,4196,267,360,1,City,Y
LP001013,Male,Married,0,Under Graduate,No,2333,1516,95,360,1,City,Y
LP001014,Male,Married,3+,Graduate,No,3036,2504,158,360,0,Town,N
LP001018,Male,Married,2,Graduate,No,4006,1526,168,360,1,City,Y
LP001020,Male,Married,1,Graduate,No,12841,10968,349,360,1,Town,N
LP001024,Male,Married,2,Graduate,No,3200,700,70,360,1,City,Y
LP001028,Male,Married,2,Graduate,No,3073,8106,200,360,1,City,Y
LP001029,Male,Not Married,0,Graduate,No,1853,2840,114,360,1,Village,N
LP001030,Male,Married,2,Graduate,No,1299,1086,17,120,1,City,Y
LP001032,Male,Not Married,0,Graduate,No,4950,0,125,360,1,City,Y
LP001036,Female,Not Married,0,Graduate,No,3510,0,76,360,0,City,N
LP001038,Male,Married,0,Under Graduate,No,4887,0,133,360,1,Village,N
LP001043,Male,Married,0,Under Graduate,No,7660,0,104,360,0,City,N
LP001046,Male,Married,1,Graduate,No,5955,5625,315,360,1,City,Y
LP001047,Male,Married,0,Under Graduate,No,2600,1911,116,360,0,Town,N
LP001066,Male,Married,0,Graduate,Yes,9560,0,191,360,1,Town,Y
LP001068,Male,Married,0,Graduate,No,2799,2253,122,360,1,Town,Y
LP001073,Male,Married,2,Under Graduate,No,4226,1040,110,360,1,City,Y
;
run;

data TESTING_DS;
  length SME_LOAN_ID_NO $ 12 GENDER $ 8 MARITAL_STATUS $ 12 FAMILY_MEMBERS $ 4 QUALIFICATION $ 16 EMPLOYMENT $ 4 LOAN_LOCATION $ 8 LOAN_APPROVAL_STATUS $ 1;
  infile datalines dsd truncover;
  input SME_LOAN_ID_NO $ GENDER $ MARITAL_STATUS $ FAMILY_MEMBERS $ QUALIFICATION $ EMPLOYMENT $ CANDIDATE_INCOME GUARANTEE_INCOME LOAN_AMOUNT LOAN_DURATION LOAN_HISTORY LOAN_LOCATION $ LOAN_APPROVAL_STATUS $;
datalines;
LP001015,Male,Married,0,Graduate,No,5720,0,110,360,1,City,
LP001022,Male,Married,1,Graduate,No,3076,1500,126,360,1,City,
LP001031,Male,Married,2,Graduate,No,5000,1800,208,360,1,City,
LP001051,Male,Not Married,0,Under Graduate,No,3276,0,78,360,1,City,
LP001054,Male,Married,0,Under Graduate,Yes,2165,3422,152,360,1,City,
LP001055,Female,Not Married,1,Under Graduate,No,2226,0,59,360,1,Town,
LP001056,Male,Married,2,Under Graduate,No,3881,0,147,360,0,Village,
LP001067,Male,Not Married,0,Under Graduate,No,2400,2400,123,360,1,Town,
LP001078,Male,Not Married,0,Under Graduate,No,3091,0,90,360,1,City,
LP001096,Female,Not Married,0,Graduate,No,4666,0,124,360,1,Town,
LP001099,Male,Not Married,1,Graduate,No,5667,0,131,360,1,City,
LP001105,Male,Married,2,Graduate,No,4583,2916,200,360,1,City,
LP001107,Male,Married,3+,Graduate,No,3786,333,126,360,1,Town,
LP001108,Male,Married,0,Graduate,No,9226,7916,300,360,1,City,
LP001115,Male,Not Married,0,Graduate,No,1300,3470,100,180,1,Town,
LP001121,Male,Married,1,Under Graduate,No,1888,1620,48,360,1,City,
LP001124,Female,Not Married,3+,Under Graduate,No,2083,0,28,180,1,City,
LP001135,Female,Not Married,0,Under Graduate,No,3765,0,125,360,1,City,
LP001149,Male,Married,0,Graduate,No,5400,4380,290,360,1,City,
LP001153,Male,Not Married,0,Graduate,No,0,24000,148,360,0,Village,
;
run;
