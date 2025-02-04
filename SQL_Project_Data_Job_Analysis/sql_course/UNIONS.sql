SELECT
    job_title_short,
    company_id,
    job_location
FROM
    january_jobs

UNION

SELECT
    job_title_short,
    company_id,
    job_location
FROM 
    february_jobs

UNION

SELECT
    job_title_short,
    company_id,
    job_location
FROM 
    march_jobs

-- com isto fizemos a união das tabelas. Com UNION ALL os duplicados também aparecem

/* Problema 1
*/
WITH q1_jobs AS (
SELECT
    job_id,
    job_title_short
FROM
    january_jobs

UNION ALL

SELECT
    job_id,
    job_title_short
FROM 
    february_jobs

UNION ALL

SELECT
    job_id,
    job_title_short
FROM march_jobs
)

SELECT*
FROM q1_jobs

    


