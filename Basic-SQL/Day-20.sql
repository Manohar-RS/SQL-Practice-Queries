-- Day 20
-- Join

-- Join on a non-equi conditions

select e.employee_id , h.salary_grade 
from employees e
JOIN salary_grades h ON e.salary
BETWEEN h.min_salary AND h.max_salary ;

-- Filter a join table using WHERE

select e.first_name , d.department_name 
FROM employees e 
JOIN departments d 
ON e.department_id = d.department_id 
WHERE d.location_city = 'New York' ;

-- Perform on aggregations on a joined table

select d.department_name , AVG(e.salary) 
FROM employees e 
JOIN departments d 
ON e.department_id = d.department_id 
GROUP BY d.department_name ;

-- Join on a common column with different names

select a.order_id , b.item_name 
FROM table_a a
JOIN table_b b 
ON a.product_id = b.item_id ;
