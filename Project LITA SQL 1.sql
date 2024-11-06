create database LITA_PROJECT
SELECT * FROM [dbo].[Sales_Data]

------Retrieve the Total Sales for each Product Category -----
Select * from [dbo].[Sales_Data]
Select Product, sum(Total_Revenue) AS Total_Sales from [dbo].[Sales_Data]
Group by product

-----Find the Number of sales Transactions in each Region------
Select Region, count(OrderID) as No_of_Sales_Transactions from [dbo].[Sales_Data]
Group by Region

--------Find the Highest-Selling product by Total sales value--------
Select Top 1 product, sum(Total_Revenue) As highestselling From [dbo].[Sales_Data]
Group by product 

--------Calculate Total revenue per Product -------
Select Product, sum(Total_Revenue) as Total_Revenue from [dbo].[Sales_Data]
Group by Product 
order by 2 desc

-------Calculate Monthly Sales Totals for the current year-----
select Orderdate, sum(Total_Revenue) As Monthly_Sales from [dbo].[Sales_Data]
where Orderdate between '2024-01-01' and '2024-12-31'
group by orderdate 
order by orderdate

-------Find the Top 5 Customers by Total purchase amount---------
select top 5 customer_Id, sum(Total_Revenue) as Total_Purchase from [dbo].[Sales_Data]
group by customer_id
order by Total_Purchase desc

----------Calculate the Percentage of Total Sales contributed by each Region -------
with Region As (
select Region, sum(Total_Revenue) as Sales from [dbo].[Sales_Data]
group by Region)
select region,(sales * 100.0 / (select sum(Total_Revenue) from [dbo].[Sales_Data])) as Sales_Percentage
from Region
Order By Sales_Percentage desc

---------identify products with no sales in the last quarter-----
SELECT Product FROM [dbo].[Sales_Data]
WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Sales_Data]
WHERE Product = Product
AND OrderDate BETWEEN '2024-01-01' and '2024-12-31'
 )



