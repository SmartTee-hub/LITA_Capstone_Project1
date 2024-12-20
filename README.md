# LITA_Capstone_Project1
### Project Title: Sales Performance Analysis for a Retail Store

[Project Overview](#project-Overview)

[Data Sources](#Data-Sources)

[Tools Used](Tools-Used)

[Data Cleaning and preparations](Data-Cleaning-and-preparations)

[Data Analysis](#Data-Analysis)

[Data Visualization](Data-Visualization)

[Result and Findings](Result-and-Findings)

[Recommendation](Recommendation)

[Contribution](Contribution)
### Project Overview
---
This project leverages Excel, SQL, and Power BI to analyze Sales Performance Analysis for a Retail Store, uncovering key trends such as top-selling products, regional performance, monthly sales trends and empowering data-driven decision-making. By combining data cleaning, transformation, and visualization techniques, this project aims to produce an interactive Power BI dashboard that highlights these findings.

### Data Sources
---
The primary source of Data used here is Data sale.csv and this is an open source data that was given by Incubator Hub. 

### Tools Used
---
- Microsoft Excel is a versatile tool used for a wide range of numerical tasks, including: [Download here](https://www.microsoft.com)
  1. for Data cleaning
  2. For Data Analysis 
  3. Financial Modeling
  4. For Data Management
  5. for Data visualization.
     
- SQL - Structured Query Language SQL is a powerful language for managing and manipulating relational databases. Here are some of its key uses:
   1. Data Retrieval
   2. Data Manipulation
   3. Data Definition
   4. Data Control.
      
- Power BI - is a powerful Business Intelligence tool used for:
  1. Data Integration
  2. Data Transformation
  3. Data Modeling
  4. Data Visualization
  5. Data Analysis
  6. Data Storytelling.

### Data Cleaning and preparations
---
  In the initial phase of the data cleansing and preparations, we perform the following action;
  1. Data loading and inspection
  2. handling missing variables
  3. Data cleansing and formatting.

 ### Exploratory Data Analysis
 ---
EDA involved the exploring of the data to answer some questions about the data such as;
- What is the overall Sales Trend
- Which product are top sellers
- What is the Regional Performance
- What is the Monthly Sales Trends?

  ### Data Analysis
---
This is where we include some basic lines of code or queries or even some of the DAX expressions used during your analysis;

``` SQL
SELECT * FROM [dbo].[Sales_Data]

Select * from [dbo].[Sales_Data]
Select Product, sum(Total_Revenue) AS Total_Sales from [dbo].[Sales_Data]
Group by product


Select Region, count(OrderID) as No_of_Sales_Transactions from [dbo].[Sales_Data]
Group by Region


Select Top 1 product, sum(Total_Revenue) As highestselling From [dbo].[Sales_Data]
Group by product 


Select Product, sum(Total_Revenue) as Total_Revenue from [dbo].[Sales_Data]
Group by Product 
order by 2 desc


select Orderdate, sum(Total_Revenue) As Monthly_Sales from [dbo].[Sales_Data]
where Orderdate between '2024-01-01' and '2024-12-31'
group by orderdate 
order by orderdate


select top 5 customer_Id, sum(Total_Revenue) as Total_Purchase from [dbo].[Sales_Data]
group by customer_id
order by Total_Purchase desc


with Region As (
select Region, sum(Total_Revenue) as Sales from [dbo].[Sales_Data]
group by Region)
select region,(sales * 100.0 / (select sum(Total_Revenue) from [dbo].[Sales_Data])) as Sales_Percentage
from Region
Order By Sales_Percentage desc


SELECT Product FROM [dbo].[Sales_Data]
WHERE NOT EXISTS (SELECT 1 FROM [dbo].[Sales_Data]
WHERE Product = Product
AND OrderDate BETWEEN '2024-01-01' and '2024-12-31'
 )
```
### Data Visualization
---
![Project 1 Table](https://github.com/user-attachments/assets/720398e2-f013-4271-915f-944d3f50d47a)
![Project 1 Pivot](https://github.com/user-attachments/assets/8888dadb-1b83-4d4e-a209-f3360c101364)
![Project 1 Visual](https://github.com/user-attachments/assets/6f5d82ff-e42f-4098-8b03-e8c44eaf64e1)
![Project 1 PowerBI](https://github.com/user-attachments/assets/93ec61fa-2524-4055-98fa-0ff8ee0998f7)

### Result and Findings
---
The analysis reveals that Shoes was the top-selling product, with the South region demonstrating the highest demand, purchasing 546,300 units, significantly more than the East (37,200) and West (29,880) regions.

The analysis indicates that the South region exhibited the highest overall Regional sales performance, generating a total revenue of 927,820. This significantly surpasses the sales figures for the East (485,925), North (387,000), and West (300,345) regions.This suggests a strong demand for various product categories, including shoes, socks, gloves, hats, jackets, and shirts, within the South region.

The analysis reveals that February was the peak sales month in both 2023 and 2024, with sales of 247,500 and 298,800, respectively. In contrast, the lowest sales were recorded in April 2023 (7,425) and July 2024 (37,200). The total annual sales for 2023 and 2024 were 1,105,330 and 995,760, respectively and the Grand Total is 2,101,090.

### Recommendation
---
Capitalize on South's shoe demand, diversify product offerings in other regions, leverage peak sales periods, optimize inventory, analyze seasonal trends, and continuously adapt to market changes.
### Contribution
---
Identifying the South region as a key market for shoes, suggesting product diversification for other regions, highlighting the importance of leveraging peak sales months and optimizing inventory management, and emphasizing the need for data-driven decision making, customer-centric approaches, strong partnerships, and continuous improvement.
