-- Day 17
-- Joins

-- Full Outer Join : Return all rows when there is a match in either table

select e.first_name , d.department_name
from employees e 
FULL Outer Join departments d ON e.department_id = d.department_id ;


-- Join three tables

select e.first_name , p.project_name , d.department_name  
from employees e 
JOIN projects p ON e.employee_id = p.employee_id 
JOIN departments d ON d.department_id = d.department_id ;
