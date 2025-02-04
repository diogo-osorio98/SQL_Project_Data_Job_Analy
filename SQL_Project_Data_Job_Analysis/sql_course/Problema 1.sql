SELECT
    COUNT(job_id),
    EXTRACT (MONTH FROM job_posted_date) AS month
FROM
    job_postings_fact
WHERE
    job_title_short='Data Analyst'
GROUP BY
    month
ORDER BY
    COUNT(job_id);
-- Problema 1 - 2:20:15
SELECT
    job_schedule_type,
    avg(salary_year_avg) as avg_salary_year,
    avg(salary_hour_avg) as avg_salary_hour
FROM
    job_postings_fact
WHERE
    job_posted_date>'2023-06-01' AND
    (salary_hour_avg IS NOT NULL OR
    salary_year_avg IS NOT NULL)
GROUP BY
    job_schedule_type
    