	---------------------------------------------------------------------------
	/*

	Project Name: NREGA Data Analysis
	Internship Organization: Mentorness
	By: Arpita Deb
	Dated: June,2024
	About:  This file contains SQL codes for the analysis phase to understand the effectiveness of NREGA Act by Indian Government. 

	*/
	----------------------------------------------------------------------------

	-- Initiating the database
	USE [MGNREGA Database];


	-- Renaming some columns
	EXEC sp_rename 'NREGA Dataset.Total No# of Job Cards issued', 'Total No of Job Cards issued', 'COLUMN';
	EXEC sp_rename 'NREGA Dataset.Total No# of Workers', 'Total No of Workers', 'COLUMN';
	EXEC sp_rename 'NREGA Dataset.Total No# of Active Job Cards', 'Total No of Active Job Cards', 'COLUMN';
	EXEC sp_rename 'NREGA Dataset.Total No# of Active Workers', 'Total No of Active Workers', 'COLUMN';
	EXEC sp_rename 'NREGA Dataset.Total No# of Works Takenup (New+Spill Over)', 'Total No of Works Takenup (New+Spill Over)', 'COLUMN';
	EXEC sp_rename 'NREGA Dataset.Material and skilled Wages (In Lakhs)', 'Material and skilled Wages (in Lakhs)', 'COLUMN';
	EXEC sp_rename 'NREGA Dataset.Wages (In Lakhs)', 'Wages (in Lakhs)', 'COLUMN';

	-- Updating a Value

	UPDATE [dbo].[NREGA Dataset] SET [District Name] = '24 Parganas (South)' WHERE [District Name] = '24 Parganas South';



	-- EXPLORATORY DATA ANALYSIS
	

	  --------------------------------------------------------------------------------------------------------
	-- STATES & DISTRICTS

	-- Number of distinct States present in the data

	SELECT 
		COUNT(DISTINCT [State Name]) AS 'Number of States',
		COUNT([District Name]) AS 'Number of Districts'
	FROM	
		[dbo].[NREGA Dataset]; 

	--There are total 34 states and union territories in this dataset, and 740 districts excluding Delhi and Chandigarh (both Union Territories)

	
	-- Number of distinct districts per state
  
	SELECT  
		[State Name], 
		COUNT(DISTINCT [District Name]) AS 'District Count'
	FROM 
			[dbo].[NREGA Dataset]
	GROUP BY 
		[State Name]
	ORDER BY 
		COUNT(DISTINCT [District Name]) DESC;
	


	--------------------------------------------------------------------------------------------------------
	-- JOB CARDS ISSUED


	-- Number of Total Job cards issued per state 
	
	SELECT  
		TOP 5 [State Name], 
		SUM([Total No of Job Cards issued]) AS 'Total Job Cards issued'
	FROM 
		[dbo].[NREGA Dataset]
	GROUP BY 
		[State Name]
	ORDER BY 
		SUM([Total No of Job Cards issued]) DESC;


	-- Number of Total Job cards issued per state and district

	SELECT  
		[State Name], 
		[District Name], 
		SUM([Total No of Job Cards issued]) AS 'Total Job Cards issued'
	FROM 
		[dbo].[NREGA Dataset]
	GROUP BY 
		[State Name], [District Name]
	ORDER BY 
		SUM([Total No of Job Cards issued]) DESC; 




	-------------------------------------------------------------------------------------------------------
	-- TOTAL WORKERS 


	-- Top 5 States by the highest number of Total workers

	SELECT  
		TOP 5 [State Name], 
		SUM([Total No of Workers]) AS 'Total Workers'
	FROM 
		[dbo].[NREGA Dataset]
	GROUP BY 
		[State Name]
	ORDER BY 
		SUM([Total No of Workers]) DESC;

	-- Top 10 districts with highest number of total workers
	
	SELECT  
		Top 10 [State Name], 
		[District Name],
		SUM([Total No of Workers]) AS 'Total Workers'
	FROM 
		[dbo].[NREGA Dataset]
	GROUP BY 
		[State Name],
		[District Name]
	ORDER BY 
		SUM([Total No of Workers]) DESC;

	-- 10 districts with lowest number of total workers
	 
	SELECT  
		Top 10 [State Name], 
		[District Name],
		SUM([Total No of Workers]) AS 'Total Workers'
	FROM 
		[dbo].[NREGA Dataset]
	GROUP BY 
		[State Name],
		[District Name]
	ORDER BY 
		SUM([Total No of Workers]) ASC;




	-------------------------------------------------------------------------------------------------------
	-- ACTIVE JOB CARDS

	-- Top 5 states by the highest number of Active Job Cards per state
	  
	SELECT  
		TOP 5 [State Name], 
		SUM([Total No of Active Job Cards]) AS 'Total Active Job Cards'
	FROM 
		[dbo].[NREGA Dataset]
	GROUP BY 
		[State Name]
	ORDER BY 
		SUM([Total No of Active Job Cards]) DESC;

	-- Summary statistics of Active Job Cards per state
	  
	SELECT  
		[State Name], 
		SUM([Total No of Active Job Cards]) AS 'Total Active Job Cards',
		MIN([Total No of Active Job Cards]) AS 'Min Active Job Cards',
		MAX([Total No of Active Job Cards]) AS 'Max Active Job Cards',
		ROUND(AVG([Total No of Active Job Cards]),0) AS 'Avg Active Job Cards',
		ROUND(VAR([Total No of Active Job Cards]), 2) AS 'Variance',
		ROUND(STDEV([Total No of Active Job Cards]), 2) AS 'Standard Deviation'
	FROM 
		[dbo].[NREGA Dataset]
	GROUP BY 
		[State Name]
	ORDER BY 
		SUM([Total No of Active Job Cards]) DESC;

	-- District in Uttar Pradesh with lowest number of active Job cards

	SELECT 
		TOP 1 [District Name], 
		SUM([Total No of Active Job Cards]) AS 'Total Active Job Cards'
	FROM 
		[dbo].[NREGA Dataset]
	GROUP BY 
		[State Name], [District Name]
	HAVING 
		[State Name]= 'Uttar Pradesh'
	ORDER BY 
		SUM([Total No of Active Job Cards]) ASC;




	-------------------------------------------------------------------------------------------------------
	-- ACTIVE WORKERS 

	-- Top 10 states with highest Active Workers

	WITH Total_Active_Workers AS (
	SELECT 
		SUM([Total No of Active Workers]) AS 'Total Active Workers'
	FROM 
		[dbo].[NREGA Dataset])
	SELECT  
		TOP 10 [State Name], 
		SUM([Total No of Active Workers]) AS 'Total Regional Active Workers',
		ROUND((SUM([Total No of Active Workers]) * 100/ (SELECT [Total Active Workers] FROM Total_Active_Workers)),2) AS '% of Total Workers',
		ROUND(AVG([Total No of Active Workers]),0) AS 'Average Active Workers'
	FROM 
		[dbo].[NREGA Dataset]
	GROUP BY 
		[State Name]
	ORDER BY 
		SUM([Total No of Active Workers]) DESC;



   -- 10 states with lowest Active Workers

	WITH Total_Active_Workers AS (
	SELECT 
		SUM([Total No of Active Workers]) AS 'Total Active Workers'
	FROM 
		[dbo].[NREGA Dataset])
	SELECT  
		TOP 10 [State Name], 
		SUM([Total No of Active Workers]) AS 'Total Regional Active Workers',
		ROUND((SUM([Total No of Active Workers]) * 100/ (SELECT [Total Active Workers] FROM Total_Active_Workers)),2) AS '% of Total Workers',
		ROUND(AVG([Total No of Active Workers]),0) AS 'Average Active Workers'
	FROM 
		[dbo].[NREGA Dataset]
	GROUP BY 
		[State Name]
	ORDER BY 
		SUM([Total No of Active Workers]) ASC;

	-- District in Uttar Pradesh with lowest number of active workers
	
	SELECT 
		[State Name], [District Name], 
		SUM([Total No of Active Workers]) AS 'Total Active Workers'
	FROM 
		[dbo].[NREGA Dataset]
	GROUP BY 
		[State Name], [District Name]
	HAVING 
		[State Name]= 'Uttar Pradesh'
	ORDER BY 
		SUM([Total No of Active Workers]) DESC;
	
	
	-- District with highest number of active workers
		
	SELECT 
		TOP 1 [State Name], [District Name], 
		SUM([Total No of Active Workers]) AS 'Total Active Workers'
	FROM 
		[dbo].[NREGA Dataset]
	GROUP BY 
		[State Name], [District Name]
	ORDER BY 
		SUM([Total No of Active Workers]) DESC;

	-- District with Lowest number of active workers
		
	SELECT 
		TOP 1 [State Name], [District Name], 
		SUM([Total No of Active Workers]) AS 'Total Active Workers'
	FROM 
		[dbo].[NREGA Dataset]
	GROUP BY 
		[State Name], [District Name]
	ORDER BY 
		SUM([Total No of Active Workers]) ASC;

	-------------------------------------------------------------------------------------------------------

	-- APPROVED LABOUR BUDGET
	
	SELECT [State Name], 
		SUM([Approved Labour Budget]) AS 'Approved Labour Budget'
	FROM 
		[dbo].[NREGA Dataset]
	GROUP BY 
		[State Name]
	ORDER BY 
		SUM([Approved Labour Budget]) DESC;

	


	-------------------------------------------------------------------------------------------------------
	
	-- SC AND ST WORKERS IN OVERALL INDIA
	SELECT 
		SUM([SC workers against active workers]) AS 'Total SC Workers',
		SUM([ST workers against active workers]) AS 'Total ST Workers',
		ROUND(SUM([SC workers against active workers])/ SUM([Total No of Active Workers]) * 100,2) AS '% SC workers',
		ROUND(SUM([ST workers against active workers])/ SUM([Total No of Active Workers]) * 100,2) AS '% ST workers'

	FROM 
		[dbo].[NREGA Dataset]
	
	-----------------------------------------------------------------------------------------------------
	
	-- SC WORKERS 
	-- Summary statistics of SC workers against active workers per state
		
	WITH Overall_SC_Workers as(
	SELECT 
		SUM([SC workers against active workers]) AS 'Total SC Workers'
	FROM 
		[dbo].[NREGA Dataset]
		)
	SELECT 
			TOP 10 [State Name], 
			SUM([SC workers against active workers]) AS 'Statewise Total SC workers',
			ROUND(SUM([SC workers against active workers])*100/(SELECT [Total SC Workers] FROM Overall_SC_Workers),2) AS '% of total SC Workers',
			MIN([SC workers against active workers]) AS 'Minimum SC Workers',
			MAX([SC workers against active workers]) AS 'Maximum SC Workers',
			ROUND(AVG([SC workers against active workers]),0) AS 'Avgerage SC Workers'
	FROM 
			[dbo].[NREGA Dataset]
	GROUP BY
			[State Name]
	ORDER BY
			SUM([SC workers against active workers]) DESC;


	-- Top 5 states with highest % of SC workers of total active workers
		
	SELECT 
			TOP 5 [State Name],
			SUM([SC workers against active workers]) AS 'SC workers against active workers',
			SUM([Total No of Active Workers]) AS 'Total Active Workers',
			ROUND(SUM([SC workers against active workers])/ SUM([Total No of Active Workers]) * 100,2) AS '% SC workers'
	FROM 
			[dbo].[NREGA Dataset]
	GROUP BY
			[State Name]
	ORDER BY
			ROUND(SUM([SC workers against active workers])/ SUM([Total No of Active Workers]) * 100,2) ASC;


	-- Average SC Persondays

	SELECT 
		ROUND(AVG([SC Persondays]),0) AS 'Average SC Person Days'
	FROM 
		[dbo].[NREGA Dataset];

			
	-- Statewise SC Persondays
	
	SELECT 
			[State Name], 
			SUM([SC Persondays]) AS Total_SC_Persondays,
			MIN([SC Persondays]) AS Min_SC_Persondays,
			MAX([SC Persondays]) AS Max_SC_Persondays,
			ROUND(AVG([SC Persondays]),0) AS Avg_SC_Persondays,
			ROUND(VAR([SC Persondays]), 2) AS Variance,
			ROUND(STDEV([SC Persondays]), 2) AS Standard_Deviation
	FROM 
			[dbo].[NREGA Dataset]
	GROUP BY
			[State Name]
	ORDER BY
			ROUND(AVG([SC Persondays]),0) DESC;

	-- Top 5 states in terms of Average SC Person Days

	SELECT 
			TOP 5 [State Name], 
			ROUND(AVG([SC Persondays]),0) AS 'Average SC Persondays'
	FROM 
			[dbo].[NREGA Dataset]
	GROUP BY
			[State Name]
	ORDER BY
			ROUND(AVG([SC Persondays]),0) DESC;

	-------------------------------------------------------------------------------------------------------
	-- ST WORKERS 

	-- Summary statistics of ST workers against active workers per state
		
	WITH Overall_ST_Workers as(
	SELECT 
		SUM([ST workers against active workers]) AS 'Total ST Workers'
	FROM 
		[dbo].[NREGA Dataset]
		)
	SELECT 
			TOP 10 [State Name], 
			SUM([ST workers against active workers]) AS Statewise_Total_ST_workers,
			ROUND(SUM([ST workers against active workers])*100/(SELECT [Total ST Workers] FROM Overall_ST_Workers),2) AS '% of total ST Workers',
			MIN([ST workers against active workers]) AS 'Minimum ST Workers',
			MAX([ST workers against active workers]) AS 'Maximum ST Workers',
			ROUND(AVG([ST workers against active workers]),0) AS 'Avgerage ST Workers'
	FROM 
			[dbo].[NREGA Dataset]
	GROUP BY
			[State Name]
	ORDER BY
			SUM([ST workers against active workers]) DESC;

	
	-- Top 5 states with highest % of ST workers of total active workers
		
	SELECT 
			TOP 5 [State Name],
			SUM([ST workers against active workers]) AS 'ST workers against active workers',
			SUM([Total No of Active Workers]) AS 'Total Active Workers',
			ROUND(SUM([ST workers against active workers])/ SUM([Total No of Active Workers]) * 100,2) AS '% ST workers'
	FROM 
			[dbo].[NREGA Dataset]
	GROUP BY
			[State Name]
	ORDER BY
			ROUND(SUM([ST workers against active workers])/ SUM([Total No of Active Workers]) * 100,2) ASC;



	--Average ST Persondays
		
	SELECT 
		ROUND(AVG([ST Persondays]),0) AS 'Average Person Days'
	FROM 
		[dbo].[NREGA Dataset];

	-- Statewise ST person days
		
	SELECT 
			[State Name], 
			SUM([ST Persondays]) AS Total_ST_Persondays,
			MIN([ST Persondays]) AS Min_ST_Persondays,
			MAX([ST Persondays]) AS Max_ST_Persondays,
			ROUND(AVG([ST Persondays]),0) AS Avg_ST_Persondays,
			ROUND(VAR([ST Persondays]), 2) AS Variance,
			ROUND(STDEV([ST Persondays]), 2) AS Standard_Deviation
	FROM 
			[dbo].[NREGA Dataset]
	GROUP BY
			[State Name]
	ORDER BY
			ROUND(AVG([ST Persondays]),0) DESC;

	-- Top 5 states in terms of Average ST Person Days

	SELECT 
			TOP 5 [State Name], 
			ROUND(AVG([ST Persondays]),0) AS 'Average ST Persondays'
	FROM 
			[dbo].[NREGA Dataset]
	GROUP BY
			[State Name]
	ORDER BY
			ROUND(AVG([ST Persondays]),0) DESC;


	-------------------------------------------------------------------------------------------------------
	-- WOMEN PERSONDAYS 
			
	-- Average Women Persondays
		
	SELECT 
		ROUND(AVG([Women Persondays]),0) AS 'Average Women Person Days'
	FROM 
		[dbo].[NREGA Dataset];

	-- Statewise Women person days
				   
	SELECT 
			[State Name], 
			SUM([Women Persondays]) AS Total_Women_Persondays,
			MIN([Women Persondays]) AS Min_Women_Persondays,
			MAX([Women Persondays]) AS Max_Women_Persondays,
			ROUND(AVG([Women Persondays]),0) AS Avg_Women_Persondays,
			ROUND(VAR([Women Persondays]), 2) AS Variance,
			ROUND(STDEV([Women Persondays]), 2) AS Standard_Deviation
	FROM 
			[dbo].[NREGA Dataset]
	GROUP BY
			[State Name]
	ORDER BY
			ROUND(AVG([Women Persondays]),0) DESC;

	-- Top 5 states in terms of Average Women Person Days

	SELECT 
			TOP 5 [State Name], 
			ROUND(AVG([Women Persondays]),0) AS 'Average Women Persondays'
	FROM 
			[dbo].[NREGA Dataset]
	GROUP BY
			[State Name]
	ORDER BY
			ROUND(AVG([Women Persondays]),0) DESC;

	-------------------------------------------------------------------------------------------------------
	-- PERSONDAYS OF CENTRAL LIABILITY SO FAR

	-- Average SC, ST and Women Person Days
		
	SELECT 
		ROUND(AVG([SC Persondays]),0) AS 'Average SC Person Days',
		ROUND(AVG([ST Persondays]),0) AS 'Average ST Person Days',
		ROUND(AVG([Women Persondays]),0) AS 'Average Women Person Days'
	FROM 
		[dbo].[NREGA Dataset];
		
		
	-- Total Person Days of Central Liability and the % of SC, ST and Women Person Days

	SELECT 
		SUM([Persondays of Central Liability so far]) AS 'Persondays of Central Liability so far',
		ROUND(SUM([SC Persondays])*100/SUM([Persondays of Central Liability so far]),2) AS '% SC Persondays', 
		ROUND(SUM([ST Persondays])*100/SUM([Persondays of Central Liability so far]),2) AS '% ST Persondays',
		ROUND(SUM([Women Persondays])*100/SUM([Persondays of Central Liability so far]),2) AS '% Women Persondays'
	FROM [dbo].[NREGA Dataset];
		
		
	SELECT 
		[State Name], 
		SUM([Persondays of Central Liability so far]) AS 'Total Persondays of Central Liability so far'
	FROM 
		[dbo].[NREGA Dataset]
	GROUP BY
		[State Name]
	ORDER BY
		SUM([Persondays of Central Liability so far]) DESC;




	-------------------------------------------------------------------------------------------------------
	-- AVERAGE DAYS OF EMPLOYMENT PROVIDED PER HOUSEHOLD 

	SELECT
			ROUND(AVG([Average days of employment provided per Household]),0) AS 'Average days of employment provided per Household'
	FROM 
			[dbo].[NREGA Dataset];


   -- Top 10 States with highest average days of employment provided per household
	
	SELECT
			TOP 10 [State Name], 
			ROUND(AVG([Average days of employment provided per Household]),0) AS 'Average days of employment provided per Household'			
	FROM
			[dbo].[NREGA Dataset]
	GROUP BY
			[State Name]
	ORDER BY
			ROUND(AVG([Average days of employment provided per Household]),0) DESC;


  -- Bottom 10 States with highest average days of employment provided per household
	
	SELECT
			TOP 10 [State Name], 
			ROUND(AVG([Average days of employment provided per Household]),0) AS 'Average days of employment provided per Household'			
	FROM
			[dbo].[NREGA Dataset]
	GROUP BY
			[State Name]
	ORDER BY
			ROUND(AVG([Average days of employment provided per Household]),0) ASC;



	-------------------------------------------------------------------------------------------------------
	
	-- AVERAGE WAGE RATE PER DAY PER PERSON

	SELECT
			ROUND(AVG([Average Wage rate per day per person]),2) AS 'Average Wage rate per day per person'
	FROM 
			[dbo].[NREGA Dataset];
	
	
	
	
	-- HIGHEST AVERAGE WAGE RATE PER DAY PER PERSON PER STATE
	
	SELECT
			TOP 1 [State Name], 
			ROUND(AVG([Average Wage rate per day per person]),2) AS 'Average Wage rate per day per person'
	FROM 
			[dbo].[NREGA Dataset]
	GROUP BY
			[State Name]
	ORDER BY
			ROUND(AVG([Average Wage rate per day per person]),2) DESC;

   -- LOWEST AVERAGE WAGE RATE PER DAY PER PERSON PER STATE
	
	SELECT
			TOP 1 [State Name], 
			ROUND(AVG([Average Wage rate per day per person]),2) AS 'Average Wage rate per day per person'
	FROM 
			[dbo].[NREGA Dataset]
	GROUP BY
			[State Name]
	ORDER BY
			ROUND(AVG([Average Wage rate per day per person]),2) ASC;
		
		
		
	-- Minimum Average Wage Rate 
	
	SELECT 
			[State Name], 
			MIN([Average Wage rate per day per person]) AS 'Minimum Average Wage rate'
	FROM 
			[dbo].[NREGA Dataset]
	GROUP BY 
			[State Name]
	ORDER BY 
			MIN([Average Wage rate per day per person]) ASC;


	-- Maximum Average Wage Rate 
	
	SELECT 
			[State Name], 
			MAX([Average Wage rate per day per person]) AS 'Maximum Average Wage rate'
	FROM 
			[dbo].[NREGA Dataset]
	GROUP BY 
			[State Name]
	ORDER BY 
			MAX([Average Wage rate per day per person]) ASC;

	-------------------------------------------------------------------------------------------------------
	-- TOTAL NUMBER OF HOUSEHOLDS COMPLETED 100 DAYS OF WAGE EMPLOYMENT

	SELECT 
		SUM([Total No of HHs completed 100 Days of Wage Employment]) AS 'Total No of HHs completed 100 Days of Wage Employment',
		SUM([Total Households Worked]) AS 'Total No of Households',
		ROUND(SUM([Total No of HHs completed 100 Days of Wage Employment])/SUM([Total Households Worked])*100, 2) AS '% of HHs completed 100 Days of Wage Employment'
	FROM 
			[dbo].[NREGA Dataset];

	-- % of TOTAL NUMBER OF HOUSEHOLDS COMPLETED 100 DAYS OF WAGE EMPLOYMENT OUT OF TOTAL HOUSEHOLDS WORKED

	SELECT
		[State Name], 
		SUM([Total No of HHs completed 100 Days of Wage Employment]) AS 'Total No of HHs completed 100 Days of Wage Employment',
		SUM([Total Households Worked]) AS 'Total No of Households',
		ROUND(SUM([Total No of HHs completed 100 Days of Wage Employment])/SUM([Total Households Worked])*100, 2) AS '% of HHs completed 100 Days of Wage Employment'
	FROM 
			[dbo].[NREGA Dataset]
	GROUP BY
			[State Name]
	ORDER BY
			ROUND(SUM([Total No of HHs completed 100 Days of Wage Employment])/SUM([Total Households Worked])*100, 2) DESC;

	-- Number of Districts with 0 Total No of HHs completed 100 Days of Wage Employment
	
	SELECT 
		[State Name], 
		COUNT([District Name]) AS 'Number of districts'
	FROM 
		[dbo].[NREGA Dataset]
	GROUP BY  
		[State Name]
	HAVING 
		SUM([Total No of HHs completed 100 Days of Wage Employment]) = 0;


	-------------------------------------------------------------------------------------------------------
	-- TOTAL NUMBER OF HOUSEHOLDS WORKED

	SELECT 
		SUM([Total Households Worked])  AS 'Total Households Worked'
	FROM 
		[dbo].[NREGA Dataset];


    -- STATE WISE TOTAL NUMBER OF HOUSEHOLDS WORKED

	SELECT  TOP 10 [State Name],
			SUM([Total Households Worked]) AS 'Total Households Worked',
			ROUND(AVG([Total Households Worked]),0) AS 'Average Households Worked'
	FROM 
			[dbo].[NREGA Dataset]
	GROUP BY 
			[State Name]
	ORDER BY 
			SUM([Total Households Worked]) DESC;




	-------------------------------------------------------------------------------------------------------
	-- TOTAL NUMBER OF INDIVIDUALS WORKED
	
	SELECT 
		SUM([Total Individuals Worked])  AS 'Total Individuals Worked'
	FROM 
		[dbo].[NREGA Dataset];
	
	-- STATE WISE TOTAL NUMBER OF INDIVIDUALS WORKED
	
	SELECT  TOP 10 [State Name],
			SUM([Total Individuals Worked]) AS 'Total Individuals Worked',
			ROUND(AVG([Total Individuals Worked]),0) AS 'Average Individuals Worked'
	FROM 
			[dbo].[NREGA Dataset]
	GROUP BY 
			[State Name]
	ORDER BY 
			SUM([Total Individuals Worked]) DESC;




	-------------------------------------------------------------------------------------------------------
	-- DIFFERENTLY ABLED PERSONS WORKED

	-- % Differently Abled persons of Total Individuals

	SELECT 	SUM([Differently-Abled Persons Worked]) AS 'Total Differently-Abled Persons Worked',
			SUM([Total Individuals Worked]) AS 'Total Individuals Worked',
			ROUND(SUM([Differently-Abled Persons Worked])/SUM([Total Individuals Worked]) * 100,2) AS '% Differently Abled persons of Total Individuals'
	FROM 
			[dbo].[NREGA Dataset]

	
	-- % Differently Abled persons of Total Individuals per state 
	
	SELECT  [State Name],
			SUM([Differently-Abled Persons Worked]) AS 'Total Differently-Abled Persons Worked',
			SUM([Total Individuals Worked]) AS 'Total Individuals Worked',
			ROUND(SUM([Differently-Abled Persons Worked])/SUM([Total Individuals Worked]) * 100,2) AS '% Differently Abled persons of Total Individuals'
	FROM 
			[dbo].[NREGA Dataset]
	GROUP BY 
			[State Name]
	ORDER BY 
			SUM([Differently-Abled Persons Worked]) DESC;

 
 
	-------------------------------------------------------------------------------------------------------
	-- NUMBER OF GRAM PANCHAYATS WITH 0 EXPENDITURE 
	
	SELECT 
			[State Name], 
			SUM([Number of GPs with 0 expenditure]) AS 'Number of GPs with 0 expenditure'
	FROM 
			[dbo].[NREGA Dataset]
	GROUP BY 
			[State Name]
	ORDER BY 
			SUM([Number of GPs with 0 expenditure]) DESC;




	-------------------------------------------------------------------------------------------------------
	-- TOTAL NO OF WORKS TAKENUP (NEW+SPILL OVER), ONGOING WORKS, COMPLETED WORKS AND THEIR %

	SELECT 
			SUM([Total No of Works Takenup (New+Spill Over)]) AS 'Total No of Works Takenup (New+Spill Over)',
			SUM([Number of Ongoing Works]) AS 'Total No of Ongoing Works',
			SUM([Number of Completed Works]) AS 'Total No of Completed Works',
			ROUND(SUM([Number of Ongoing Works])/SUM([Total No of Works Takenup (New+Spill Over)]) * 100,2) AS '% Ongoing Works',
			ROUND(SUM([Number of Completed Works])/SUM([Total No of Works Takenup (New+Spill Over)]) * 100,2) AS '% Completed Works'
	FROM 
			[dbo].[NREGA Dataset];


	-- Statewise total no of works takenup (new+spill over), ongoing works, completed works and their %

	SELECT 
			TOP 5 [State Name], 
			SUM([Total No of Works Takenup (New+Spill Over)]) AS 'Total No of Works Takenup (New+Spill Over)',
			SUM([Number of Ongoing Works]) AS 'Total No of Ongoing Works',
			SUM([Number of Completed Works]) AS 'Total No of Completed Works',
			ROUND(SUM([Number of Ongoing Works])/SUM([Total No of Works Takenup (New+Spill Over)]) * 100,2) AS '% Ongoing Works',
			ROUND(SUM([Number of Completed Works])/SUM([Total No of Works Takenup (New+Spill Over)]) * 100,2) AS '% Completed Works'

	FROM 
			[dbo].[NREGA Dataset]
	GROUP BY 
			[State Name]
	ORDER BY 
			ROUND(SUM([Number of Completed Works])/SUM([Total No of Works Takenup (New+Spill Over)]) * 100,2) DESC;

	
	-- Top 5 states with highest completed works
	SELECT 
			TOP 5 [State Name], 
			ROUND(SUM([Number of Completed Works])/SUM([Total No of Works Takenup (New+Spill Over)]) * 100,2) AS '% Completed Works'
	FROM 
			[dbo].[NREGA Dataset]
	GROUP BY 
			[State Name]
	ORDER BY 
			ROUND(SUM([Number of Completed Works])/SUM([Total No of Works Takenup (New+Spill Over)]) * 100,2) DESC;


	-------------------------------------------------------------------------------------------------------
	-- TOTAL EXPENDITURE,  WAGES, MATERIALS AND SKILLED WAGES, ADMINISTRATIVE EXPENDITURE AND THEIR % 

	SELECT 
			ROUND(SUM([Total Expenditure (in Lakhs)]), 2) AS 'Total Expenditure in Lakhs',
			ROUND(SUM([Wages (in Lakhs)]), 2) AS 'Total Wages in Lakhs',
			ROUND(SUM([Material and skilled Wages (in Lakhs)]), 2) AS 'Total Materials and skilled Wages in Lakhs',
			ROUND(SUM([Total Adminstrative Expenditure (in Lakhs)]), 2) AS 'Total Administrative Expenditure in Lakhs',
			ROUND(SUM([Wages (in Lakhs)])/SUM([Total Expenditure (in Lakhs)]) * 100,2) AS '% Wage',
			ROUND(SUM([Material and skilled Wages (in Lakhs)])/SUM([Total Expenditure (in Lakhs)]) * 100,2) AS '% Materials and skilled Wages',
			ROUND(SUM([Total Adminstrative Expenditure (in Lakhs)])/SUM([Total Expenditure (in Lakhs)]) * 100,2) AS '% Administrative Expenditure'
	FROM 
			[dbo].[NREGA Dataset];



  -- Statewise breakdown of total expenditure

	SELECT 
			[State Name], 
			ROUND(SUM([Wages (in Lakhs)])/SUM([Total Expenditure (in Lakhs)]) * 100,2) AS '% Wage',
			ROUND(SUM([Material and skilled Wages (in Lakhs)])/SUM([Total Expenditure (in Lakhs)]) * 100,2) AS '% Materials and skilled Wages',
			ROUND(SUM([Total Adminstrative Expenditure (in Lakhs)])/SUM([Total Expenditure (in Lakhs)]) * 100,2) AS '% Administrative Expenditure'
	FROM 
			[dbo].[NREGA Dataset]
	GROUP BY 
			[State Name]
	HAVING 
			[State Name] != 'Dadra and Nagar Haveli and Daman and Diu'
	ORDER BY 
			ROUND(SUM([Wages (in Lakhs)])/SUM([Total Expenditure (in Lakhs)]) * 100,2) DESC;
		



	-------------------------------------------------------------------------------------------------------
	-- % OF NRM EXPENDITURE(PUBLIC + INDIVIDUAL) PER STATE

	SELECT [State Name], 
			ROUND(AVG([% of NRM Expenditure(Public + Individual)]), 2) AS '% of NRM Expenditure(Public + Individual per state'
	FROM 
			[dbo].[NREGA Dataset]
	GROUP BY 
			[State Name]
	ORDER BY 
			ROUND(AVG([% of NRM Expenditure(Public + Individual)]), 2) DESC;




	-------------------------------------------------------------------------------------------------------
	-- % OF CATEGORY B WORKS PER STATE
	
	SELECT [State Name], 
			ROUND(AVG([% of Category B Works]), 2) AS '% of Category B Works Per State'
	FROM 
			[dbo].[NREGA Dataset]
	GROUP BY 
			[State Name]
	ORDER BY 
			ROUND(AVG([% of Category B Works]), 2) DESC;



	-------------------------------------------------------------------------------------------------------
	-- % OF EXPENDITURE ON AGRICULTURE & AGRICULTURE ALLIED WORKS PER STATE

	SELECT [State Name], 
			ROUND(AVG([% of Expenditure on Agriculture & Agriculture Allied Works]), 2) AS '% of Expenditure on Agriculture & Agriculture Allied Works per state'
	FROM 
			[dbo].[NREGA Dataset]
	GROUP BY 
			[State Name]
	ORDER BY 
			ROUND(AVG([% of Expenditure on Agriculture & Agriculture Allied Works]), 2) DESC;