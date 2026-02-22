

-- Write a query to find the total number of employees in the company.
SELECT 
   count(empid) as total_employees from hr_db;

-- Find how many employees have left the company.
Select
   attrition,count(empid) from hr_db
   where attrition = 'Yes'
   group by attrition;

-- Write a query to count the number of employees in each department.
select 
   department,count(empid) total_emp from hr_db
   group by department;

-- Find the number of employees who left the company in each department.
select 
   department,count(empid) total_emp from hr_db
   where attrition = 'Yes'
   group by department;

-- Calculate the average monthly income for each job role.

select 
     jobrole,round(avg(monthlyincome),2) as monthly_income from hr_db
	 group by jobrole
	 order by jobrole;

-- Find the attrition count for each age group.

SELECT 
    agegroup,
    COUNT(*) AS attrition_count
FROM hr_db
WHERE attrition = 'Yes'
GROUP BY agegroup
ORDER BY agegroup;

-- Write a query to find the employee with the highest monthly income.

select * from hr_db
where monthlyincome = (select max(monthlyincome) from hr_db);

-- Calculate the average monthly income based on total working years.


 SELECT 
    totalworkingyears,
    ROUND(AVG(monthlyincome), 2) AS avg_salary
FROM hr_db
GROUP BY totalworkingyears
ORDER BY totalworkingyears;


-- Calculate the attrition percentage for each gender.

select gender ,
100 * sum(case when attrition = 'Yes' then 1 else 0 end)/count(*)
as attrition_percentenge
from hr_db
group by gender;
       
 














   
   
