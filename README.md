# Mapping MGNREGA 
## A state-level analysis of one of world’s largest Rural Employment Scheme 
![Mapping Mgnrega Presentation](https://github.com/Arpita-deb/NREGA-Data-Analysis/assets/139372731/a436a771-0ed2-4a7c-810b-054972ddd0c9)

## Introduction:
### Mahatma Gandhi National Rural Employment Guarantee Act, 2005

The Mahatma Gandhi National Rural Employment Guarantee Act (MGNREGA)  or NREGA in short, is a transformative social security scheme aimed at alleviating rural poverty in India. As the world’s largest rural employment program, it guarantees 100 days of wage employment to enhance livelihood security. MGNREGA fosters women’s empowerment and social inclusion by mandating significant participation from women and marginalized communities.

Some key highlights of this act are:

* MGNREGA provides employment opportunities to millions of rural households. It has helped reduce unemployment and underemployment.

* By guaranteeing 100 days of wage employment, the scheme provides a safety net for vulnerable households. This income support contributes to poverty reduction.

* MGNREGA focuses on creating durable assets such as water conservation structures, roads, and afforestation.

* The act emphasizes women’s participation, aiming for at least one-third of the workforce to be women. 

* It promotes social equity by ensuring work opportunities for marginalized communities, including Scheduled Castes (SCs) and Scheduled Tribes (STs).

* The program also encourages eco-friendly works like afforestation, soil conservation, and water management, contributing to environmental sustainability.

This project delves into the analysis of data related to the National Rural Employment Guarantee Act (NREGA) through the application of data analytics techniques. It aims to gain valuable insights into the implementation and impact of this scheme across different states and districts in India.

## About the Internship:

* Organization: Mentorness
* Type: Remote
* Duration: 26/05/2024 to 26/06/2024
* Number of tasks: 3
  
## Problem Statement:

"NREGA is a vital initiative to alleviate rural unemployment and poverty. This project seeks to address several key questions and challenges associated with NREGA:

* How effective is NREGA in providing employment opportunities to rural households?
* Are there regional disparities in the implementation and outcomes of the scheme?
* What is the utilization of the allocated budget, and how does it correlate with employment generation?
* What are the key factors contributing to the completion of NREGA works, and are there any roadblocks to its success?
* Can data-driven insights guide policymakers and administrators in optimizing the scheme's impact?"

## Objective:

* Data preprocessing and cleaning to ensure data quality.
* Exploratory data analysis (EDA) to identify patterns, trends, and disparities in NREGA implementation.
* Utilizing data visualization techniques to present key findings effectively.
* Drawing actionable insights to inform policymakers and administrators about the strengths and weaknesses of the NREGA program.

## Deliverables: 

* Project Source Code: SQL file with queries
* [Dashboard]()
* [Presentation Report]()
* [Video Presentation]() explaining the approach towards dataset, problem statement, inferences drawn, final outcome and future scope.

## Tools Used:

* Microsoft Excel: For Data Cleaning and Transforming
* Microsoft SQL Server: For Data Analysis
* Power BI: For Data Visualization
* Canva: For creating Project Report
* GitHub: For Documentation

## Methodologies Used:

* Data Cleaning
* Data Analysis
* Data Visualization
* Presentation
* Documentation

## Key Metrics:

To understand the impacts of the MGNREGA scheme, the following metrics are particularly important:

- **Average Employment Days per Household**: This metric indicates the extent to which the scheme is providing sustained employment to rural households.

- **Workforce Participation**: The total number of active workers and their distribution across states reflect the scheme's reach and its role in providing employment opportunities.

- **Wage Rate**: The average wage rate per day per person is a direct measure of the income support provided to the rural poor.

- **Persondays of Central Liability**: This quantifies the employment provided and the financial commitment by the central government, highlighting the scheme's scale and economic impact.

- **SC/ST and Women Worker Participation**: The percentage of SC, ST, and women workers among the total active workers measures the inclusivity of the scheme and its impact on marginalized communities.

- **Total Expenditure**: The correlation between total expenditure and employment generation shows the effectiveness of resource allocation within the scheme.

- **Completion Rates**: The percentage of households completing the mandated 100 days of employment is a critical measure of the scheme's success in providing guaranteed employment.

These metrics collectively provide a comprehensive view of the scheme's performance, its socio-economic benefits, and areas that may require policy attention for improvement.

## Data Decription:

The dataset used for this analysis is sourced from official government records and contains information related to NREGA implementation across various states and districts in India. It contain 28 columns and 704 rows of data.

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

## Data Cleaning:

1. I created a copy of the original NREGA CSV file and saved it as an Excel workbook, after changing the data in CSV format to Tabular format using Text-to-Column tool.
2. Renamed a few column headers to give more comprehensive column names.
3. Using PROPER() function changed the State Name and District Name rows from Upper case to Proper Case.
4. Changed the format of numerical columns into Number format.
5. Changed 'Dn Haveli And Dd' to 'Dadra and Nagar Haveli and Daman and Diu'.
6. Checked for duplicates entries. There was none. 
7. Loaded the data into Microsoft SQL Server for data analysis.

## Data Exploration:

Due to the complexity of the data and a large number of columns involved I divided the project into 5 segments focusing on 5 key areas of the MGNREGA Scheme. I used SQL to find quantitative answers to the questions addressing each of these segments. I have described the SQL codes in this [article](https://medium.com/@arpita_deb/mgnrega-data-analysis-with-sql-1bff77206b83) that generate the results of my analysis.

The 5 Sections of the analysis and their corresponding questions are provided below-

1. **Comprehensive Employment Analysis**:
   - Count the number of states and districts in the dataset.
   - Determine the total number of job cards issued per state and identify the top 5 states.
   - Calculate the count of active job cards per state and find the top 5 states.
   - Compute the average wage rate per day per person.
   - Identify the state with the highest and lowest average wage rate.
   - Determine which states have the highest and lowest workforce participation.

2. **Household and Individual Participation**:
   - Find the total number of households participating in MGNREGA.
   - Explore the distribution of households across different states.
   - Calculate the total number of individuals participating in MGNREGA and analyze regional variations.
   - Compute the average number of days worked per household.
   - Identify the top 10 states with the highest and lowest average days of employment per household.
   - Determine the percentage of households completing the mandated 100 days of employment and explore variations across states.

3. **Social Inclusion and Equity**:
   - Summarize statistics for the top 10 states with the highest number of SC (Scheduled Caste) workers.
   - Summarize statistics for the top 10 states with the highest number of ST (Scheduled Tribe) workers.
   - Find the top 5 and bottom 5 states with the highest percentage of SC workers among active workers.
   - Find the top 5 and bottom 5 states with the highest percentage of ST workers among active workers.
   - Calculate average person-days for SC, ST, and women workers.
   - Identify the top 10 states with the highest average person-days for SC, ST, and women workers.

4. **Work Completion Rates**:
   - Break down the total works into ongoing and completed works, along with their percentage of total works.
   - Determine the top 5 and bottom 5 states based on completion rates.

5. **Budget and Resource Allocation**:
   - Calculate the total approved budget for each state.
   - Determine the overall expenditure across different categories, including wages, materials, and administrative costs.
   - Provide a breakdown of expenditures (wages, materials, administrative costs) for each state.

This set of questions aims to provide a holistic view of the NREGA program's performance, challenges, and opportunities for improvement. It encompasses various aspects of the program, from employment generation and budget utilization to social inclusion and asset quality. Analyzing the data in response to these questions can help in formulating strategies for enhancing the program's impact.

## Summary of the Result:

### 1. Comprehensive Employment Analysis:


- **Average Wage Rate:**
  - The wage rate is a direct measure of income support provided to the rural poor. The average wage rate per day per person stands at **₹276.05**. 
  - The minimum wage rate ranges from 0 in Dadra and Nagar Haveli and Daman and Diu, Manipur and West Bengal to ₹335.52 in Kerala. The maximum wage rate ranges from ₹206.86 in Tripura to ₹4729.36 in Manipur.

- **Workforce Participation:**
  - There are total **175,479,159** Active workers in India. A statewise participation reveals that about 10.5% workers are from **West Bengal**, 10.33% from **Rajasthan**, 9.48% from **Uttar Pradesh**, while the lowest number of workers are from **Goa** (0.01%), **Lakshadweep** and **Dadra and Nagar Haveli and Daman and Diu** (both about 0%).
  - A districtwise breakdown of active workers reveals that the **Dadra and Nagar Haveli** in Dadra and Nagar Haveli and Daman and Diu has the lowest number of active workers (2) while **24 Parganas (South)** in West Bengal has the highest number of active workers (1728854).
  - In case of Uttar Pradesh, the range of the number of active workers is between 54 (Ghaziabad) (which is disproportionately low compared to other states) to 626217 (Sitapur).
  - The **Persondays of Central Liability** metric is pivotal as it quantifies the employment provided and the financial commitment by the central government. Tamil Nadu leads with **240 million persondays**, followed by Andhra Pradesh (**198 million**) and Uttar Pradesh (**186 million**), reflecting robust program implementation and high workforce engagement. Conversely, Goa (**27,861**), Lakshadweep (**1,816**), and Dadra and Nagar Haveli and Daman and Diu (**13**) report minimal figures, indicating low engagement or smaller workforce populations.



### 2. Household and Individual Participation:
- **Household Participation Distribution:**
  - States like **Tamil Nadu, Uttar Pradesh, Rajasthan, Andhra Pradesh, and Bihar** see the highest household participation, which could be due to higher rural populations or more effective program implementation. Conversely, regions like West Bengal and the Union Territories report the lowest, which may require investigation into program outreach and accessibility.

- **Regional Variation in Individual Participation:**
  - The stark contrast between Tamil Nadu's **7 million individuals** and the mere **2 individuals** in Dadra and Nagar Haveli and Daman and Diu underscores the regional disparities in program uptake, possibly due to differences in population, awareness, and local governance.

- **Average Days Worked per Household:**
  - The average of **31 days** worked per household, with Andhra Pradesh (**45 days**), Mizoram (**38 days**), and Tamil Nadu (**38 days**) at the higher end, and Manipur (**8 days**), West Bengal (**11 days**), and Dadra and Nagar Haveli (**13 days**) at the lower end, serves as a barometer for the reach and impact of MGNREGA at the household level.

- **Household Completion Percentage:**
  - Only **0.92%** of the total households involved in the scheme completed the mandated **100 days** of employment. This low completion rate suggests the need for policy review to ensure the program's promise of providing 100 days of employment is fulfilled more broadly.

- **Geographical Variation in Completion Rates:**
  - Odisha (**3.3%**), Maharashtra (**3.26%**), and Andhra Pradesh (**2.76%**) lead in the percentage of households completing 100 days of wage employment. In contrast, several regions, including Dadra and Nagar Haveli and Daman and Diu, Goa, and West Bengal, have districts with no households achieving this milestone, indicating significant regional disparities.

- **Factors Influencing Completion:**
  - Factors such as the type of work, location, wage rates, availability of workers, budget, and the number of individuals worked are associated with the successful completion of NREGA works. Understanding these factors can help improve completion rates and the overall effectiveness of the program.


### 3. Social Inclusion and Equity:

- **Employment Opportunities for Marginalized Communities:**
  - NREGA's inclusivity is evident with **35 million SC workers** and **28 million ST workers** nationwide. West Bengal (**15.03%** of SC workers) and Madhya Pradesh (**15.37%** of ST workers) lead their respective categories.
  - The proportion of SC and ST workers to total active workers—**20.02%** and **16.47%**, respectively—highlights the scheme's role in providing employment to historically disadvantaged groups.

- **Statewise Active Worker Representation:**
  - Punjab's remarkable **71.45%** SC representation among active workers contrasts with regions like Andaman and Nicobar, where there are no SC workers, reflecting the diversity in demographic composition and the scheme's penetration across different states.
  - In case of ST workers, **Ladakh** has the highest representation of this category among active workers with **100%**, followed by Lakshadweep (99.38%), Mizoram (99.11%), Nagaland (98.54%), Arunachal Pradesh	(93.71%) and Meghalaya(91.65%). Dadra and Nagar Haveli and Daman and Diu and Haryana have no ST workers thus have 0% representation among the active workers.

- **Persondays by Community:**
  - The average persondays for SC workers is **434,057 days**, with Tamil Nadu contributing the most (**1,814,200 days**). For ST workers, the average is **378,325 days**, with Rajasthan leading (**1,531,360 days**). These figures underscore the scheme's impact on providing employment to SC and ST communities.

- **Contribution by Worker Category:**
  - The total persondays of central liability amount to **1,652,954,474 days**, with significant contributions from SC workers (**19.43%**), ST workers (**16.94%**), and women workers (**59.21%**). These statistics are essential for assessing the scheme's reach among marginalized communities and gender inclusion.

However, the percentages by these categories do not add up to 100. Here's why:
1. SC, ST, and women are not mutually exclusive categories. A person can be both SC/ST and a woman. Therefore, the persondays worked by SC, ST, and women can overlap.

2. The total percentage will also not add up to 100% because these categories (SC, ST, women) do not represent all possible demographics. There could be other groups not specifically categorized as SC, ST, or women (such as general category males) who also contribute persondays of work.

3. The percentages reflect the proportion of persondays contributed by each group relative to the total persondays for which the central government is liable. They do not indicate the proportion of the total population or workforce that each group represents.


### 4. Work Completion Rates:

- **Total Work taken Breakdown**
  - The total number of projects undertaken (including both new initiatives and carry-over tasks) was approximately 16.7 million in total. Among these, 13.05 million projects, accounting for 77.87%, were still in progress, while the remaining 22.13% (equivalent to 3.71 million projects) had been completed.

- **State-wise Total Work taken Breakdown**
  - Ladakh led the completion rate, with 56.3% of its total projects finished. Tamil Nadu followed closely with 54.8% completed works, and Mizoram achieved 51.9%. Naturally, these regions had the fewest ongoing projects. Conversely, Dadra and Nagar Haveli had nearly 0% completed projects, followed by Manipur (0.4%) and West Bengal (1.3%). These areas also had the highest number of ongoing projects.


### 5. Budget and Resource Allocation:
- **Correlation with Employment Generation:**
  - The **total expenditure** is positively correlated with employment generation, indicating that higher spending is associated with increased labor budget, persondays, household and individual participation as well as participation of SC, women, and differently-abled persons. This correlation underscores the importance of adequate funding in achieving the program's objectives.

- **Expenditure Breakdown:**
  - The **total expenditure** is allocated as follows: **73.44%** for wages, **24.49%** for materials and skilled wages, and **2.07%** for administrative costs.

- **Statewise Expenditure:**
  - Tamil Nadu has the highest expenditure (**727,295 Lakhs**), while Lakshadweep has the lowest (**6.25 Lakhs**).
  - Andaman And Nicobar (96.32%), Puducherry (95.9%), Kerala (93.46%), Rajasthan (92.77) and Assam (91.53%) spent maximum of their total expenditure on wages, while Himachal Pradesh (51.19%), Meghalaya (44.69%) and West Bengal (6.27%) spent least on wages.
  - Meghalaya, Ladakh and Goa were the top 3 states to spend their expenditure into materials and skills wages who spent 52.98%, 44.82% and 44.09% respectively in this category. Conversely, Andaman And Nicobar (2.61%), Puducherry (2.23%) and West Bengal(0%) were the lowest.
  - West Bengal spent its 93.73% of the total expenditure into administrative expenditure, leaving it to be the only state to spend more than 5% of its total expenditure into this category.
Conversely Lakshadweep, Assam and Punjab spend none into this category.


## Recommendations: 

1. **Increase Employment Days**: Aim to increase the average employment days per household closer to the 100-day mandate to ensure sustained income support.

2. **Improve Wage Disbursement**: Streamline the wage payment process to reduce delays and ensure timely payment, which could increase workforce participation and satisfaction.

3. **Enhance Quality of Work**: Implement measures to improve the quality of work under the scheme, including better work conditions and more skilled work options to retain workers and increase productivity.

4. **Targeted Approach for Low Participation States**: Develop targeted strategies for states with low participation rates, focusing on awareness campaigns, accessibility improvements, and addressing local barriers.

5. **Expand Skill Development**: Integrate skill development programs within MGNREGA to provide workers with opportunities for skill enhancement, leading to better employment prospects outside the scheme.

6. **Monitor and Evaluate**: Establish robust monitoring and evaluation mechanisms to assess the scheme's performance regularly, identify areas for improvement, and ensure accountability.

7. **Address deeper issues:** One can further address the following issues:
   - What are the disparities in employment opportunities based on social identity, and how can they be addressed?
   - Are there significant variations in 100 days employement completion rates between different demographic groups (e.g., SC/ST households versus general category households)?
   - What are the primary reasons cited by households for not completing the 100 days of employment requirement?
   - What are the common roadblocks to project completion, and how can they be mitigated?

These recommendations aim to strengthen the MGNREGA scheme's capacity to provide meaningful employment, enhance socio-economic conditions, and ensure inclusive growth for rural communities.

## Limitations of the Project:

1. **Temporal Dynamics**: The analysis does not account for how metrics have changed over time. Including trends and seasonal variations could provide insights into the scheme's performance across different time periods. Moreover, there were no data on Women workforce which has a large contribution in these Scheme. 

2. **Quality of Employment**: While the number of days and persondays are quantified, the quality of employment, including work conditions and satisfaction levels, is not addressed. Future studies could explore these qualitative aspects.

3. **Post-MGNREGA Employment**: There is no information on the long-term employment status of individuals after their engagement with the scheme. Studies could investigate whether the scheme leads to sustainable employment opportunities.

4. **Comparative Analysis**: The summary lacks a comparative analysis with other employment schemes or states without MGNREGA. Such comparisons could highlight the unique impacts of MGNREGA.

5. **Geographical Barriers**: The analysis does not delve into geographical barriers that might affect participation and completion rates, such as accessibility to work sites or migration patterns.

## Future Ideas:

1. **Longitudinal Impact Study**:
   - **Objective**: To assess the long-term economic and social impacts of MGNREGA on households.
   - **Data Points**: Household income, employment patterns, and social indicators before, during, and after participation in the scheme.
   - **Analysis**: Use time-series data to evaluate changes in economic stability, track shifts in employment sectors, and measure improvements in quality of life.

2. **Comparative Policy Analysis**:
   - **Objective**: To compare the outcomes of MGNREGA with other similar rural employment schemes.
   - **Data Points**: Employment days, wage rates, and completion rates from MGNREGA and other schemes.
   - **Analysis**: Perform a cross-sectional study to identify strengths and weaknesses of each scheme, and provide insights into best practices for rural employment programs.

3. **Geo-Spatial Analysis of Work Sites**:
   - **Objective**: To understand the geographical distribution of work sites and their accessibility.
   - **Data Points**: Locations of work sites, distance from villages, transportation availability, and regional topography.
   - **Analysis**: Employ GIS mapping to visualize site distribution, identify areas with low accessibility, and suggest locations for new work sites to optimize reach.

## References:

* [Mahatma Gandhi National Rural Employment Guarantee Act, 2005 - Wikipedia](https://en.wikipedia.org/wiki/Mahatma_Gandhi_National_Rural_Employment_Guarantee_Act,_2005)
* [Mahatma Gandhi National Rural Employment Guarantee Scheme - Official Site](https://nrega.nic.in/MGNREGA_new/home_nrega_new.aspx)
* [An evaluation of India’s National Rural Employment Guarantee Act - World Bank](https://www.worldbank.org/en/programs/sief-trust-fund/brief/an-evaluation-of-indias-national-rural-employment-guarantee-act)
* [The Mahatma Gandhi National Rural Employment Guarantee Scheme: A Policy Solution to Rural Poverty in India?](https://onlinelibrary.wiley.com/doi/full/10.1111/dpr.12220)
* [MGNREGA : Bridging Gaps in Rural India - Dataset from Kaggle](https://www.kaggle.com/datasets/jayesh134/mgnrega-bridging-gaps-in-rural-india)
* [Indian States Shape Map TopoJson File](https://github.com/virengajera/data-covid19india/blob/main/mapdata/india.json)
* [Power BI Shape Maps - Youtube Tutorial](https://youtu.be/bwtVFfYl4Tc?si=fbSnberfNVGu_Rdt)

## Appendix:

* [Power BI Dashboard](https://drive.google.com/file/d/1DMGkVY3RVBzQ2uZMKMOgVbWhXrDZrY_k/view?usp=sharing)
* [MGNREGA Data Analysis with SQL - Medium Article](https://medium.com/@arpita_deb/mgnrega-data-analysis-with-sql-1bff77206b83)
* [MGNREGA Analysis Report Presentation](https://drive.google.com/file/d/1cFlZ-WgGdo-7SByoHrkqcD8JilsmVUSk/view?usp=sharing)
* [MGNREGA Analysis Video Presentation](https://drive.google.com/file/d/1MZDiKtzJAkcqnJSkd79_cPWOqGrfUL0T/view?usp=sharing)

