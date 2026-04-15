SELECT * FROM public.retail_sales
LIMIT 100


select * from retail_sales
where
transaction_id is null
or
sale_date is null
or
sale_time is null
or
customer_id is null
or
gender is null
or
age is null
or
category is null
or
quantiy is null
or
price_per_unit is null
or
cogs is null
or
total_sale is null;




delete from retail_sales
where
transaction_id is null
or
sale_date is null
or
sale_time is null
or
customer_id is null
or
gender is null
or
age is null
or
category is null
or
quantiy is null
or
price_per_unit is null
or
cogs is null
or
total_sale is null;

select count(*) from retail_sales
 
 --data exploration
-- how many sales we have
 select count(*) total_sale from retail_sales

-- how many unique customers we have
select count(distinct customer_id) as total_sale from retail_sales

-- how many category we have
select count(distinct category) as total_sale from retail_sales

select distinct category from retail_sales

--- data analysis and business key problems and answers
-- write a sql query to retrieve all columns for sales made on '2022-11-05'
select * from retail_sales
where sale_date = '2022-11-05';

-- write a sql query to retrieve all transaction where the category is 'clothing' and the quantity sold is more than 3 in the month of nov-2022
-- category is 'clothing'
select category,sum(quantiy) from retail_sales
where category = 'Clothing'
group by 1

-- the quantity sold is more than 3
select * from retail_sales
where
category = 'Clothing'
and
to_char(sale_date,'YYYY-MM') = '2022-11'
and
quantiy >= 4

--Q3: write a sql query to calculate the total sales for each category
select category, sum(total_sale) as net_sale, count(*) as total_orders
from retail_sales
group by 1

-- Q4 write a sql query to find the average age of customers who perchased items the 'beauty' category
select avg(age) as avg_age from retail_sales
where category = 'Beauty';

--Q5: write a sql query to find all transactions where the total_sale is greater than 1000.
select * from retail_sales
where total_sale > 1000

--Q6: write a sql query to find the total number of transactions(transactions_id) made by each gender in each group
select category,gender , count(*) as total_trans from retail_sales
group by category,gender

--Q7: write a sql query to calculate the average sale for each month,find out best selling month in each year

select 
extract(Year from sale_date) as year,
extract(month from sale_date) as month,
avg(total_sale) as avg_sale,
rank() over (partition by extract(year from sale_date) order by avg(total_sale) desc) as rank
from retail_sales
group by 1,2
order by 1,3 desc


--Q8: write a sql query to find the top 5 customers based on the highest total_sales

select 
customer_id,sum(total_sale) as total_sales
from retail_sales
group by 1
order by 2 DESC

--Q9: write a sql query to find the number of unique customers who purchased items from each category
select category,count(distinct customer_id)
from retail_sales
group by 1

--Q10: write a sql query to create each shift and number of orders(example morning <= 12,afternoon between 12 1& 17,evening>17)
select*from retail_sales









 
 





















