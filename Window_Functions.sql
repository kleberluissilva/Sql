--DROP TABLE Employees;
--DROP TABLE Managers;

--Employees Table
CREATE TABLE Employees(
    EmpID   	INT PRIMARY KEY,
    FirstName     	VARCHAR(50),
    LastName 	VARCHAR(50),
	Country 	VARCHAR(50),
    Age     	INT CHECK (Age >= 0 AND Age <= 99),
    Department	VARCHAR(50),
	ManagerID 	INT,
	ManagerName	VARCHAR(50),
    Salary 		INT
);

--Employees Table
CREATE TABLE Managers(
    ManagerID   INT PRIMARY KEY,
    FirstName   VARCHAR(50),
    LastName 	VARCHAR(50),
	Country		VARCHAR(50),
	Age			INT CHECK (Age >= 0 AND Age <= 99),
    Department	VARCHAR(50),
    Salary 		INT
);

INSERT INTO Employees (EmpID, FirstName, LastName, Country, Age, Department, ManagerID, ManagerName, Salary)
VALUES (1, 'Joseph', 'Rusk', 'United States','23','Sales',3,'Kevin Bates','4500'),
       (2, 'John', 'Nephew', 'England','21','Sales',3,'Jonh Jones','5000'),
       (3, 'Marie', 'Claire', 'France','24','Production',2,'Victor Fisher','7000'),
       (4, 'Paul', 'Stephan', 'England','21','CIO','','','15000'),
       (5, 'Carl Simon', 'Stark', 'United States','22','Production',1,'Albert Poldman','2500')
	   (6, 'Ava', 'Garcia', 'Spain', 27, 'Sales', 6, 'Lisa Brown', 59000),
	   (7, 'William', 'Davis', 'Germany', 33, 'IT', 7, 'Michael Davis', 68000),
	   (8, 'Sophia', 'Rodriguez', 'Mexico', 26, 'HR', 8, 'Anna Martinez', 52000),
	   (9, 'James', 'Martinez', 'USA', 34, 'Finance', 9, 'Thomas Taylor', 75000),
	   (10, 'Isabella', 'Hernandez', 'Spain', 30, 'Marketing', 10, 'Emily Anderson', 57000),
	   (11, 'Benjamin', 'Lopez', 'France', 28, 'IT', 1, 'James Wilson', 66000),
	   (12, 'Mia', 'Gonzalez', 'Canada', 32, 'HR', 2, 'Maria Garcia', 56000),
	   (13, 'Lucas', 'Wilson', 'Germany', 29, 'Finance', 3, 'Robert Chen', 73000),
	   (14, 'Charlotte', 'Anderson', 'UK', 35, 'Marketing', 4, 'Sarah Johnson', 59000),
	   (15, 'Henry', 'Thomas', 'USA', 31, 'Operations', 5, 'David Miller', 63000),
	   (16, 'Amelia', 'Moore', 'Australia', 27, 'Sales', 6, 'Lisa Brown', 60000),
	   (17, 'Alexander', 'Jackson', 'Spain', 33, 'IT', 7, 'Michael Davis', 69000),
	   (18, 'Harper', 'Lee', 'Mexico', 26, 'HR', 8, 'Anna Martinez', 53000),
	   (19, 'Daniel', 'Perez', 'France', 34, 'Finance', 9, 'Thomas Taylor', 76000),
	   (20, 'Evelyn', 'Thompson', 'Canada', 30, 'Marketing', 10, 'Emily Anderson', 58000),
	   (21, 'Michael', 'White', 'USA', 28, 'IT', 1, 'James Wilson', 67000),
	   (22, 'Abigail', 'Harris', 'UK', 32, 'HR', 2, 'Maria Garcia', 57000),
	   (23, 'Ethan', 'Martin', 'Germany', 29, 'Finance', 3, 'Robert Chen', 74000),
	   (24, 'Emily', 'Clark', 'Australia', 35, 'Marketing', 4, 'Sarah Johnson', 60000),
	   (25, 'Jacob', 'Lewis', 'Canada', 31, 'Operations', 5, 'David Miller', 64000),
	   (26, 'Elizabeth', 'Robinson', 'Spain', 27, 'Sales', 6, 'Lisa Brown', 61000),
	   (27, 'Logan', 'Walker', 'Mexico', 33, 'IT', 7, 'Michael Davis', 70000),
	   (28, 'Sofia', 'Hall', 'France', 26, 'HR', 8, 'Anna Martinez', 54000),
	   (29, 'Jackson', 'Allen', 'USA', 34, 'Finance', 9, 'Thomas Taylor', 77000),
	   (30, 'Avery', 'Young', 'UK', 30, 'Marketing', 10, 'Emily Anderson', 59000),
	   (31, 'Sebastian', 'King', 'Germany', 28, 'IT', 1, 'James Wilson', 68000),
	   (32, 'Ella', 'Wright', 'Canada', 32, 'HR', 2, 'Maria Garcia', 58000),
	   (33, 'Aiden', 'Scott', 'Spain', 29, 'Finance', 3, 'Robert Chen', 75000),
	   (34, 'Scarlett', 'Green', 'Mexico', 35, 'Marketing', 4, 'Sarah Johnson', 61000),
	   (35, 'Matthew', 'Baker', 'France', 31, 'Operations', 5, 'David Miller', 65000),
	   (36, 'Grace', 'Adams', 'USA', 27, 'Sales', 6, 'Lisa Brown', 62000),
	   (37, 'Samuel', 'Nelson', 'Australia', 33, 'IT', 7, 'Michael Davis', 71000),
	   (38, 'Chloe', 'Carter', 'UK', 26, 'HR', 8, 'Anna Martinez', 55000),
	   (39, 'David', 'Mitchell', 'Germany', 34, 'Finance', 9, 'Thomas Taylor', 78000),
	   (40, 'Victoria', 'Perez', 'Canada', 30, 'Marketing', 10, 'Emily Anderson', 60000),
	   (41, 'Joseph', 'Roberts', 'Spain', 28, 'IT', 1, 'James Wilson', 69000),
	   (42, 'Riley', 'Turner', 'Mexico', 32, 'HR', 2, 'Maria Garcia', 59000),
	   (43, 'Carter', 'Phillips', 'France', 29, 'Finance', 3, 'Robert Chen', 76000),
	   (44, 'Luna', 'Campbell', 'USA', 35, 'Marketing', 4, 'Sarah Johnson', 62000),
	   (45, 'Luke', 'Parker', 'UK', 31, 'Operations', 5, 'David Miller', 66000),
	   (46, 'Zoe', 'Evans', 'Australia', 27, 'Sales', 6, 'Lisa Brown', 63000),
	   (47, 'John', 'Edwards', 'Canada', 33, 'IT', 7, 'Michael Davis', 72000),
	   (48, 'Hannah', 'Collins', 'Germany', 26, 'HR', 8, 'Anna Martinez', 56000),
	   (49, 'Andrew', 'Stewart', 'Spain', 34, 'Finance', 9, 'Thomas Taylor', 79000),
	   (50, 'Lily', 'Sanchez', 'Mexico', 30, 'Marketing', 10, 'Emily Anderson', 61000),
	   (51, 'Dylan', 'Morris', 'France', 28, 'IT', 1, 'James Wilson', 70000),
	   (52, 'Addison', 'Rogers', 'USA', 32, 'HR', 2, 'Maria Garcia', 60000),
	   (53, 'Gabriel', 'Reed', 'UK', 29, 'Finance', 3, 'Robert Chen', 77000),
	   (54, 'Nora', 'Cook', 'Australia', 35, 'Marketing', 4, 'Sarah Johnson', 63000),
	   (55, 'Caleb', 'Morgan', 'Canada', 31, 'Operations', 5, 'David Miller', 67000),
	   (56, 'Stella', 'Bell', 'Germany', 27, 'Sales', 6, 'Lisa Brown', 64000),
	   (57, 'Ryan', 'Murphy', 'Spain', 33, 'IT', 7, 'Michael Davis', 73000),
	   (58, 'Aurora', 'Bailey', 'Mexico', 26, 'HR', 8, 'Anna Martinez', 57000),
	   (59, 'Nathan', 'Rivera', 'France', 34, 'Finance', 9, 'Thomas Taylor', 80000),
	   (60, 'Ellie', 'Cooper', 'USA', 30, 'Marketing', 10, 'Emily Anderson', 62000),
	   (61, 'Isaiah', 'Richardson', 'UK', 28, 'IT', 1, 'James Wilson', 71000),
	   (62, 'Penelope', 'Cox', 'Australia', 32, 'HR', 2, 'Maria Garcia', 61000),
	   (63, 'Julian', 'Howard', 'Canada', 29, 'Finance', 3, 'Robert Chen', 78000),
	   (64, 'Mila', 'Ward', 'Germany', 35, 'Marketing', 4, 'Sarah Johnson', 64000),
	   (65, 'Levi', 'Torres', 'Spain', 31, 'Operations', 5, 'David Miller', 68000),
	   (66, 'Aria', 'Peterson', 'Mexico', 27, 'Sales', 6, 'Lisa Brown', 65000),
	   (67, 'Eli', 'Gray', 'France', 33, 'IT', 7, 'Michael Davis', 74000),
	   (68, 'Hazel', 'Ramirez', 'USA', 26, 'HR', 8, 'Anna Martinez', 58000),
	   (69, 'Aaron', 'James', 'UK', 34, 'Finance', 9, 'Thomas Taylor', 81000),
	   (70, 'Violet', 'Watson', 'Australia', 30, 'Marketing', 10, 'Emily Anderson', 63000),
	   (71, 'Charles', 'Brooks', 'Canada', 28, 'IT', 1, 'James Wilson', 72000),
	   (72, 'Savannah', 'Kelly', 'Germany', 32, 'HR', 2, 'Maria Garcia', 62000),
	   (73, 'Hunter', 'Sanders', 'Spain', 29, 'Finance', 3, 'Robert Chen', 79000),
	   (74, 'Bella', 'Price', 'Mexico', 35, 'Marketing', 4, 'Sarah Johnson', 65000),
	   (75, 'Christian', 'Bennett', 'France', 31, 'Operations', 5, 'David Miller', 69000),
	   (76, 'Nova', 'Wood', 'USA', 27, 'Sales', 6, 'Lisa Brown', 66000),
	   (77, 'Landon', 'Barnes', 'UK', 33, 'IT', 7, 'Michael Davis', 75000),
	   (78, 'Eleanor', 'Ross', 'Australia', 26, 'HR', 8, 'Anna Martinez', 59000),
	   (79, 'Jonathan', 'Henderson', 'Canada', 34, 'Finance', 9, 'Thomas Taylor', 82000),
	   (80, 'Maya', 'Coleman', 'Germany', 30, 'Marketing', 10, 'Emily Anderson', 64000),
	   (81, 'Nicholas', 'Jenkins', 'Spain', 28, 'IT', 1, 'James Wilson', 73000),
	   (82, 'Willow', 'Perry', 'Mexico', 32, 'HR', 2, 'Maria Garcia', 63000),
	   (83, 'Dominic', 'Powell', 'France', 29, 'Finance', 3, 'Robert Chen', 80000),
	   (84, 'Emilia', 'Long', 'USA', 35, 'Marketing', 4, 'Sarah Johnson', 66000),
	   (85, 'Evan', 'Patterson', 'UK', 31, 'Operations', 5, 'David Miller', 70000),
	   (86, 'Hannah', 'Hughes', 'Australia', 27, 'Sales', 6, 'Lisa Brown', 67000),
	   (87, 'Thomas', 'Flores', 'Canada', 33, 'IT', 7, 'Michael Davis', 76000),
	   (88, 'Lillian', 'Washington', 'Germany', 26, 'HR', 8, 'Anna Martinez', 60000),
	   (89, 'Jordan', 'Butler', 'Spain', 34, 'Finance', 9, 'Thomas Taylor', 83000),
	   (90, 'Layla', 'Simmons', 'Mexico', 30, 'Marketing', 10, 'Emily Anderson', 65000),
	   (91, 'Adrian', 'Foster', 'France', 28, 'IT', 1, 'James Wilson', 74000),
	   (92, 'Paisley', 'Gonzales', 'USA', 32, 'HR', 2, 'Maria Garcia', 64000),
	   (93, 'Cameron', 'Bryant', 'UK', 29, 'Finance', 3, 'Robert Chen', 81000),
	   (94, 'Anna', 'Alexander', 'Australia', 35, 'Marketing', 4, 'Sarah Johnson', 67000),
	   (95, 'Robert', 'Russell', 'Canada', 31, 'Operations', 5, 'David Miller', 71000),
	   (96, 'Delilah', 'Griffin', 'Germany', 27, 'Sales', 6, 'Lisa Brown', 68000),
	   (97, 'Brayden', 'Diaz', 'Spain', 33, 'IT', 7, 'Michael Davis', 77000),
	   (98, 'Clara', 'Hayes', 'Mexico', 26, 'HR', 8, 'Anna Martinez', 61000),
	   (99, 'Kevin', 'Myers', 'France', 34, 'Finance', 9, 'Thomas Taylor', 84000),
	   (100, 'Aaliyah', 'Ford', 'USA', 30, 'Marketing', 10, 'Emily Anderson', 66000);
	   
INSERT INTO Managers (ManagerID, FirstName, LastName, Country, Age, Department, Salary)
VALUES (1, 'Elisabeth', 'Most', 'Australian','23','Sales','14500'),
       (2, 'Gracie', 'Tompson', 'England','21','Sales','95000'),
       (3, 'Cameron', 'Dias', 'South African','24','Production','75000'),
       (4, 'Brian', 'Adams', 'England','21','CIO','555000'),
       (5, 'Robert', 'Boss', 'United States','22','Production','8500')
	   (6, 'Lisa', 'Brown', 'USA', 44, 'Sales', 89000),
       (7, 'Michael', 'Davis', 'Germany', 46, 'IT', 96000),
       (8, 'Anna', 'Martinez', 'Mexico', 41, 'HR', 87000),
       (9, 'Thomas', 'Taylor', 'France', 49, 'Finance', 101000),
       (10, 'Emily', 'Anderson', 'Australia', 38, 'Marketing', 91000);


UPDATE Employees SET ManagerID = NULL, ManagerName = NULL WHERE EmpID IN (1, 2, 3);

INSERT INTO Employees (EmpID, FirstName, LastName, Country, Age, Department, ManagerID, ManagerName, Salary) VALUES
	   (101, 'Ethan', 'Thompson', 'USA', 25, 'IT', 1, 'John Smith', 48000),
	   (102, 'Mia', 'Roberts', 'USA', 27, 'IT', 1, 'John Smith', 52000),
	   (103, 'Oliver', 'Wilson', 'Canada', 26, 'IT', 1, 'John Smith', 50000),
	   (104, 'Sophie', 'Clark', 'UK', 24, 'HR', 2, 'Emma Johnson', 45000),
	   (105, 'Jacob', 'Lewis', 'UK', 28, 'HR', 2, 'Emma Johnson', 47000),
	   (106, 'Chloe', 'Anderson', 'Canada', 29, 'Finance', 3, 'Liam Williams', 58000),
	   (107, 'Lucas', 'Martin', 'Canada', 31, 'Finance', 3, 'Liam Williams', 62000),
	   (108, 'Ava', 'Davis', 'USA', 23, 'IT', 101, 'Ethan Thompson', 42000),
	   (109, 'Noah', 'Garcia', 'USA', 25, 'IT', 102, 'Mia Roberts', 44000),
	   (110, 'Isabella', 'Rodriguez', 'UK', 24, 'HR', 104, 'Sophie Clark', 40000),
	   (111, 'William', 'Martinez', 'UK', 26, 'HR', 105, 'Jacob Lewis', 41000),
	   (112, 'James', 'Hernandez', 'Canada', 27, 'Finance', 106, 'Chloe Anderson', 52000),
	   (113, 'Charlotte', 'Lopez', 'USA', 22, 'IT', 108, 'Ava Davis', 38000),
	   (114, 'Benjamin', 'Gonzalez', 'USA', 23, 'IT', 109, 'Noah Garcia', 39000),
	   (115, 'Amelia', 'Wilson', 'UK', 22, 'HR', 110, 'Isabella Rodriguez', 37000),
	   (116, 'Daniel', 'Taylor', 'Germany', 35, 'Sales', NULL, NULL, 68000),
	   (117, 'Grace', 'Moore', 'France', 33, 'Marketing', NULL, NULL, 72000);

INSERT INTO Managers (ManagerID, FirstName, LastName, Country, Age, Department, Salary) VALUES
	   (11, 'Paul', 'Richardson', 'USA', 47, 'IT', 97000),
	   (12, 'Jennifer', 'Scott', 'UK', 43, 'HR', 86000),
	   (13, 'Kevin', 'Young', 'Canada', 50, 'Finance', 104000);

UPDATE Employees SET ManagerID = 11, ManagerName = 'Paul Richardson' WHERE EmpID IN (7, 17, 27);
UPDATE Employees SET ManagerID = 12, ManagerName = 'Jennifer Scott' WHERE EmpID IN (8, 18, 28);
UPDATE Employees SET ManagerID = 13, ManagerName = 'Kevin Young' WHERE EmpID IN (9, 19, 29);

--1. Aggregate Window Function
--Aggregate window functions calculate aggregates over a window of rows while retaining individual rows. Common aggregate functions include:

--SUM():   Sums values within a window.
--AVG():   Calculates the average value within a window.
--MAX():   Returns the maximum value in the window.
--MIN():   Returns the minimum value in the window.
--COUNT(): Counts the rows within a window.
--Example: Using AVG() to Calculate Average Salary within each department

SELECT FirstName, Age, Department, Salary, 
       AVG(Salary) OVER( PARTITION BY Department) AS Avg_Salary
FROM employees;

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

SELECT FirstName, Department, Salary,
       RANK() OVER(PARTITION BY Department ORDER BY Salary DESC) AS emp_rank
FROM employees;

--2.2 DENSE RANK Function
--When ranking rows in SQL, ties can sometimes create gaps in the ranking sequence. DENSE_RANK() function is used to avoid this it assigns the same rank to rows with equal values but continues ranking with the next consecutive number, without skipping.
--Example: Using DENSE_RANK() to Rank Employees by Salary

SELECT FirstName, Department, Salary,
       DENSE_RANK() OVER(PARTITION BY Department ORDER BY Salary DESC) AS emp_dense_rank
FROM employees;

--2.3 ROW NUMBER Function
--ROW_NUMBER() gives e­ach row a unique number. It numbers rows from one­ to the total rows. The rows are put into groups base­d on their values. Each group is called a partition. In e­ach partition, rows get numbers one afte­r another. No two rows have the same­ number in a partition.
--Example: Using ROW_NUMBER() for Unique Row Numbers

SELECT FirstName, Department, Salary,
       ROW_NUMBER() OVER(PARTITION BY Department ORDER BY Salary DESC) AS emp_row_no
FROM employees;

--2.4 PERCENT RANK Function
--PERCENT_RANK() shows the relative position of a row compared to others in the same partition. The formula is:
--PERCENT_RANK = RANK − 1 / Total Rows in Partition − 1 
--Example: Using PERCENT_RANK() to Find Relative Salary Position

SELECT FirstName, Department, Salary,
       PERCENT_RANK() OVER(PARTITION BY Department ORDER BY Salary DESC) AS emp_percent_rank
FROM employees;