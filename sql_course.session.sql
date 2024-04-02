SELECT 
    job_id,
    job_title,
    job_location,
    salary_year_avg,
    name AS company_name
FROM    
    job_postings_fact
LEFT JOIN company_dim on job_postings_fact.company_id = company_dim.company_id
WHERE job_location LIKE '%Spain' AND job_title_short = 'Data Analyst' AND salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10;