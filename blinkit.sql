use rahil;

#q.1 Import Data from table Grocery Sales using the provided CSV File (table ka name mene grocery sales ke badle blk rakhahe)
select *from blk;

#q.2 Write an SQL query to show all Item_Identifier
select item_identifier from blk;

#q.3 Write an SQL query to show count of total Item_Identifier.
select count(item_identifier) from blk;

#q.4 Write an SQL query to show maximum Item Weight
select max(item_weight) from blk;

#q.5 Write an SQL query to show minimum Item Weight
select min(item_weight) from blk;

#q.6 Write an SQL query to show average Item_Weight.
select avg(item_weight) from blk;

#q.7 Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Low Fat.
select count(item_fat_content) from blk where item_fat_content = 'low fat';

#q.8 Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Regular.
select count(item_fat_content) from blk where item_fat_content = 'regular';

#q.9 Write an SQL query to show maximum Item_MRP
select max(item_mrp) from blk;

#q.10 Write an SQL query to show minimum Item_MRP
select min(item_mrp) from blk;

#q.11 Write an SQL query to show Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP whose Item_MRP is greater than 200
select item_identifier,item_fat_content,item_type,item_mrp from blk where item_mrp > 200;

#q.12 Write an SQL query to show maximum Item_MRP WHERE Item_Fat_Content is Low Fat
select max(item_mrp) from blk where item_fat_content = 'low fat';

#q.13 Write an SQL query to show minimum Item_MRP whose Item_Fat_Content is Low Fat
select min(item_mrp) from blk where item_fat_content = 'low fat';

#q.14 Write an SQL query to show ALL DATA WHERE item MRP is BETWEEN 50 to 100
select *from blk where item_mrp between 50 and 100;

#q.15 Write an SQL query to show ALL UNIQUE value of Item_Fat_Content
select distinct(item_fat_content) from blk;

#q.16 Write an SQL query to show ALL UNIQUE value of  Item_Type
select distinct(item_type) from blk;

#q.17 Write an SQL query to show ALL DATA in descending ORDER by Item MRP
select *from blk order by item_mrp desc;

#q.18 Write an SQL query to show ALL DATA in ascending ORDER by Item_Outlet_Sales
select *from blk order by item_outlet_sales asc;

#q.19  Write an SQL query to show ALL DATA in ascending by Item_Type
select *from blk order by item_type asc;

#q.20 Write an SQL query to show DATA of item_type dairy & Meat
select *from blk where item_type in ('dairy','meat');

#q.21 Write an SQL query to show ALL UNIQUE value of Outlet_Size
select distinct(outlet_size) from blk;

#q.22 Write an SQL query to show ALL UNIQUE value of Outlet_Location_Type
select distinct(outlet_location_type) from blk;

#q.23   Write an SQL query to show ALL UNIQUE value of Outlet_Type
select distinct(outlet_type) from blk;

#q.24 Write an SQL query to show count of number of items by Item_Type  and order it in descending order
select item_type,count(item_identifier) no_of_item
from blk
group by item_type order by no_of_item desc;

#q.25 Write an SQL query to show count of number of items by Outlet_Size and ordered it in ascending order
select outlet_size,count(item_identifier) no_of_item
from blk 
group by outlet_size 
order by no_of_item asc;

#Q.26 Write an SQL query to show count of number of items by Outlet_Type  and ordered it in descending order.
select outlet_type,count(item_identifier) no_of_item
from blk  
group by outlet_type 
order by no_of_item desc;

#q.27   Write an SQL query to show count of items by Outlet_Location_Type and order it in descending order
select outlet_location_type,count(item_identifier) no_of_item
from blk 
group by outlet_location_type order by no_of_item desc;

#q.28 Write an SQL query to show maximum MRP by Item_Type
select item_type,max(item_mrp)max_mrp
from blk 
group by item_type;

#29. Write an SQL query to show minimum MRP by Item_Type
select item_type,min(item_mrp) min_mrp
from blk 
group by item_type;

#q.30   Write an SQL query to show minimum MRP by Outlet_Establishment_Year and order it in descending order.
select outlet_establishment_year,min(item_mrp) min_mrp
from blk 
group by outlet_establishment_year 
order by min_mrp desc;

#q.31 Write an SQL query to show maximum MRP by Outlet_Establishment_Year and order it in descending order
select outlet_establishment_year,max(item_mrp)max_mrp
from blk 
group by outlet_establishment_year order by max_mrp desc;

#q.32 Write an SQL query to show average MRP by Outlet_Size and order it in descending order.
select outlet_size,avg(item_mrp) avg_mrp
from blk 
group by outlet_size 
order by avg_mrp desc;

#q.33 Write an SQL query to Average MRP by Outlet_Type and ordered in ascending order.
select outlet_type,avg(item_mrp) avg_mrp
from blk 
group by outlet_type 
order by avg_mrp asc;

#q.34  Write an SQL query to show maximum MRP by Outlet_Type
select outlet_type,max(item_mrp)  max_mrp
from blk 
group by outlet_type; 

#q.35 Write an SQL query to show maximum Item_Weight by Item_Type
select item_type,max(item_weight)max_weight
from blk 
group by item_type
order by max_weight desc;

#q.36 Write an SQL query to show maximum Item_Weight by Outlet_Establishment_Year
select outlet_establishment_year,max(item_weight)MAX_weight
from blk 
group by outlet_establishment_year 
order by max_weight desc;

#q.37 Write an SQL query to show minimum Item_Weight by Outlet_Type
select outlet_type,min(item_weight) min_weight
from blk 
group by outlet_type;

#q.38 Write an SQL query to show average Item_Weight by Outlet_Location_Type and arrange it by descending order
select outlet_location_type,avg(item_weight) avg_weight
from blk 
group by outlet_location_type 
order by avg_weight desc;

#q.39 Write an SQL query to show maximum Item_Outlet_Sales by Item_Type
select item_type,max(item_outlet_sales) max_item_outlet_sales
from blk 
group by item_type;

#40.Write an SQL query to show minimum Item_Outlet_Sales by Item_Type

select item_type,min(item_outlet_sales) min_item_outlet_sales
from blk 
group by item_type;

#q.41 Write an SQL query to show minimum Item_Outlet_Sales by Outlet_Establishment_Year
select outlet_establishment_year,min(item_outlet_sales) min_item_outlet_sales
from blk 
group by outlet_establishment_year;

#q.42 Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Establishment_Year and order it by descending order
select outlet_establishment_year,max(item_outlet_sales) max_item_outlet_sales
from blk 
group by outlet_establishment_year
order by max_item_outlet_sales desc;

#q.43  Write an SQL query to show average Item_Outlet_Sales by Outlet_Size and order it it descending order
select outlet_size,avg(item_outlet_sales) avg_sales
from blk 
group by outlet_size 
order by avg_sales desc;

#q.44 Write an SQL query to show average Item_Outlet_Sales by Outlet_Type
select outlet_type,avg(item_outlet_sales)avg_sales
from blk 
group by outlet_type;

#q.45 Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Type
select outlet_type,max(item_outlet_sales)max_sales
from blk 
group by outlet_type;

#q.46 Write an SQL query to show total Item_Outlet_Sales by Item_Type
select item_type,sum(item_outlet_sales)sum_sales
from blk 
group by item_type;

#q.47 Write an SQL query to show total Item_Outlet_Sales by Item_Fat_Content
select item_fat_content,sum(item_outlet_sales)sum_sales
from blk 
group by item_fat_content;

#q.48 Write an SQL query to show maximum Item_Visibility by Item_Type
select item_type,max(item_visibility) max_visibility
from blk 
group by item_type;

#q.49  Write an SQL query to show Minimum Item_Visibility by Item_Type
select item_type,min(item_visibility) min_visibility
from blk 
group by item_type;

#q.50 Write an SQL query to show total Item_Outlet_Sales by Item_Type but only WHERE Outlet_Location_Type is Tier 1
select item_type,sum(item_outlet_sales) sum_sales
from blk where outlet_location_type = 'tier 1'
group by item_type;

#q.51 Write an SQL query to show total Item_Outlet_Sales by Item_Type WHERE Item_Fat_Content is ONLY Low Fat & LF
select Item_Type,sum(Item_Outlet_Sales) as sum_ios
from blk  where Item_Fat_Content in ("low fat","LF")
group by Item_Type;



 




