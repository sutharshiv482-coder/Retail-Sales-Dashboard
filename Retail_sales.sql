Create database sales;
use sales;

# select all data
select * from retail;

# select product generating sales and  profit
SELECT Category,sum(Sales),sum(Profit)
from  retail
group by Category;

# Which customer segment is most valuable?
select Customer_Name,sum(Sales) as total_sales
from retail
group by Customer_Name
order by total_sales desc;
