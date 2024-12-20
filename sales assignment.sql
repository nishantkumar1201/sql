create database sales2;
use sales2;
create table sales1(Saleid int,Productid int,Customerid int,Saledate date ,quantity int, unitPrice int,Region varchar(60));

insert into sales1(Saleid ,Productid ,Customerid ,Saledate,quantity,unitPrice ,Region)values(1,101,1001,"2024-01-05",5,200,"North");
insert into sales1(Saleid ,Productid ,Customerid ,Saledate,quantity,unitPrice ,Region)values(2,102,1002,"2024-01-10",5,150,"East");
insert into sales1(Saleid ,Productid ,Customerid ,Saledate,quantity,unitPrice ,Region)values(3,103,1003,"2024-02-15",2,300,"North");
insert into sales1(Saleid ,Productid ,Customerid ,Saledate,quantity,unitPrice ,Region)values(4,104,1001,"2024-2-20",7,250,"west");
insert into sales1(Saleid ,Productid ,Customerid ,Saledate,quantity,unitPrice ,Region)values(5,101,1004,"2024-03-05",1,200,"east");
select * from sales1;
#Write a query to calculate the total sales (Quantity * UnitPrice) for each product.
select productid,sum(Quantity * UnitPrice) as total_sales
from sales1
group by productid
order by total_sales DESC;
#Write a query to find the total number of products sold in each region. 
select region,sum(quantity)as products_sold
from sales1
group by region;
#Write a query to get the average sales amount per product.
select productid,sum(unitPrice)as average_sales
from sales1
group by productid;
#Find the regions where total sales are more than 300.
select region,sum(unitPrice)as total_sales
from sales1
group by region
having sum(unitPrice)>300;
#Write a query to get the maximum quantity sold for each product. 
select productid,max(quantity)as max_quantity_sold
from sales1
group by productid;
select * from sales1;
#Write a query to calculate the average quantity of products sold per region.
 select region,avg(quantity)as product_sold_per_region
 from sales1
 group by region;
 select * from sales1;
#Find the product IDs that have generated a total sales amount of more than 1000.
select productid,sum(unitPrice) as total_sales
from sales1
group by productid
having sum(unitPrice)>1000 ;
#Write a query to get the total number of sales (rows) made for each customer. 
SELECT customerid, COUNT(*) AS total_sales
FROM sales1
GROUP BY customerid;
#Find the products for which the average quantity sold is less than 5. 
select productid,avg(quantity) as quantity_sold
from sales1
group by productid
having avg (quantity) <5;
#Write a query to find the sum of total sales for each customer in each region. 
SELECT customerid, region, SUM(unitPrice) AS total_sales
FROM sales1
GROUP BY customerid, region;
#Write a query to calculate the total sales for each month. 
SELECT DATE_FORMAT(saledate, '%Y-%m') AS month, SUM(unitPrice) AS total_sales
FROM sales1
GROUP BY DATE_FORMAT(saledate, '%Y-%m')
ORDER BY month;

#Find the regions where the average unit price is more than 200. 
select region,avg(unitPrice) as avg_unit
from sales1
group by region;
#Write a query to get the minimum and maximum quantity sold per region.  
select  region,min(quantity) as quantity_sold, max(quantity) as max_sold
from sales1
group by region;
#Find the customers who have made more than 2 purchases.
select customerid ,COUNT(*)aS  total_purchases
FROM sales1
GROUP BY customerid
HAVING COUNT(*) > 2;


#Write a query to find the total sales for each product and filter only those products where the total sales exceed 1500.  
SELECT productid, SUM(unitPrice) AS total_sales
FROM sales1
GROUP BY productid
HAVING SUM(unitPrice)>1500;

