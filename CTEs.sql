--Simple CTE in SQL
WITH AvgSalaryByDept AS (
    SELECT Department, AVG(Salary) AS AvgSalary
    FROM Employees
    GROUP BY Department
)
SELECT *
FROM AvgSalaryByDept;

--Recursive Common Table Expression

WITH
  cteReports (EmpID, FirstName, LastName, ManagerID, EmpLevel)
  AS
  (
    SELECT EmpID, FirstName, LastName, ManagerID, 1
    FROM Employees
    WHERE ManagerID IS NULL
    UNION ALL
    SELECT e.EmpID, e.FirstName, e.LastName, e.ManagerID, 
      r.EmpLevel + 1
    FROM Employees e
      INNER JOIN cteReports r
        ON e.ManagerID = r.EmpID
  )

SELECT
  FirstName + ' ' + LastName AS FullName, 
  EmpLevel,
  (SELECT FirstName + ' ' + LastName FROM Employees 
    WHERE EmpID = cteReports.ManagerID) AS Manager
FROM cteReports 
ORDER BY EmpLevel, ManagerID 

--CTE
--Can be referenced multiple times.
--Improves readability for complex queries.
--Optimized for multiple references.

--Subquery
--Typically used once.
--Can become difficult to read when nested.
--May be less efficient for repeated operations.

--Limitations of CTEs in SQL
--Temporary Scope: A CTE exists only during the execution of the query. Once the query completes, the CTE is discarded.
--Performance Issues: For very large datasets, CTEs can sometimes lead to performance degradation due to multiple references to the same CTE.
--Not Allowed in All Database Operations: Some operations, such as INSERT and UPDATE, may have restrictions when using CTEs in certain databases.