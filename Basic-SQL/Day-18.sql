-- Day 18
-- Joins

-- Self Join : Join a table to itself to campare rows within the table

select e.first_name AS employee e , m.first_name AS manager m
from employees e
JOIN employee m ON e.manager_id = m.employee_id ;

-- Join a table of non key column

select o.order_id , c.customer_name 
from orders o
JOIN customers c ON o.customer_zip_code = c.customer_zip_code ;

-- Cross Join : Return a cartesion product of the two tables

select * from employees CROSS JOIN departments ;

-- Left Join with filtering ( Similar to #43 , but a common pattern)

select * from products p
LEFT JOIN sales s 
ON s.product_id = s.product_id 
where s.sales_id is NULL ;

-- Find employees who have not been assigned a projects

select e.first_name , e.last_name 
from employees e 
LEFT JOIN employees_projects ep 
ON e.employee_id = ep.employee_id 
where ep.project_id IS NULL ;
