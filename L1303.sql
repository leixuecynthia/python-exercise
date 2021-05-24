SELECT A.employee_id, COUNT(*) AS team_size
FROM Employee A, Employee B
WHERE A.team_id = B.team_id
GROUP BY employee_id
