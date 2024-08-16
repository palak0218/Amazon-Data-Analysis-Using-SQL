Amazon Data Analysis Project using SQL

The major aim of this project is to gain insight into the sales data of Amazon to understand the different factors that affect sales of the different branches.
About Data:
This dataset contains sales transactions from three different branches of Amazon, respectively located in Mandalay, Yangon and Naypyitaw. The data contains 17 columns and 1000 rows.
Analysis List
Product Analysis:
Conduct analysis on the data to understand the different product lines, the products lines performing best and the product lines that need to be improved.
Sales Analysis:
This analysis aims to answer the question of the sales trends of product. The result of this can help us measure the effectiveness of each sales strategy the business applies and what modifications are needed to gain more sales.
Customer Analysis:
This analysis aims to uncover the different customer segments, purchase trends and the profitability of each customer segment.
Approach Used:
Data Wrangling: This is the first step where inspection of data is done to make sure NULL values and missing values are detected and data replacement methods are used to replace missing or NULL values. 
1.1 Build a database 
1.2 Create a table and insert the data. 
1.3 Select columns with null values in them. There are no null values in our database as in creating the tables, we set NOT NULL for each field, hence null values are filtered out. 
Feature Engineering: This will help us generate some new columns from existing ones. 
2.1 Add a new column named timeofday to give insight of sales in the Morning, Afternoon and Evening. This will help answer the question on which part of the day most sales are made. 
2.2 Add a new column named dayname that contains the extracted days of the week on which the given transaction took place (Mon, Tue, Wed, Thur, Fri). This will help answer the question on which week of the day each branch is busiest. 
2.3 Add a new column named monthname that contains the extracted months of the year on which the given transaction took place (Jan, Feb, Mar). Help determine which month of the year has the most sales and profit. 
Exploratory Data Analysis (EDA): Exploratory data analysis is done to answer the listed questions and aims of this project.
