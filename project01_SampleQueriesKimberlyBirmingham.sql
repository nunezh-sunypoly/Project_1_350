--Get Highest Annual Mean Wage by Occupation and State

SELECT s.state_name,
       o.occupation_title,
       w.annual_mean_wage
FROM wages w
JOIN occupations o ON w.occupation_id = o.occupation_id
JOIN state_data s ON w.state_id = s.state_id
WHERE (w.occupation_id, w.annual_mean_wage) IN (
    SELECT occupation_id, MAX(annual_mean_wage)
    FROM wages
    WHERE state_id = s.state_id
    GROUP BY occupation_id
)
ORDER BY s.state_name;



--Retrieve Employment Data for Software Developers (occupation_id = 3)

SELECT s.state_name,
       e.date,
       o.occupation_title,
       e.employment,
       e.employment_rse
FROM employment_data e
JOIN occupations o ON e.occupation_id = o.occupation_id
JOIN state_data s ON e.state_id = s.state_id
WHERE e.occupation_id = 7  -- Software Developers
ORDER BY e.date ASC;


--Calculate Total Employment by State

SELECT s.state_name,
       SUM(e.employment) AS total_employment
FROM employment_data e
JOIN state_data s ON e.state_id = s.state_id
GROUP BY s.state_name
ORDER BY total_employment DESC;


--Get the Latest Maximum Annual Mean Wage for Each Occupation by State

SELECT o.occupation_title,
       s.state_name,
       w.date,
       w.annual_mean_wage
FROM wages w
JOIN occupations o ON w.occupation_id = o.occupation_id
JOIN state_data s ON w.state_id = s.state_id
WHERE (w.occupation_id, w.date, w.annual_mean_wage) IN (
    SELECT occupation_id, date, annual_mean_wage
    FROM wages
    WHERE annual_mean_wage = (SELECT MAX(annual_mean_wage) 
                              FROM wages AS w2
                              WHERE w2.occupation_id = w.occupation_id
                                AND w2.state_id = w.state_id
                                AND w2.date <= w.date)
)
ORDER BY o.occupation_title, s.state_name, w.date;
