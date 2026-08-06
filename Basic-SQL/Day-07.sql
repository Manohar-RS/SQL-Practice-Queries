-- Day 07
-- Filtering using IN & NOT IN keyword

-- Filter by a list of values using IN

select * from employees where department IN ('sales', 'marketing', 'IT');

-- Exclude a list of values using NOT IN

select * from employees where department NOT IN ('sales', 'marketing');
