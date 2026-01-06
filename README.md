SQL Project Blinkit – Grocery Product Analysis
 

Description

 

Blinkit is a reputed online grocery store that uses MySQL to analyze their data and make informed, data-driven decisions. By leveraging MySQL, they track sales trends, analyze customer behavior, and identify areas for improvement. For instance, they analyze sales data for a particular product category or compare sales figures across different outlets to identify areas where they need to focus their efforts to increase sales.

 

In addition, Blinkit uses MySQL to gather data on customer behavior and preferences. They analyze purchase histories to identify which products are frequently bought together and track customer feedback to gain insights into what their customers are looking for in a grocery store. By utilizing MySQL to analyze their data, Blinkit gains valuable insights into their business operations and makes informed decisions that improve their operations and customer satisfaction.

 



 


In our Case study Blinkit: Grocery Product Analysis, we have a table named 'Grocery Sales' with 12 columns including Item_Identifier, Item_Weight, Item_Fat_Content, Item_Visibility, Item_Type, Item_MRP, Outlet_Identifier, Outlet_Establishment_Year, Outlet_Size, Outlet_Location_Type, Outlet_Type and Item_Outlet_Sales. This table contains data on the sales of various grocery items across different outlets of Blinkit.

 

Using SQL queries in this case study, you'll gain insights into customer behavior and preferences like frequently purchased items, sales trends for specific categories, and customer feedback. These insights will help you improve operations and customer satisfaction, such as increasing sales, improving product offerings based on customer preferences, and enhancing store layout and product placement.

 

The table Grocery Sales is a .CSV file and has the following columns, details of which are as follows:

 

·       Item_Identifier: A unique ID for each product in the dataset.

·       Item_Weight: The weight of the product.

·       Item_Fat_Content: Indicates whether the product is low fat or not.

·       Item_Visibility: The percentage of the total display area in the store that is allocated to the specific product.

·       Item_Type: The category or type of product.

·       Item_MRP: The maximum retail price (list price) of the product.

·       Outlet_Identifier: A unique ID for each store in the dataset.

·       Outlet_Establishment_Year: The year in which the store was established.

·       Outlet_Size: The size of the store in terms of ground area covered.

·       Outlet_Location_Type: The type of city or region in which the store is located.

·       Outlet_Type: Indicates whether the store is a grocery store or a supermarket.

·       Item_Outlet_Sales: The sales of the product in the particular store. This is the outcome variable that we want to predict.

Questions:

 

1.           Import Data from table Grocery Sales using the provided CSV File.

2.           Write an SQL query to show all Item_Identifier

3.           Write an SQL query to show count of total Item_Identifier.

4.           Write an SQL query to show maximum Item Weight.

5.           Write an SQL query to show minimum Item Weight.

6.           Write an SQL query to show average Item_Weight.

7.           Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Low Fat.

8.           Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Regular.

9.           Write an SQL query to show maximum Item_MRP

10.      Write an SQL query to show minimum Item_MRP

11.      Write an SQL query to show Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP whose Item_MRP is greater than 200.

12.      Write an SQL query to show maximum Item_MRP WHERE Item_Fat_Content is Low Fat

13.      Write an SQL query to show minimum Item_MRP whose Item_Fat_Content is Low Fat

14.      Write an SQL query to show ALL DATA WHERE item MRP is BETWEEN 50 to 100

15.      Write an SQL query to show ALL UNIQUE value of Item_Fat_Content

16.      Write an SQL query to show ALL UNIQUE value of  Item_Type

17.      Write an SQL query to show ALL DATA in descending ORDER by Item MRP

18.      Write an SQL query to show ALL DATA in ascending ORDER by Item_Outlet_Sales

19.      Write an SQL query to show ALL DATA in ascending by Item_Type

20.      Write an SQL query to show DATA of item_type dairy & Meat

21.      Write an SQL query to show ALL UNIQUE value of Outlet_Size

22.      Write an SQL query to show ALL UNIQUE value of Outlet_Location_Type

23.      Write an SQL query to show ALL UNIQUE value of Outlet_Type

24.      Write an SQL query to show count of number of items by Item_Type  and order it in descending order

25.      Write an SQL query to show count of number of items by Outlet_Size and ordered it in ascending order

26.      Write an SQL query to show count of number of items by Outlet_Type  and ordered it in descending order.

27.      Write an SQL query to show count of items by Outlet_Location_Type and order it indescending order

28.      Write an SQL query to show maximum MRP by Item_Type

29.      Write an SQL query to show minimum MRP by Item_Type

30.      Write an SQL query to show minimum MRP by Outlet_Establishment_Year and order it in descending order.

31.      Write an SQL query to show maximum MRP by Outlet_Establishment_Year and order it in descending order.

32.      Write an SQL query to show average MRP by Outlet_Size and order it in descending order.

 

33.      Write an SQL query to Average MRP by Outlet_Type and ordered in ascending order.

34.      Write an SQL query to show maximum MRP by Outlet_Type

35.      Write an SQL query to show maximum Item_Weight by Item_Type

36.      Write an SQL query to show maximum Item_Weight by Outlet_Establishment_Year

37.      Write an SQL query to show minimum Item_Weight by Outlet_Type

38.      Write an SQL query to show average Item_Weight by Outlet_Location_Type and arrange it by descending order

39.      Write an SQL query to show maximum Item_Outlet_Sales by Item_Type

40.      Write an SQL query to show minimum Item_Outlet_Sales by Item_Type

41.      Write an SQL query to show minimum Item_Outlet_Sales by Outlet_Establishment_Year

42.      Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Establishment_Year and order it by descending order

43.      Write an SQL query to show average Item_Outlet_Sales by Outlet_Size and order it it descending order

44.      Write an SQL query to show average Item_Outlet_Sales by Outlet_Type

45.      Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Type

46.      Write an SQL query to show total Item_Outlet_Sales by Item_Type

47.      Write an SQL query to show total Item_Outlet_Sales by Item_Fat_Content

48.      Write an SQL query to show maximum Item_Visibility by Item_Type

49.      Write an SQL query to show Minimum Item_Visibility by Item_Type

50.      Write an SQL query to show total Item_Outlet_Sales by Item_Type but only WHERE Outlet_Location_Type is Tier 1

51.      Write an SQL query to show total Item_Outlet_Sales by Item_Type WHERE Item_Fat_Content is ONLY Low Fat & LF
