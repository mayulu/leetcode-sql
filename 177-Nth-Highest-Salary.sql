#1. no 
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  SET N = N-1;
  RETURN (
      # Write your MySQL query statement below.
      select Salary from (select distinct salary from Employee) t order by Salary desc limit N-1, 1
  );
END

#2.
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  SET N = N-1;
  RETURN (
      # Write your MySQL query statement below.
    SELECT CASE 
    WHEN COUNT(Salary) >= 1 THEN (
      SELECT DISTINCT Salary 
      FROM Employee
      ORDER BY Salary DESC 
      LIMIT N, 1) 
    ELSE NULL
    END
    FROM Employee
  );
END