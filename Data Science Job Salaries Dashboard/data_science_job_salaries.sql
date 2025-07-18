-- Average Salary by Job Title
SELECT 
    job_title,
    Cast(AVG(salary_in_usd)as INT) AS avg_salary
FROM 
    job_salary
GROUP BY 
    job_title
ORDER BY 
    avg_salary DESC;


-- Salary by Experience Level and Employment Type
SELECT 
    experience_level,
    employment_type,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary
FROM 
    job_salary
GROUP BY 
    experience_level, employment_type
ORDER BY 
    avg_salary DESC;


-- Salary by Remote Work Status and Company Size
SELECT 
    remote_ratio,
    company_size,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary
FROM 
    job_salary
GROUP BY 
    remote_ratio, company_size
ORDER BY 
    avg_salary DESC;


-- Top 5 Countries with Highest Avg Salaries
SELECT 
    company_location,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary
FROM 
    job_salary
GROUP BY 
    company_location
ORDER BY 
    avg_salary DESC
LIMIT 5;

