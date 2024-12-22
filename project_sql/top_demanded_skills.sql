
SELECT 
    skills,
    COUNT (skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title_short = 'aws' AND 
    job_work_from_home = 'True'
GROUP BY 
    skills
ORDER BY
    demand_count DESC
LIMIT 10

-- SELECT 
--     skills_dim.skill_id,
--     skills_dim.skills,
--     COUNT(skills_dim.skill_id) AS skill_count2
-- FROM skills_dim
-- INNER JOIN skills_job_dim ON skills_dim.skill_id = skills_job_dim.skill_id
-- GROUP BY skills_dim.skill_id, skills_dim.skills
-- ORDER BY skill_count2 DESC
-- LIMIT 20

-- SELECT skills_dim.skill_id, skills_dim.skills, skills_dim.type, 
--     COUNT (skills_dim.skills) AS skill_count3
-- FROM skills_dim
-- LEFT JOIN skills_job_dim ON skills_dim.skill_id = skills_job_dim.skill_id
-- WHERE type = 'cloud' AND skills = 'aws'
-- GROUP BY skills_dim.skill_id
-- LIMIT 1000;

-- SELECT *
-- FROM skills_job_dim
-- LIMIT 100



