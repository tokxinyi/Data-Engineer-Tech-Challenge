 -- list of our customers and their spending
select customer_name, sum(price) as spending
from sales_transaction s
join car c
on s.car_sold = c.serial_number
group by customer_name;

-- top 3 car manufacturers that customers bought by sales (quantity) and the sales number for it in the current month.
-- assuming current month is May
select manufacturer, count(manufacturer) as quantity, sum(price) as sales
from sales_transaction s
join car c
on s.car_sold = c.serial_number
where extract(month from txn_date) = 5
group by manufacturer
order by sales desc
limit 3;
