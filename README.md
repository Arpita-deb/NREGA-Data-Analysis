# NREGA-Data-Analysis

# About the Internship:

* Organization: Mentorness
* Type: Remote
* Duration: 26/05/2024 to 26/06/2024
* Number of tasks: 3

# About the Project:

This project delves into the analysis of data related to the National Rural Employment Guarantee Act (NREGA), a transformative government scheme aimed at providing rural households with guaranteed wage employment opportunities. 

The dataset used for this analysis encompasses a wide range of parameters, including the number of job cards issued, the workforce engaged, budget allocation, work completion statistics, and much more. Through the application of data analytics techniques, we aim to gain valuable insights into the implementation and impact of NREGA across different states and districts in India.

# Objective:

* Data preprocessing and cleaning to ensure data quality.
* Exploratory data analysis (EDA) to identify patterns, trends, and disparities in NREGA implementation.
* Utilizing data visualization techniques to present key findings effectively.
* Drawing actionable insights to inform policymakers and administrators about the strengths and weaknesses of the NREGA program.

# Problem Statement:

"NREGA is a vital initiative to alleviate rural unemployment and poverty. This project seeks to address several key questions and challenges associated with NREGA:

* How effective is NREGA in providing employment opportunities to rural households?
* Are there regional disparities in the implementation and outcomes of the scheme?
* What is the utilization of the allocated budget, and how does it correlate with employment generation?
* What are the key factors contributing to the completion of NREGA works, and are there any roadblocks to its success?
* Can data-driven insights guide policymakers and administrators in optimizing the scheme's impact?"

This translates into these quantitative questions: 

1. **Effectiveness of Employment Opportunities**:
    - What is the average number of days of employment provided per rural household under NREGA?
    - Calculate the mean and distribution of employment days across households.

2. **Regional Disparities**:
    - Are there significant differences in employment outcomes (e.g., days worked, wages earned) between different regions (states, districts, or villages)?
    - Compare employment metrics across regions using statistical tests (e.g., t-tests, ANOVA).

3. **Budget Utilization and Employment Correlation**:
    - How does the utilization of the allocated budget relate to employment generation?
    - Analyze the correlation between budget expenditure and employment outcomes (e.g., total days worked, wages paid).

4. **Factors Contributing to Completion and Roadblocks**:
    - What factors influence the completion of NREGA works?
    - Identify variables (e.g., work type, location, wage rates) associated with successful completion and explore roadblocks (e.g., delays, insufficient wages).

5. **Data-Driven Insights for Optimization**:
    - Can specific data patterns guide policy decisions?
    - Use regression models or machine learning to identify predictors of success and recommend improvements.


# Deliverables: 

* Project Source Code: SQL file with queries
* [Dashboard]()
* [Presentation Report]()
* [Video Presentation]() explaining the approach towards dataset, problem statement, inferences drawn, final outcome and future scope.

# Tools Used:

* Microsoft Excel: For Data Cleaning and Transforming
* Microsoft SQL Server: For Data Analysis
* Power BI: For Data Visualization and Dashboard
* Canva: For creating Project Report
* GitHub: Documenting the result

# Methodologies Used:

* Data Cleaning
* Data Analysis
* Data Visualization
* Presentation
* Documentation

# Data Decription:
The dataset used for this analysis is sourced from official government records and contains information related to NREGA implementation across various states and districts in India. It comprises 28 columns, encompassing data on job cards, worker details, budget allocation, work completion statistics, expenditure, and more. This dataset offers a comprehensive view of the progress and challenges faced by the NREGA program.

| Column Name | Datatype | Description |
| :--- | :--- | :--- |
| state_name | Str | Name of the Indian state |
| district_name | Str | Name of the district within the state |
| Total No. of JobCards issued | Int | The total number of job cards issued to rural households |
| Total No. of Workers | Int | The total number of workers registered under NREGA |
| Total No. of Active Job Cards | Int | The number of active job cards at a given point in time |
| Total No. of Active Workers | Int | The number of workers currently engaged in NREGA works |
| SC workers against active workers | Int | The count of Scheduled Caste workers among active workers |
| ST workers against active workers | Int | The count of Scheduled Tribe workers among active workers |
| Approved Labour Budget | Int | The budget allocated for labor under NREGA |
| Persondays of Central Liability so far | Int | The total persondays of employment provided, considering central liability |
| SC persondays | Int | Persondays of employment provided to Scheduled Caste workers |
| ST persondays | Int | Persondays of employment provided to Scheduled Tribe workers |
| Women Persondays | Int | Persondays of employment provided to women |
| Average days of employment provided per Household | Int | The average number of days of employment provided per rural household |
| Average Wage rate per day per person(Rs.) | Float | The average daily wage rate per NREGA worker in Indian Rupees |
| Total No of HHs completed 100 Days of Wage Employment | Int | The number of households completing 100 days of wage employment |
| Total Households Worked | Int | The total number of households involved in NREGA works |
| Total Individuals Worked | Int | The total number of individuals engaged in NREGA works |
| Differently abled persons worked | Int | The count of differently abled persons who participated in NREGA works |
| Number of GPs with NIL exp | Int | The number of Gram Panchayats with zero expenditure |
| Total No. of Works Takenup (New+Spill Over) | Int | The total number of works initiated, including new projects and spill-over from previous periods |
| Number of Ongoing Works | Int | The count of works that are currently in progress |
| Number of Completed Works: | Int | The count of works that have been successfully completed |
| % of NRM Expenditure(Public + Individual) | Float | The percentage of expenditure on Natural Resource Management (NRM) projects, including both public and individual contributions |
| % of Category B Works | Int | The percentage of expenditure on Category B works |
| % of Expenditure on Agriculture & Agriculture Allied Works | Float | The percentage of expenditure on agriculture and allied activities |
| Total Exp(Rs. in Lakhs.) | Float | Total expenditure in Indian Rupees (in lakhs) |
| Wages(Rs. In Lakhs) | Float | Expenditure on wages in Indian Rupees (in lakhs) |
| Material and skilled Wages(Rs. In Lakhs) | Float | Expenditure on materials and skilled wages in Indian Rupees (in lakhs) |
| Total Adm Expenditure (Rs. in Lakhs) | Float | Total administrative expenditure in Indian Rupees (in lakhs) |

# Data Cleaning:
# Data Exploration:
# Summary of the Result:
# Dashboard:
# Limitations of the Project:
# Future Ideas:

# References:

* [Mahatma Gandhi National Rural Employment Guarantee Act, 2005](https://en.wikipedia.org/wiki/Mahatma_Gandhi_National_Rural_Employment_Guarantee_Act,_2005)
* [MAHATMA GANDHI NATIONAL RURAL EMPLOYMENT GUARANTEE SCHEME](https://nrega.nic.in/MGNREGA_new/home_nrega_new.aspx)
* [An evaluation of India’s National Rural Employment Guarantee Act](https://www.worldbank.org/en/programs/sief-trust-fund/brief/an-evaluation-of-indias-national-rural-employment-guarantee-act)
* [Scheme: A Policy Solution to Rural Poverty in India?](https://onlinelibrary.wiley.com/doi/full/10.1111/dpr.12220)
* [MGNREGA : Bridging Gaps in Rural India Dataset from Kaggle](https://www.kaggle.com/datasets/jayesh134/mgnrega-bridging-gaps-in-rural-india)

# Appendix:

* [Power BI Dashboard](https://drive.google.com/file/d/1DMGkVY3RVBzQ2uZMKMOgVbWhXrDZrY_k/view?usp=sharing)
* [Epidemic Analytics Report Presentation](https://drive.google.com/file/d/1dj6pw7DB12NxdxLj5S5rj4aSoidRIbqo/view?usp=sharing)
* [Epidemic Analytics Video Presentation](https://drive.google.com/file/d/168YmV5N0FQdJ4fFSavlFkxsYX7K1ynMo/view?usp=sharing)

