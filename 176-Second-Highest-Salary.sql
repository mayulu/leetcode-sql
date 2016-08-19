# 1. Distinct limit
select distinct salary as SecongHighSalary
from Employee 
order by salary desc 
limit 1, 1;

#2. Subquery
select max(salary)
from Employee
where salary < (select max(salary) from Employee);
