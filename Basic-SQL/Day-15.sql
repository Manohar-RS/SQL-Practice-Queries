-- Day 15
-- Joins

-- Inner Joins : Return matching rows from return rows

select e.first_name , d.department_name from employees e INNER JOIN department d ON e.department_id = d.department_id;

-- Left Join :  Return all rows from the left table , and the matched rows from the right tables

select e.first_name , d. department_name from employees e LEFT JOIN department d ON e.department_id = d.department_id;
