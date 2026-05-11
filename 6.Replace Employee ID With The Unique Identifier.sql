SELECT euni.unique_id AS unique_id, e.name as name
FROM Employees e
LEFT JOIN EmployeeUNI euni
ON e.id = euni.id;