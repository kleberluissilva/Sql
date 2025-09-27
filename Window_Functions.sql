--Employees Table
CREATE TABLE Employee(
    EmpID   	INT PRIMARY KEY,
    Name     	VARCHAR(50),
    LastName 	VARCHAR(50),
	Country 	VARCHAR(50),
    Age     	INT CHECK (Age >= 0 AND Age <= 99),
    Department	VARCHAR(50),
    Salary 		INT
);

INSERT INTO Employee (EmpID, Name, LastName, Age, Department, Salary)
VALUES (1, 'Joseph', 'Rusk', 'United States','23','Sales','4500'),
       (2, 'John', 'Nephew', 'England','21','Sales','5000'),
       (3, 'Marie', 'Claire', 'France','24','Production','7000'),
       (4, 'Paul', 'Stephan', 'England','21','CIO','15000'),
       (5, 'Carl Simon', 'Stark', 'United States','22','Production','2500');

--1. Aggregate Window Function
--Aggregate window functions calculate aggregates over a window of rows while retaining individual rows. Common aggregate functions include:

--SUM():   Sums values within a window.
--AVG():   Calculates the average value within a window.
--MAX():   Returns the maximum value in the window.
--MIN():   Returns the minimum value in the window.
--COUNT(): Counts the rows within a window.
--Example: Using AVG() to Calculate Average Salary within each department

SELECT Name, Age, Department, Salary, 
       AVG(Salary) OVER( PARTITION BY Department) AS Avg_Salary
FROM employee;

--2. Ranking Window Functions
--These functions provide rankings of rows within a partition based on specific criteria. Common ranking functions include:

--RANK(): 			Assigns ranks to rows, skipping ranks for duplicates.
--DENSE_RANK(): 	Assigns ranks to rows without skipping rank numbers for duplicates.
--ROW_NUMBER(): 	Assigns a unique number to each row in the result set.
--PERCENT_RANK(): 	Shows the relative rank of a row as a percentage between 0 and 1.
--LAG
--LEAD



--2.1 RANK Function
--It assigns ranks to rows within a partition, with the same rank given to rows with identical values. If two rows share the same rank, the next rank is skipped. 
--Example: Using RANK() to Rank Employees by Salary

SELECT Name, Department, Salary,
       RANK() OVER(PARTITION BY Department ORDER BY Salary DESC) AS emp_rank
FROM employee;

--2.2 DENSE RANK Function
--When ranking rows in SQL, ties can sometimes create gaps in the ranking sequence. DENSE_RANK() function is used to avoid this it assigns the same rank to rows with equal values but continues ranking with the next consecutive number, without skipping.
--Example: Using DENSE_RANK() to Rank Employees by Salary

SELECT Name, Department, Salary,
       DENSE_RANK() OVER(PARTITION BY Department ORDER BY Salary DESC) AS emp_dense_rank
FROM employee;

--2.3 ROW NUMBER Function
--ROW_NUMBER() gives e­ach row a unique number. It numbers rows from one­ to the total rows. The rows are put into groups base­d on their values. Each group is called a partition. In e­ach partition, rows get numbers one afte­r another. No two rows have the same­ number in a partition.
--Example: Using ROW_NUMBER() for Unique Row Numbers

SELECT Name, Department, Salary,
       ROW_NUMBER() OVER(PARTITION BY Department ORDER BY Salary DESC) AS emp_row_no
FROM employee;

--2.4 PERCENT RANK Function
--PERCENT_RANK() shows the relative position of a row compared to others in the same partition. The formula is:
--PERCENT_RANK = RANK − 1 / Total Rows in Partition − 1 
--Example: Using PERCENT_RANK() to Find Relative Salary Position

SELECT Name, Department, Salary,
       PERCENT_RANK() OVER(PARTITION BY Department ORDER BY Salary DESC) AS emp_percent_rank
FROM employee;