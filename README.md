# NREGA-Data-Analysis

## Introduction:

This project delves into the analysis of data related to the National Rural Employment Guarantee Act (NREGA), a transformative government scheme aimed at providing rural households with guaranteed wage employment opportunities. 

The dataset used for this analysis encompasses a wide range of parameters, including the number of job cards issued, the workforce engaged, budget allocation, work completion statistics, and much more. Through the application of data analytics techniques, we aim to gain valuable insights into the implementation and impact of NREGA across different states and districts in India.

## Mahatma Gandhi National Rural Employment Guarantee Act, 2005

The Mahatma Gandhi National Rural Employment Guarantee Act (MGNREGA) is a transformative social security scheme aimed at alleviating rural poverty in India. As the world’s largest rural employment program, it guarantees 100 days of wage employment to enhance livelihood security. MGNREGA fosters women’s empowerment and social inclusion by mandating significant participation from women and marginalized communities.

Some key highlights of this act are:

* **Employment Generation**: MGNREGA provides employment opportunities to millions of rural households. It has helped reduce unemployment and underemployment.

* **Income Support**: By guaranteeing 100 days of wage employment, the scheme provides a safety net for vulnerable households. This income support contributes to poverty reduction.

* **Asset Creation**: MGNREGA focuses on creating durable assets such as water conservation structures, roads, and afforestation.

* **Women’s Empowerment**: The act emphasizes women’s participation, aiming for at least one-third of the workforce to be women. 

* **Social Inclusion**: MGNREGA promotes social equity by ensuring work opportunities for marginalized communities, including Scheduled Castes (SCs) and Scheduled Tribes (STs).

* **Environmental Benefits**: The program encourages eco-friendly works like afforestation, soil conservation, and water management, contributing to environmental sustainability.

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
* Power BI: For Data Visualization and Dashboard
* Canva: For creating Project Report
* GitHub: Documenting the result

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

## Data Cleaning:

1. I created a copy of the original NREGA dataset in Excel and saved it as an Excel File, after changing the data in CSV format to Tabular format using Text-to-Column tool.
2. Renamed a few column header to give more comprehensive column names.
3. Using Proper() function changed the State Name and District Name rows from Upper case to Proper Case.
4. Changed the format of numerical columns into Number format.
5. Changed 'Dn Haveli And Dd' to 'Dadra and Nagar Haveli and Daman and Diu'. 
6. Loaded the data into Microsoft SQL Server for data analysis.

## Data Exploration:

This set of questions aims to provide a holistic view of the NREGA program's performance, challenges, and opportunities for improvement. It encompasses various aspects of the program, from employment generation and budget utilization to social inclusion and asset quality. Analyzing the data in response to these questions can help in formulating strategies for enhancing the program's impact.

**1. Comprehensive Employment Analysis:**
   - What is the **average number of employment days** provided per household under NREGA annually?
   - How does the **distribution of employment days** vary across households within and between regions?
   - What are the **trends in workforce engagement** under NREGA over the years, and are there **seasonal patterns** in employment demand?

- What is the average number of employment days provided per household under NREGAA?
- How does the distribution of employment days vary across households within and between regions?

Andhra Pradesh has the highest average employment days (45), followed by Mizoram (38), Tamil Nadu (38). While Manipur(8), West Bengal (11) and  Dadra and Nagar Haveli and Daman and Diu (13) were the lowest.

- What are the top 10 states with highest and lowest average days of employment per household?

- What is the average wage rate per day per person?
₹ 276.05. 

The minimum wage rate ranges from minimum 0 in Dadra and Nagar Haveli and Daman and Diu, Manipur,West Bengal to 335.52 in Kerala.

The maximum wage rate ranges from 206.86 in Tripura to 4729.36 in Manipur.

- Which regions or states have the highest and lowest workforce participation, and what factors contribute to these differences?

There are total 175,479,159 Active workers in India. A statewise participation reveals that about 10.5% workers are from West Bengal, 10.33% from Rajasthan, 9.48% from Uttar Pradesh, while the lowest number of workers are from Goa (0.01%) and Lakshadweep and Dadra and Nagar Haveli and Daman and Diu (both about 0%).

The minimum number of active workers reveals that the Dadra and Nagar Haveli in Dadra and Nagar Haveli and Daman and Diu has the lowest number of active workers (2) while 24 Parganas (South) has the highest number of active workers (1728854).

In case of Uttar Pradesh, the range of the number of active workers is between 54 (Ghaziabad) (which is disproportionately low compared to other states) to 626217(Sitapur).

**2. Persondays:**
   - Which regions or states have the **highest and lowest workforce participation**, and what factors contribute to these differences?

PERSONDAYS OF CENTRAL LIABILITY SO FAR - refers to the cumulative number of persondays of employment generated under the scheme up to a certain point in time.

CENTRAL LIABILITY refers to the total financial commitment or obligation of central government towards funding employment generation under MGNREGA.

Under this scheme the total persondays of central liability has been 1,652,954,474 days. Among them 19.43% contributed SC workers, 16.94% ST and 59.21% women workers.

by states, tamilnadu contributed highest persondays (240 million) , followed by andhraprasesh(198 million) and uttar pradesh(186 million). Goa (27861), Lakshadweep(1816) and Dadra and Nagar Haveli and Daman and Diu	(13) were among the least.


**3. Budget and Resource Allocation:**
   - How does the **total expenditure** correlate with employment generation?

The correlation chart reveals that high expenditure is possitively correlated with high labour budget and persondays, high SC and Women Persondays, high households, and individuals and differently abled persons worked.

   - What is the **total expenditure** across different categories (wages, materials, administrative costs)?
The total expenditure is spent 73.44% in wages, 24.49% in materials and skilled wages and 2.07% in administrative expenditure.

A statewise break down shows -
highest expenditure in tamil nadu (727295 Lakhs) and lowest in Lakshadweep (6.25 Laks).

Andaman And Nicobar (96.32%), Puducherry(95.9%), Kerala(93.46%), Rajasthan (92.77) and Assam(91.53%) were the top 5 countries with highest % of total expenditure spent on wages.
Himachal Pradesh (51.19%), meghalaya (44.69%) and west bengal(6.27%) were the lowest to spend in wages.

Meghalaya, ladakh and goa were the top 3 states to spend their expenditure into materials and skills wages who spent 52.98%, 44.82 and 44.09% respectively.
Andaman And Nicobar (2.61),Puducherry(2.23) and West Bengal(0) were the lowest to spent in materials and skills wages.

West bengal spent its 93.73% of the total expenditure into administrative expenditure, leaving it to be the only state to spend more than 5% of it expenditure into this category.
Conversely Lakshadweep,Assam and Punjab spend none into this category.   
   
   - Are there discrepancies between **budget allocation and actual work completion**?


**5. Social Inclusion and Equity:**
   - How inclusive is NREGA in providing employment opportunities to **marginalized communities**?

     There are 35 million sc workers, and 28million st workers in overall India.

15.03% of the total SC Workers come from West Bengal, 14.61% from Uttar Pradesh, 10.9% from Rajasthan, 9.4% from tamil nadu and 7.25 from andhra pradesh.

In case of ST Workers, 15.37% comes from Madhya Pradesh, 12.98% from Rajasthan,  8.59% from Odisha, 8.48% from Chattisgarh and 6.32% from maharashtra.

The SC and ST workers comprise 20.02% and 16.47 % of the total active workers respectively.

When compared to the active workers per state, Punjab stands out with 71.45% of the active workers being from SC.
Next comes Haryana with 48.78%, Uttar Pradesh with 30.85%, Puducherry with 30.05% and Tamil Nadu with 29.99%.

Andaman And Nicobar, Dadra and Nagar Haveli and Daman and Diu, Nagaland, Ladakh, Lakshadweep have no SC workers thus have 0% representation among the active workers as well as 0 SC Person days.

In case of ST workers, Ladakh has the highest representation of ST Workers among active workers with 100%, followed by Lakshadweep(99.38%), Mizoram (99.11%), Nagaland	(98.54%), Arunachal Pradesh	(93.71%) and Meghalaya(91.65%)

Dadra and Nagar Haveli and Daman and Diu and Haryana  have no ST workers thus have 0% representation among the active workers as well as 0 SC Person days.. 

The SCs have an avg persondays of 434057 days, ranging between Tamilnadu (1814200) and Punjab (244).

The STs have an avg persondays of 378325 days, ranging between Rajasthan(1531360) and Goa (38).

   - What are the disparities in employment opportunities based on **social identity**, and how can they be addressed?

### Household and Individual Participation:

1. **What is the distribution of households participating in MGNREGA across different regions/states?
 
Tamil Nadu, Uttar pradesh, rajasthan, Andhra pradesh and Bihar are on the top in terms of total households worked under the scheme.

West Bengal, Andaman And Nicobar, Goa, Lakshadweep and Dadra and Nagar Haveli and Daman and Diu are the lowest.

2. **How does the number of individuals participating in MGNREGA vary regionally?

the number of individuals participating in MGNREGA vary between 7 million individuals in Tamil Nadu to 2 individuals in Dadra and Nagar Haveli and Daman and Diu.

Andhra Pradesh, Rajasthan, Uttar Pradesh boasts more than 6 million individuals.

3. **What is the average number of days worked per household under MGNREGA?

the average number of days worked per household is 31 days. with highest avg days in Andhra Pradesh(45), Mizoram (38), Tamil Nadu (38) and lowest being in Manipur(8), West bengal(11) and Dadra and Nagar Haveli (13).

### Completion Rates:

1. **What percentage of households complete the mandated 100 days of employment under MGNREGA?
out of 46 million households involved in this scheme only 427,534 households completed the 100 days employment which comprises only 0.92% of the total households. 

4. **How do completion rates vary across different geographical regions or administrative units?

by the %of households who completed 100 days of wage employment out of total households Odisha(3.3%), Maharashtra(3.26%), Andhra Pradesh(2.76%), Tripura(1.37%) and Chattisgarh(1.2%) came on top.

Dadra and Nagar Haveli and Daman and Diu,Goa,Lakshadweep,Puducherry, Mizoram, Manipur, West Bengal have no household which completed 100 days of wage employment. They have 1, 2, 1, 16, 11, 2 and 23 districts respectively with 0 households with 100 days of completion.

2. **Are there significant variations in completion rates between different demographic groups (e.g., SC/ST households versus general category households)?

3. **What are the primary reasons cited by households for not completing the 100 days of employment requirement?
4. What factors (e.g., work type, location, wage rates) are associated with the **successful completion** of NREGA works?

   Some potential factors for NREGA work completion can be number of workers available,budget, household worked, individuals worked, work taken up etc.
   
   
   - What are the common **roadblocks** to project completion, and how can they be mitigated?

## Summary of the Result:

### 1. Comprehensive Employment Analysis:
- **Average Employment Days per Household:**
  - The average number of employment days provided per household under NREGA is **31 days**. This metric is crucial as it reflects the effectiveness of the program in providing sustained employment to rural households.

- **Distribution of Employment Days:**
  - The distribution of employment days varies significantly across regions. Andhra Pradesh leads with an average of **45 days**, indicative of higher program engagement or need. In contrast, Manipur (**8 days**), West Bengal (**11 days**), and Dadra and Nagar Haveli and Daman and Diu (**13 days**) report the lowest, suggesting potential underutilization or lack of demand.

- **Top and Bottom States by Employment Days:**
  - The analysis of the top 10 states with the highest and lowest average days of employment per household can highlight regional disparities and inform targeted policy interventions.

- **Average Wage Rate:**
  - The average wage rate per day per person stands at **₹276.05**. The wage rate is a direct measure of income support provided to the rural poor and varies from **₹0** in some regions to **₹335.52** in Kerala, reflecting the diversity in local wage standards.

- **Workforce Participation:**
  - With **175,479,159 active workers** in India, workforce participation rates like West Bengal's **10.5%** and Rajasthan's **10.33%** contrast starkly with Goa's **0.01%**. These figures are indicative of the labor force's reliance on MGNREGA for employment, influenced by factors such as local economic conditions and availability of alternative employment opportunities.



### 2. Household and Individual Participation:
- **Household Participation Distribution:**
  - States like Tamil Nadu, Uttar Pradesh, Rajasthan, Andhra Pradesh, and Bihar see the highest household participation, which could be due to higher rural populations or more effective program implementation. Conversely, regions like West Bengal and the Union Territories report the lowest, which may require investigation into program outreach and accessibility.

- **Regional Variation in Individual Participation:**
  - The stark contrast between Tamil Nadu's **7 million individuals** and the mere **2 individuals** in Dadra and Nagar Haveli and Daman and Diu underscores the regional disparities in program uptake, possibly due to differences in population, awareness, and local governance.

- **Average Days Worked per Household:**
  - The average of **31 days** worked per household, with Andhra Pradesh (**45 days**), Mizoram (**38 days**), and Tamil Nadu (**38 days**) at the higher end, and Manipur (**8 days**), West Bengal (**11 days**), and Dadra and Nagar Haveli (**13 days**) at the lower end, serves as a barometer for the reach and impact of MGNREGA at the household level.



### 3. Persondays:
- **Workforce Participation:**
  - The **Persondays of Central Liability** metric is pivotal as it quantifies the employment provided and the financial commitment by the central government. Tamil Nadu leads with **240 million persondays**, followed by Andhra Pradesh (**198 million**) and Uttar Pradesh (**186 million**), reflecting robust program implementation and high workforce engagement. Conversely, Goa (**27,861**), Lakshadweep (**1,816**), and Dadra and Nagar Haveli and Daman and Diu (**13**) report minimal figures, indicating low engagement or smaller workforce populations.

- **Contribution by Worker Category:**
  - The total persondays of central liability amount to **1,652,954,474 days**, with significant contributions from SC workers (**19.43%**), ST workers (**16.94%**), and women workers (**59.21%**). These statistics are essential for assessing the scheme's reach among marginalized communities and gender inclusion.

However, the percentages by these categories do not add up to 100. Here's why:
1. **Overlapping Categories**: SC, ST, and women are not mutually exclusive categories. A person can be both SC/ST and a woman. Therefore, the persondays worked by SC, ST, and women can overlap. For example, a woman could be both SC and ST, contributing persondays to both categories.

2. **Contribution of Other Categories**: The total percentage will also not add up to 100% because these categories (SC, ST, women) do not represent all possible demographics. There could be other groups not specifically categorized as SC, ST, or women (such as general category males) who also contribute persondays of work.

3. **Participation Rates**: The percentages reflect the proportion of persondays contributed by each group relative to the total persondays for which the central government is liable. They do not indicate the proportion of the total population or workforce that each group represents.


### 4. Social Inclusion and Equity:
- **Employment Opportunities for Marginalized Communities:**
  - NREGA's inclusivity is evident with **35 million SC workers** and **28 million ST workers** nationwide. West Bengal (**15.03%** of SC workers) and Madhya Pradesh (**15.37%** of ST workers) lead their respective categories. The proportion of SC and ST workers to total active workers—**20.02%** and **16.47%**, respectively—highlights the scheme's role in providing employment to historically disadvantaged groups.

- **Statewise Active Worker Representation:**
  - Punjab's remarkable **71.45%** SC representation among active workers contrasts with regions like Andaman and Nicobar, where there are no SC workers, reflecting the diversity in demographic composition and the scheme's penetration across different states.

- **Persondays by Community:**
  - The average persondays for SC workers is **434,057 days**, with Tamil Nadu contributing the most (**1,814,200 days**). For ST workers, the average is **378,325 days**, with Rajasthan leading (**1,531,360 days**). These figures underscore the scheme's impact on providing employment to SC and ST communities.



### 5. Budget and Resource Allocation:
- **Correlation with Employment Generation:**
  - The **total expenditure** is positively correlated with employment generation, indicating that higher spending is associated with increased labor budget, persondays, and participation of SC, women, and differently-abled persons. This correlation underscores the importance of adequate funding in achieving the program's objectives.

- **Expenditure Breakdown:**
  - The **total expenditure** is allocated as follows: **73.44%** for wages, **24.49%** for materials and skilled wages, and **2.07%** for administrative costs. This breakdown highlights the scheme's focus on wage provision to support rural livelihoods.

- **Statewise Expenditure:**
  - Tamil Nadu has the highest expenditure (**727,295 Lakhs**), while Lakshadweep has the lowest (**6.25 Lakhs**). The percentage of total expenditure spent on wages is highest in Andaman and Nicobar (**96.32%**) and lowest in West Bengal (**6.27%**), reflecting regional priorities and cost structures.

### 6. Completion Rates:
- **Household Completion Percentage:**
  - Only **0.92%** of the total households involved in the scheme completed the mandated **100 days** of employment. This low completion rate suggests the need for policy review to ensure the program's promise of providing 100 days of employment is fulfilled more broadly.

- **Geographical Variation in Completion Rates:**
  - Odisha (**3.3%**), Maharashtra (**3.26%**), and Andhra Pradesh (**2.76%**) lead in the percentage of households completing 100 days of wage employment. In contrast, several regions, including Dadra and Nagar Haveli and Daman and Diu, Goa, and West Bengal, have districts with no households achieving this milestone, indicating significant regional disparities.

- **Factors Influencing Completion:**
  - Factors such as the type of work, location, wage rates, availability of workers, budget, and the number of individuals worked are associated with the successful completion of NREGA works. Understanding these factors can help improve completion rates and the overall effectiveness of the program.


## Dashboard:

A dashboard will show state wise distribution of works, categories of workers (pie), avg working days, avg wage, expenditure breakdown (pie), a map of india with states.

## Recommendations: 
1. **Increase Employment Days**: Aim to increase the average employment days per household closer to the 100-day mandate to ensure sustained income support.

2. **Improve Wage Disbursement**: Streamline the wage payment process to reduce delays and ensure timely payment, which could increase workforce participation and satisfaction.

3. **Enhance Quality of Work**: Implement measures to improve the quality of work under the scheme, including better work conditions and more skilled work options to retain workers and increase productivity.

4. **Targeted Approach for Low Participation States**: Develop targeted strategies for states with low participation rates, focusing on awareness campaigns, accessibility improvements, and addressing local barriers.

5. **Expand Skill Development**: Integrate skill development programs within MGNREGA to provide workers with opportunities for skill enhancement, leading to better employment prospects outside the scheme.

6. **Monitor and Evaluate**: Establish robust monitoring and evaluation mechanisms to assess the scheme's performance regularly, identify areas for improvement, and ensure accountability.

These recommendations aim to strengthen the MGNREGA scheme's capacity to provide meaningful employment, enhance socio-economic conditions, and ensure inclusive growth for rural communities.

## Limitations of the Project:
- **Temporal Dynamics**: The analysis does not account for how metrics have changed over time. Including trends and seasonal variations could provide insights into the scheme's performance across different time periods.

- **Quality of Employment**: While the number of days and persondays are quantified, the quality of employment, including work conditions and satisfaction levels, is not addressed. Future studies could explore these qualitative aspects.

- **Economic Impact**: The direct economic impact on households, such as changes in household income and expenditure patterns, is not covered. Analyzing this could help understand the scheme's effectiveness in alleviating poverty.

- **Post-MGNREGA Employment**: There is no information on the long-term employment status of individuals after their engagement with the scheme. Studies could investigate whether the scheme leads to sustainable employment opportunities.

- **Comparative Analysis**: The summary lacks a comparative analysis with other employment schemes or states without MGNREGA. Such comparisons could highlight the unique impacts of MGNREGA.

- **Geographical Barriers**: The analysis does not delve into geographical barriers that might affect participation and completion rates, such as accessibility to work sites or migration patterns.

- **Administrative Efficiency**: Metrics related to the administrative efficiency of the scheme, like the time taken to disburse wages or resolve grievances, are not included but could be crucial for policy improvements.

- **Environmental Impact**: The environmental outcomes of the works completed under MGNREGA, such as afforestation or water conservation efforts, are not considered. Future studies could assess the environmental benefits.

- **Social Dynamics**: The analysis does not explore social dynamics, such as community participation, social cohesion, or any potential discrimination within the scheme.

- **Policy and Governance**: An examination of policy implementation and governance structures at the local level could provide insights into the variability in the scheme's success across different regions.

Addressing these limitations in future studies could provide a more holistic understanding of the MGNREGA scheme's impacts and areas for policy refinement.

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

These ideas aim to deepen the understanding of the scheme's effectiveness, provide comparative insights, and enhance the strategic planning for future implementations.

## References:

* [Mahatma Gandhi National Rural Employment Guarantee Act, 2005](https://en.wikipedia.org/wiki/Mahatma_Gandhi_National_Rural_Employment_Guarantee_Act,_2005)
* [MAHATMA GANDHI NATIONAL RURAL EMPLOYMENT GUARANTEE SCHEME](https://nrega.nic.in/MGNREGA_new/home_nrega_new.aspx)
* [An evaluation of India’s National Rural Employment Guarantee Act](https://www.worldbank.org/en/programs/sief-trust-fund/brief/an-evaluation-of-indias-national-rural-employment-guarantee-act)
* [The Mahatma Gandhi National Rural Employment Guarantee Scheme: A Policy Solution to Rural Poverty in India?](https://onlinelibrary.wiley.com/doi/full/10.1111/dpr.12220)
* [MGNREGA : Bridging Gaps in Rural India Dataset from Kaggle](https://www.kaggle.com/datasets/jayesh134/mgnrega-bridging-gaps-in-rural-india)

## Appendix:

* [Power BI Dashboard](https://drive.google.com/file/d/1DMGkVY3RVBzQ2uZMKMOgVbWhXrDZrY_k/view?usp=sharing)
* [Epidemic Analytics Report Presentation](https://drive.google.com/file/d/1dj6pw7DB12NxdxLj5S5rj4aSoidRIbqo/view?usp=sharing)
* [Epidemic Analytics Video Presentation](https://drive.google.com/file/d/168YmV5N0FQdJ4fFSavlFkxsYX7K1ynMo/view?usp=sharing)

