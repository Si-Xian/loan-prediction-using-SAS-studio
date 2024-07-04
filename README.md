# Loan Approval Prediction Using via SAS Programming:

## Background:
Lasiandra Finance Inc. (LFI) New York, USA is a leading private financing company which caters the funding needs of Small and Medium enterprises (SME). LFI clearly understood that some business dreams need that extra push to see them accelerated. Hence it allows its loaning process as tailor-made and customer centric. In the past few years, it has tremendously expanded its wings and to speed up the process, it needs to automate the loan eligibility process based on customer portfolio entered online.

The main problem faced by the LFI is the approval process of the loans. Because it is a complicated procedure of verification and validation but still there is no guarantee whether the chosen applicant is the deserving one out of all applicants. Hence, it needs a model which can predict the loan approval.

As data scientist in LFI, It is needed to analyze the data set obtained from the past customer and build a logistic regression model to predict the approval process, as approved or rejected.

## Objectives:
- Perform EDA and data preprocessing techniques
- Develop a machine learning model for loan approval prediction using SAS.
- Create visuals of the output for interpretation.
 
## Brief EDA:
Here are the Categorical variables found in dataset:
1. gender
2. marital_status
3. family_members
4. qualification
5. employment
6. loan_history
7. loan_location
8. loan_approval_status (Target)
9. sme_loan_ID (ID)
    
Here are the Continuous variables found in dataset:
1. candidate_income
2. guarantee_income
3. loan_amount
4. loan_duration

## EDA(training set)
Univariate analysis of variable is done on all the variables (except ID). This is to ensure that the variables with missing values can be identified.

Bivariate analysis of variable:
1. gender VS approval_status
2. gender VS marital_status
3. employment VS marital_status
 

# EDA(testing set)
Using SAS MACRO for univariate and bivariate analysis

# Impute missing value
<table style="width:100%">
  <thead>
    <tr>
      <th colspan="2"; style="text-align:center; font-weight: bold; font-size:14px">Training</th>
      <th colspan="2"; style="text-align:center; font-weight: bold; font-size:14px">Testing</th>
    </tr>
  </thead>
  <tbody>
    <tr>
    <td>Mode</td> 
    <td>Mean</td> 
    <td>Mode</td> 
    <td>Mean</td> 
    </tr>
    <tr>
    <td>Family Members</td> 
    <td>Loan Amount</td> 
    <td>Gender</td> 
    <td>Loan Amount</td>       
    </tr>
    <tr>
    <td>Marital Status</td> 
    <td>Loan Duration</td> 
    <td>Family Members</td> 
    <td>Loan Duration</td>       
    </tr>
    <tr>
    <td>Employment</td> 
    <td></td> 
    <td>Employment</td> 
    <td></td>       
    </tr>
        <tr>
    <td>Loan History</td> 
    <td></td> 
    <td>Loan History</td> 
    <td></td>       
    </tr>
  </tbody>
</table>

We will Impute the missing values found in the Categorical variable using the 
mode, while continuous variables are imputed using mean. 

# Model Creation
Logistic Regression Model will be created in this project. 
After creating the model, we apply the model to predict the loan approval status for 
applicants in testing set.
A visualization for the predicted output will be provided (Details in the pdf).
