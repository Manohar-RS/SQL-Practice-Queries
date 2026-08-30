-- Day 23
-- Subqueries

-- Find the names of the departments with the highest average salary

select department_name 
from departments
where department_id = ( select department_id from employees GROUP BY department_id ORDER BY AVG(salary) DESC LIMIT 1 ) ;

-- Find customer who have order the specific product

where customer_name 
from customer 
where customer_id 
IN ( select customer_id from orders where product_id = 123 ) ;

-- Find the nuber of employee who earn more than average salary 

select COUNT(*) 
from employees where salary > ( select AVG(salary) from employees ) ;

-- Get a list of customer who have not placed an orders

select customer_name 
from customers where customer_id 
NOT IN ( select DISTINCT customer_id from orders ) ;

-- Find the employee with the less than the average of their job title

select e.first_name ,  e.salary , e.job_title
from employees e 
where e.salary < ( select AVG(salary) from employees where job_title = e.job_title ) ;

