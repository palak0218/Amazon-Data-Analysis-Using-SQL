select * from amazon_data.sales;

-- Business Que
-- 1. What is the count of distinct cities in the dataset?
select distinct(city) from amazon_data.sales;

-- 2. For each branch, what is the corresponding city?
select distinct branch, city from amazon_data.sales;

-- 3. What is the count of distinct product lines in the dataset?
select count(distinct 'Product line' ) from amazon_data.sales;

-- 4. Which payment method occurs most frequently?
SELECT 
    payment, COUNT(*) AS frequency
FROM
    amazon_data.sales
GROUP BY payment
ORDER BY frequency DESC
LIMIT 1;

-- 5. Which product line has the highest sales?
select 'product line' , count(*) as total_sales
from amazon_data.sales
group by 'product line'
order by 'total_sales'
desc;

-- 6. How much revenue is generated each month?
select monthname, sum(total) as revenue
from amazon_data.sales
group by monthname
order by revenue desc;

-- 7. In which month did the cost of goods sold reach its peak?
select monthname, sum(cogs) as total_cogs
from amazon_data.sales
group by monthname
order by total_cogs desc;

-- 8. Which product line generated the highest revenue?
select 'Product line' , sum(total) as highest_revenue from amazon_data.sales
group by 'Product_line'
order by highest_revenue desc;

-- 9. In which city was the highest revenue recorded?
SELECT 
    city, SUM(total) AS highest_revenue
FROM
    amazon_data.sales
GROUP BY city
ORDER BY highest_revenue DESC;







