-- Day 16
-- Joins

-- Left Join to find rows in the left table with no match in the right

select e.first_name from employees e LEFT JOIN departments d ON e.department_id = d.department_id where d.department_id IS NULL;

-- Right Join : Return all rows from the right table , and the matched rows from the left table

select e.first_name , d.department_name from employees e RIGHT JOIN departments d ON e.department_id = d. department_id;
