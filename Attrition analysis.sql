#Attrition analysis and insights using SQL#. Used skill such as CTEs , Window functions,Aggregations and Sub queries

SELECT 
    *
FROM
    Parks_and_Recreation.`hr dataset new`;
    
   
#Table rename#
rename table `hr dataset new` to hr;

SELECT 
    *
FROM
    hr;

 SELECT 
    *
FROM
    hr
WHERE
    attrition = 'Yes';
    
#Atrition by Gender attrition %#
with cte as (select * from hr where attrition="Yes")
SELECT
    gender,
    round((COUNT(*) * 100 / (SELECT COUNT(*) FROM cte )) ,0) AS attrition_percentage
FROM cte
   GROUP BY
    gender order by attrition_percentage  desc;
    
    # Atrition by Marital status#
    
SELECT `Marital status`,count(*)
FROM
    hr
WHERE
    attrition = 'Yes' group by `Marital status`;
select * from hr;

#Attrition by gender and marital status#
SELECT `Marital status`,gender,count(*) as totalattrition
FROM
    hr
WHERE
    attrition = 'Yes' group by `Marital status`,gender order by totalattrition desc;

#Attrition by department#

SELECT department,count(*) as totalattrition
FROM
    hr
WHERE
    attrition = 'Yes' group by department order by totalattrition desc;
    
#Attrition % by department and education field#
    
with cte as (select * from hr where attrition="Yes")
SELECT
    department,`Education Field` ,
    round((COUNT(*) * 100 / (SELECT COUNT(*) FROM cte )) ,0) AS attrition_percentage
FROM cte
   GROUP BY
    department,`Education Field` order by attrition_percentage  desc;
 
 #Avg salary by Department and Education field#
    
with cte as (select * from hr where attrition="Yes")
SELECT
    department,`Education Field` ,
    round(avg(`Monthly Income`),0) AS avgincome
FROM cte
   GROUP BY
    department,`Education Field` order by avgincome desc;
    
    
#Attrition % by department and education field#
    
with cte as (select * from hr where attrition="Yes")
SELECT
    department,`Education Field` ,
    round((COUNT(*) * 100 / (SELECT COUNT(*) FROM cte )) ,0) AS attrition_percentage
FROM cte
   GROUP BY
    department,`Education Field` order by attrition_percentage  desc;
 
 
 #Avg salary by Department#
    
with cte as (select * from hr where attrition="Yes")
SELECT
    department, 
    round(avg(`Monthly Income`),0) AS avgincome
FROM cte
   GROUP BY
    department order by avgincome desc;
    
 #Attrition % by department#
 
 with cte as (select * from hr where attrition="Yes")
SELECT
    department,
    round((COUNT(*) * 100 / (SELECT COUNT(*) FROM cte )) ,0) AS attrition_percentage
FROM cte
   GROUP BY
    department order by attrition_percentage  desc;
    
#Attrition % by education#   

 with cte as (select * from hr where attrition="Yes")
SELECT
    education,
    round((COUNT(*) * 100 / (SELECT COUNT(*) FROM cte )) ,0) AS attrition_percentage
FROM cte
   GROUP BY
    education order by attrition_percentage  desc; 
    
    
#Avg income by  education#   

 with cte as (select * from hr where attrition="Yes")
SELECT
    Education, 
    round(avg(`Monthly Income`),0) AS avgincome
FROM cte
   GROUP BY
   Education order by avgincome desc;
   
#Avg income of people who work Extended working hours#

with cte as (select * from hr where attrition="Yes")
SELECT
    `Over time`, 
    round(avg(`Monthly Income`),0) AS avgincome
FROM cte
   GROUP BY
   `Over time`order by avgincome desc;
 
 #Attrition rate by extended working hours#
 
with cte as (select * from hr where attrition="Yes")
SELECT
    `Over time`,
    round((COUNT(*) * 100 / (SELECT COUNT(*) FROM cte )) ,0) AS attrition_percentage
FROM cte
   GROUP BY
    `Over time` order by attrition_percentage  desc;
    
 
 #Attrition % by Job Satisfaction#
with cte as (select * from hr where attrition="Yes")
SELECT
    `Job Satisfaction`,
    round((COUNT(*) * 100 / (SELECT COUNT(*) FROM cte )) ,0) AS attrition_percentage
FROM cte
   GROUP BY
  `Job Satisfaction` order by attrition_percentage  desc;
  
  
#Avg income of people who work Extended working hours#

with cte as (select * from hr where attrition="Yes")
SELECT
    `Job Role`, 
    round(avg(`Monthly Income`),0) AS avgincome
FROM cte
   GROUP BY
   `Job Role`order by avgincome desc;
 
 #Attrition rate by extended working hours#
 
with cte as (select * from hr where attrition="Yes")
SELECT
    `Job Role`,
    round((COUNT(*) * 100 / (SELECT COUNT(*) FROM cte )) ,0) AS attrition_percentage
FROM cte
   GROUP BY
    `Job Role` order by attrition_percentage  desc;
    
#Attrition % by Performance Rating#

with cte as (select * from hr where attrition="Yes")
SELECT
    `Performance Rating`,
    round((COUNT(*) * 100 / (SELECT COUNT(*) FROM cte )) ,0) AS attrition_percentage
FROM cte
   GROUP BY
   `Performance Rating` order by attrition_percentage  desc;
   
   
#Attrition % by % salary hike#
with cte as (select * from hr where attrition="Yes")
SELECT
    `Percent Salary Hike`,
    round((COUNT(*) * 100 / (SELECT COUNT(*) FROM cte )) ,0) AS attrition_percentage
FROM cte
   GROUP BY
   `Percent Salary Hike` order by attrition_percentage  desc;

#Attrition % by Years in current role#
with cte as (select * from hr where attrition="Yes")
SELECT
    `Years in Current Role`,
    round((COUNT(*) * 100 / (SELECT COUNT(*) FROM cte )) ,0) AS attrition_percentage
FROM cte
   GROUP BY
   `Years in Current Role` order by attrition_percentage  desc;
   
SELECT 
     distinct age
FROM
    hr
WHERE
    attrition = 'Yes';
    
SELECT 
     distinct age
FROM
    hr
WHERE
    attrition = 'No';

SELECT 
    `Years At Company`
FROM
    hr
WHERE
    attrition = 'Yes';
    
SELECT 
    `Years At Company`
FROM
    hr
WHERE
    attrition = 'No';
    
    
#Attrition % by tenure#    

with cte as (select * from hr where attrition="Yes")
SELECT
    `Years At Company`,
    round((COUNT(*) * 100 / (SELECT COUNT(*) FROM cte )) ,0) AS attrition_percentage
FROM cte
   GROUP BY
   `Years At Company` order by `Years At Company`  desc;

    



   

   
   


   
   


 

    
  



    
    
    

   
   
    

    
    
    




