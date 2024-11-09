--	Made by Nicholas Littlefield


--	Retrieve highest Annual Mean Wage of General and Operations Managers (occupation_id = 1)

SELECT DISTINCT
	annual_mean_wage AS max_annual_mean_wage
FROM
	wages w,
	occupations o
WHERE
	o.occupation_id = '1'
AND
	w.annual_mean_wage = (
		SELECT
			MAX(annual_mean_wage)
		FROM
			wages
	);


--	Retrieve the Hourly Mean Wage of each state

SELECT 
    s.state_name,
    w.hourly_mean_wage
FROM 
    wages w
JOIN 
    state_data s ON s.state_code = w.state_id;