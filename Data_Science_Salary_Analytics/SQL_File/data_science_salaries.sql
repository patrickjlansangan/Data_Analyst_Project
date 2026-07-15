-- ============================================
-- DATA SCIENCE SALARY ANALYSIS
-- Author: Patrick Lansangan
-- ============================================

-- 1. Total Employees
SELECT COUNT(*) AS Total_Employees
FROM data_science_salaries;

-- 2. Total Countries
SELECT COUNT(DISTINCT company_location) AS Total_Countries
FROM data_science_salaries;

-- 3. Average Salary (USD)
SELECT AVG(salary_in_usd) AS Average_Salary
FROM data_science_salaries;

-- 4. Top 5 Highest Paying Countries
SELECT
    company_location,
    AVG(salary_in_usd) AS Average_Salary
FROM data_science_salaries
GROUP BY company_location
ORDER BY Average_Salary DESC
LIMIT 5;

-- 5. Top 5 Highest Paying Jobs
SELECT
    job_title,
    AVG(salary_in_usd) AS Average_Salary
FROM data_science_salaries
GROUP BY job_title
ORDER BY Average_Salary DESC
LIMIT 5;

-- 6. Top 5 In-Demand Jobs
SELECT
    job_title,
    COUNT(*) AS Total_Employees
FROM data_science_salaries
GROUP BY job_title
ORDER BY Total_Employees DESC
LIMIT 5;

-- 7. Average Salary by Experience Level
SELECT
    experience_level,
    AVG(salary_in_usd) AS Average_Salary
FROM data_science_salaries
GROUP BY experience_level
ORDER BY Average_Salary DESC;

-- 8. Company Size Distribution
SELECT
    company_size,
    COUNT(*) AS Total_Employees
FROM data_science_salaries
GROUP BY company_size
ORDER BY Total_Employees DESC;

-- 9. Average Salary by Company Size
SELECT
    company_size,
    AVG(salary_in_usd) AS Average_Salary
FROM data_science_salaries
GROUP BY company_size
ORDER BY Average_Salary DESC;

-- 10. Average Salary by Employment Type
SELECT
    employment_type,
    AVG(salary_in_usd) AS Average_Salary
FROM data_science_salaries
GROUP BY employment_type
ORDER BY Average_Salary DESC;

-- 11. Employment Type Distribution
SELECT
    employment_type,
    COUNT(*) AS Total_Employees
FROM data_science_salaries
GROUP BY employment_type
ORDER BY Total_Employees DESC;

-- 12. Remote Work Distribution
SELECT
    remote_ratio,
    COUNT(*) AS Total_Employees
FROM data_science_salaries
GROUP BY remote_ratio
ORDER BY Total_Employees DESC;

-- 13. Employee Residence Distribution
SELECT
    employee_residence,
    COUNT(*) AS Total_Employees
FROM data_science_salaries
GROUP BY employee_residence
ORDER BY Total_Employees DESC
LIMIT 10;

-- 14. Average Salary by Employee Residence
SELECT
    employee_residence,
    AVG(salary_in_usd) AS Average_Salary
FROM data_science_salaries
GROUP BY employee_residence
ORDER BY Average_Salary DESC
LIMIT 10;

-- 15. Work Year Distribution
SELECT
    work_year,
    COUNT(*) AS Total_Employees
FROM data_science_salaries
GROUP BY work_year
ORDER BY work_year;

-- 16. Average Salary by Work Year
SELECT
    work_year,
	AVG(salary_in_usd) AS Average_Salary
FROM data_science_salaries
GROUP BY work_year
ORDER BY work_year;