SELECT
    job_title_short,
    job_location,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
    END AS location_category
FROM
    job_postings_fact
LIMIT 50;


SELECT
    COUNT(job_id) AS number_of_jobs,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
    END AS location_category
FROM
    job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
GROUP BY location_category;

--Practice Problem 1

SELECT
    COUNT(job_id) AS number_jobs,
    CASE
        WHEN salary_year_avg < 30000 THEN 'Low'
        WHEN salary_year_avg BETWEEN 30000 AND 80000 THEN 'Standard'
        ELSE 'High'
        END AS salary_bucket
        FROM
    job_postings_fact
WHERE
    salary_year_avg IS NOT NULL AND
    job_title_short = 'Data Analyst'
GROUP BY salary_bucket
ORDER BY number_jobs DESC;