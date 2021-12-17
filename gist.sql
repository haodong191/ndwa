SELECT * 
FROM ndwa_pro
LIMIT 10;

SELECT * 
FROM ndwa_uni
LIMIT 10;

SELECT voter_id, SUM(attempts_count)
FROM ndwa_pro
GROUP BY voter_id
LIMIT 10;

SELECT 
COUNT(DISTINCT ndwa_pro.voter_id),
ndwa_uni.registration_state
FROM ndwa_pro
LEFT JOIN
ndwa_uni
ON
ndwa_uni.voter_id = ndwa_pro.voter_id
WHERE result_name NOT IN ('LIVE ANSWER', 'LEFT MESSAGE','REFUSED')
GROUP BY registration_state;

SELECT 
MAX(midterm_general_turnout_probability) AS Maxturnout,
MIN(midterm_general_turnout_probability) AS Minturnout
FROM ndwa_uni
LEFT JOIN
ndwa_pro
ON
ndwa_pro.voter_id = ndwa_uni.voter_id
WHERE ndwa_pro.result_name IN ('LIVE ANSWER', 'LEFT MESSAGE','REFUSED');