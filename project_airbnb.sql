use fingertips;

#q1   Import Data from both the .CSV files to create tables, Listings and Booking Details.

select *from listing_details;
select *from booking_details;

#q2  Q2 Write a query to show names from Listings table

select name from listing_details;

#q3 Write a query to fetch total listings from the listings table

select count(id) from listing_details;

#q4 Write a query to fetch total listing_id from the booking_details table

select count(listing_id) from booking_details;

#q5 Write a query to fetch host ids from listings table

select host_id from listing_details;

#q6 Write a query to fetch all unique host name from listings table

select distinct(host_name) from listing_details;

#q7 Write a query to show all unique neighbourhood_group from listings table

select distinct(neighbourhood_group) from listing_details;

#q8 Write a query to show all unique neighbourhood from listings table

select distinct(neighbourhood) from listing_details;

#q9 Write a query to fetch unique room_type from listings tables

select distinct(room_type) from listing_details;

#q10 Write a query to show all values of Brooklyn & Manhattan from listings tables

select *from listing_details;

select *from listing_details
where neighbourhood_group in ('Brooklyn','Manhattan');

#q11 Write a query to show maximum price from booking_details table

select MAX(price) from booking_details;

#q12 Write a query to show minimum price fron booking_details table

select min(price) from booking_details;

#q13 Write a query to show average price from booking_details table

select avg(price) from booking_details;

#q14   Write a query to show minimum value of minimum_nights from booking_details table

select min(minimum_nights) from booking_details;

#q15 Write a query to show maximum value of minimum_nights from booking_details table

select max(minimum_nights) from booking_details;

#q16   Write a query to show average availability_365

select avg(availability_365) from booking_details;

#q17 Write a query to show id , availability_365 and all availability_365 values greater than 300

select listing_id,availability_365 from booking_details
where availability_365 > 300;

#q18  Write a query to show count of id where price is in between 300 to 400

select count(listing_id) from booking_details
where price between 300 and 400;

#q19   Write a query to show count of id where minimum_nights spend is less than 5

select count(listing_id) from booking_details
where minimum_nights < 5;

#q20 Write a query to show count where minimum_nights spend is greater than 100

select count(*) from booking_details
where minimum_nights > 100;

#q21 Write a query to show all data of listings & booking_details

select *from listing_details as l inner join booking_details as b 
on l.id = b.listing_id;

#q22 Write a query to show host name and price

select l.host_name,b.price from listing_details as l inner join booking_details as b 
on l.id = b.listing_id;

#q23 Write a query to show room_type and price

select l.room_type,b.price from listing_details as l inner join booking_details as b 
on l.id = b.listing_id;

#q24   Write a query to show neighbourhood_group & minimum_nights spend

select l.neighbourhood_group,b.minimum_nights from listing_details as l inner join booking_details as b 
on l.id = b.listing_id;

#q25  Write a query to show neighbourhood & availability_365

select l.neighbourhood,b.availability_365 from listing_details as l inner join booking_details as b 
on l.id = b.listing_id;

#q26 Write a query to show total price by neighbourhood_group

select l.neighbourhood_group,sum(b.price) as b_price from listing_details as l inner join booking_details as b  
on l.id = b.listing_id 
group by l.neighbourhood_group;


#q27 Write a query to show maximum price by neighbourhood_group

select l.neighbourhood_group,max(b.price) as max_price from listing_details as l inner join booking_details as b 
on l.id = b.listing_id
group by l.neighbourhood_group;

#q28 Write a query to show maximum night spend by neighbourhood_group

select l.neighbourhood_group,max(b.minimum_nights) as max_nights from listing_details as l inner join booking_details as b  
on l.id = b.listing_id
group by l.neighbourhood_group;

#q29 Write a query to show maximum reviews_per_month spend by neighbourhood

select l.neighbourhood,max(b.reviews_per_month) as max_reviews from listing_details as l inner join booking_details as b  
on l.id = b.listing_id
group by l.neighbourhood;

#q30    Write a query to show maximum price by room type

select l.room_type,max(b.price) as max_price from listing_details as l inner join booking_details as b 
on l.id = b.listing_id
group by l.room_type;

#q31 Write a query to show average number_of_reviews by room_type

select l.room_type,avg(b.number_of_reviews) as avg_reviews from listing_details as l inner join booking_details as b 
on l.id = b.listing_id 
group by l.room_type;

#q32 Write a query to show average price by room type

select l.room_type,avg(b.price) as avg_price from listing_details as l inner join booking_details as b 
on l.id = b.listing_id
group by l.room_type;

#q33 Write a query to show average night spend by room type

select l.room_type,avg(b.minimum_nights) as avg_neights from listing_details as l inner join booking_details as b 
on l.id = b.listing_id
group by l.room_type;

#q34  Write a query to show average price by room type but average price is less than 100

select l.room_type,avg(b.price) as avg_price from listing_details as l inner join booking_details as b 
on l.id = b.listing_id 
group by l.room_type
having avg_price < 100;

#q35 Write a query to show average night by neighbourhood and average_nights is greater than 5

select l.neighbourhood,avg(b.minimum_nights) as avg_nights from listing_details as l inner join booking_details as b 
on l.id = b.listing_id 
group by l.neighbourhood
having avg_nights > 5;

#q36 Write a query to show all data from listings where price is greater than 200 using sub-query.

select *from listing_details 
where id in (select listing_id from booking_details
where price > 200);

#q37 Write a query to show all values from booking_details table where host id is 314941 using sub-query.

select *from booking_details 
where listing_id in (select id from listing_details
where host_id = 314941);

#q38 Find all pairs of id having the same host id, each pair coming once only.

select distinct l1.id , l1.host_id from listing_details as  l1, listing_details as l2
where  l1.host_id = l2.host_id and l1.id  <> l2.id  order by host_id;#<> = not equal to hota he

#q39 Write an sql query to show fetch all records that have the term cozy in name

select *from listing_details
where name like '%cozy%';

#q40 Write an sql query to show price, host id, neighbourhood_group of manhattan neighbourhood_group

select b.price,l.host_id,l.neighbourhood_group from listing_details as l inner join booking_details as b 
on l.id = b.listing_id 
where neighbourhood_group = 'manhattan';

#q41 Write a query to show id , host name, neighbourhood and price but 
#only for Upper West Side & Williamsburg neighbourhood, also make sure price is greater than 100

select l.id,l.host_name,l.neighbourhood,b.price from listing_details as l inner join booking_details b 
on l.id = b.listing_id
where neighbourhood in ('Upper West Side','Williamsburg') and price > 100;

#q42 Write a query to show id , host name, neighbourhood and price for host name Elise and neighbourhood is Bedford-Stuyvesant

select l.id,l.host_name,l.neighbourhood,b.price from listing_details as l inner join booking_details as b 
on l.id = b.listing_id 
where host_name = 'Elise' and neighbourhood = 'Bedford-Stuyvesant';

#q43 Write a query to show host_name, availability_365,minimum_nights only for 100+ availability_365 and minimum_nights

select l.host_name,b.availability_365,b.minimum_nights from listing_details as l inner join booking_details as b 
on l.id = b.listing_id
where availability_365 > 100 and minimum_nights > 100;

#q44 Write a query to show to fetch id , host_name , number_of_reviews, and reviews_per_month but 
#show only that records where number of reviews are 500+ and review per month is 5+

select l.id,l.host_name,b.number_of_reviews,b.reviews_per_month from listing_details as l inner join booking_details as b 
on l.id = b.listing_id 
where number_of_reviews > 500 and reviews_per_month > 5;

#q45 Write a query to show neighbourhood_group which have most total number of review

select l.neighbourhood_group,sum(b.number_of_reviews) as total_reviews from listing_details as l inner join booking_details as b 
on l.id = b.listing_id 
group by l.neighbourhood_group
order by total_reviews desc limit 1;

#q46  Write a query to show host name which have most cheaper total price

select l.host_name,sum(b.price) as cheaper_price from listing_details as l inner join booking_details as b
on l.id = b.listing_id
group by l.host_name
order by cheaper_price asc limit 1;

#q47  Write a query to show host name which have most costly total price

select l.host_name,sum(b.price) as costly_price from listing_details as l inner join booking_details as b
on l.id = b.listing_id
group by l.host_name
order by costly_price  desc limit 1;

#q48 Write a query to show host name which have max price using sub-query

select l.host_name,b.price
from listing_details as l inner join booking_details as b 
on l.id = b.listing_id
where b.price in (select max(price) from booking_details);

#q49   Write a query to show neighbourhood_group where price is less than 100

select l.neighbourhood_group,b.price from listing_details as l inner join booking_details as b 
on l.id = b.listing_id 
where b.price < 100;

#q50  Write a query to find max price, average availability_365 for each room type and order in ascending by maximum price.

 select l.room_type,max(b.price) as max_price,avg(b.availability_365) as avg_365 from listing_details as l inner join
 booking_details as b
 on l.id = b.listing_id
 group by l.room_type
 order by max_price asc;
 



