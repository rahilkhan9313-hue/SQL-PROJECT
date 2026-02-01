use fingertips;

select *from uber_ride;
select *from uber_driver;
select *from uber_passenger;

#basic level

#q1 What are & how many unique pickup locations are there in the dataset?
select distinct(pickup_location) from uber_ride;

#q2 What is the total number of rides in the dataset?
select count(total_rides) from uber_driver;

#q3 Calculate the average ride duration.
select avg(ride_duration) from uber_ride;

#q4 List the top 5 drivers based on their total earnings.
select *from uber_driver 
order by earnings desc
limit 5;

#q5 Calculate the total number of rides for each payment method.
select distinct(payment_method) from uber_ride;

select payment_method,count(*) as ride_count
from uber_ride
group by payment_method;

#q6 Retrieve rides with a fare amount greater than 20.
select *from uber_ride 
where fare_amount > 20;

#q7  Identify the most common pickup location.
select pickup_location,count(*) as pickup from uber_ride
group by pickup_location
order by pickup desc limit 1;

#q8 Calculate the average fare amount.
select avg(fare_amount) from uber_ride;

#q9 List the top 10 drivers with the highest average ratings.
select driver_id,driver_name,avg(rating) as avg_rating from uber_driver 
group by driver_id,driver_name
order by avg_rating desc limit 10;

#q10  Calculate the total earnings for all drivers.
select sum(earnings) from uber_driver;

#q11 How many rides were paid using the "Cash" payment method
select payment_method,count(*) as total_pay from uber_ride
where payment_method = "cash"
group by payment_method;

#q12  Calculate the number of rides & 
#average ride distance for rides originating from the 'Dhanbad' pickup location.
select pickup_location,count(*)as total_ride,avg(ride_distance)as avg_distance from uber_ride
where pickup_location = "dhanbad"
group by pickup_location;

#q13 Retrieve rides with a ride duration less than 10 minutes.
select *from uber_ride
where ride_duration < 10;

#q14  List the passengers who have taken the most number of rides.
select passenger_id,passenger_name,count(*) as total_ride from uber_passenger
group by passenger_id,passenger_name 
order by total_ride desc limit 1;

#q15  Calculate the total number of rides for each driver in descending order
select driver_id,count(*) as ride_count from uber_ride
group by driver_id 
order by ride_count desc; 

#q16  Identify the payment methods used by passengers 
#who took rides from the 'Gandhinagar' pickup location.
select distinct(payment_method) from uber_ride
where pickup_location = "gandhinagar";

#q17 Calculate the average fare amount for rides with a ride distance greater than 10.
select avg(fare_amount) from uber_ride
where ride_distance > 10;

#q18  List the drivers in descending order accordinh to their total number of rides.
select driver_id,driver_name,count(*)as total_ride from uber_driver
group by driver_id,driver_name
order by total_ride desc;

#q19 Calculate the percentage distribution of rides for each pickup location.
SELECT pickup_location, COUNT(*) AS ride_count, ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM uber_ride rc), 2) AS percentage 
FROM uber_ride rc 
GROUP BY pickup_location
order by percentage desc;

#q20 Retrieve rides where both pickup and dropoff locations are the same.
select *from uber_ride
where pickup_location = dropoff_location;

#intermediate level

#q1 List the passengers 
#who have taken rides from at least 300 different pickup locations.

select passenger_id,count(distinct pickup_location) as ride_count from uber_ride
group by passenger_id
having ride_count > 300;

#q2 Calculate the average fare amount for rides taken on weekdays.
select *from uber_ride;

SELECT AVG(fare_amount)
FROM uber_ride
WHERE DAYOFWEEK(STR_TO_DATE(ride_timestamp, '%m/%d/%Y %H:%i'))>5;

select ride_timestamp,(STR_TO_DATE(ride_timestamp)) from uber_ride;

SELECT DATE_FORMAT("2017-06-15", "%M %d %Y");
SELECT DATE_FORMAT("2017-06-15", "%W %M %e %Y");

#q3 Identify the drivers who have taken rides with distances greater than 19.
select *from uber_ride
where ride_distance > 19;

#q4 Calculate the total earnings for drivers who have completed more than 100 rides.
select sum(earnings) from  uber_driver
where total_rides > 100;

#q5 Retrieve rides where the fare amount is less than the average fare amount.
select *from uber_ride
where fare_amount < (select avg(fare_amount) from uber_ride);

#q6  Calculate the average rating of drivers who have driven rides with
# both 'Credit Card' and 'Cash' payment methods.

SELECT driver_id, AVG(rating) AS avg_rating
FROM uber_driver
WHERE driver_id IN (SELECT driver_id FROM uber_Ride
WHERE payment_method IN ('Credit Card', 'Cash') GROUP BY driver_id HAVING COUNT(DISTINCT payment_method) = 2)
GROUP BY driver_id;

#q7  List the top 3 passengers with the highest total spending.
select passenger_id,passenger_name,total_spent from uber_passenger
order by total_spent desc limit 3;

#q8    Calculate the average fare amount 
#for rides taken during different months of the year.
SELECT MONTH(STR_TO_DATE(ride_timestamp, '%m/%d/%Y %H:%i')) AS month_of_year, AVG(fare_amount) AS avg_fare
FROM uber_Ride
GROUP BY month_of_year;

#q9 Identify the most common pair of pickup and dropoff locations.
select pickup_location,dropoff_location,count(*) as total from uber_ride 
group by pickup_location,dropoff_location 
order by total desc  limit 1;

#q10   Calculate the total earnings for each driver 
#and order them by earnings in descending order.
select driver_id, driver_name, sum(earnings) as total_earnings
from uber_driver
group by driver_id, driver_name
order by total_earnings desc;

#q11 List the passengers who have taken rides on their signup date.
SELECT p.passenger_id, p.passenger_name
FROM uber_Passenger as p
JOIN uber_Ride as r ON p.passenger_id = r.passenger_id
WHERE DATE(p.signup_date) = DATE(r.ride_timestamp);

#q12 Calculate the average earnings 
#for each driver and order them by earnings in descending order.

select driver_id,driver_name,avg(earnings) as avg_earnings from uber_driver
group by driver_id,driver_name 
order by avg_earnings desc; 

#q13  Retrieve rides with distances less than the average ride distance
select *from uber_ride
where ride_distance < (select avg(ride_distance) from uber_ride);

#q14    List the drivers who have completed the least number of rides.
SELECT driver_name,  COUNT(driver_id) AS ride_count
FROM uber_driver
GROUP BY driver_name
ORDER BY ride_count ASC;

#q15 Calculate the average fare amount for rides
# taken by passengers who have taken at least 20 rides

sELECT AVG(fare_amount)
FROM uber_ride
WHERE passenger_id IN 
(SELECT passenger_id FROM uber_ride 
GROUP BY passenger_id HAVING COUNT(*) >= 20);


#q16 Identify the pickup location with the highest average fare amount
select pickup_location,avg(fare_amount) as avg_amount from uber_ride
group by pickup_location 
order by avg_amount desc limit 1;

#q17  Calculate the average rating of drivers who completed at least 100 rides
select driver_id,avg(rating) as avg_rating from uber_driver
where total_rides >= 100
group by driver_id;

#q18 List the passengers who have taken rides 
#from at least 5 different pickup locations
SELECT passenger_id,pickup_location, COUNT(DISTINCT pickup_location) AS distinct_locations
FROM uber_ride 
GROUP BY passenger_id,pickup_location
HAVING distinct_locations >= 300;

#q19   Calculate the average fare amount
# for rides taken by passengers with ratings above 4.
select avg(fare_amount) from uber_ride
where passenger_id in (select passenger_id from uber_passenger 
where rating > 4);

#q20 Retrieve rides with the shortest ride duration in each pickup location.
select pickup_location,min(ride_duration)as shortest_ride from uber_ride
group by pickup_location
order by shortest_ride asc;

# Advanced Level:

#q1 List the drivers who have driven rides in all pickup locations.
select driver_id from uber_driver
where driver_id not in (select distinct(driver_id) from uber_ride
where pickup_location not in(select distinct(pickup_location) from uber_ride));


#q2 Calculate the average fare amount
# for rides taken by passengers who have spent more than 300 in total.
SELECT AVG(fare_amount)
FROM uber_ride
WHERE passenger_id IN (SELECT passenger_id FROM uber_passenger 
WHERE total_spent > 300);


#q3 List the bottom 5 drivers based on their average earnings
SELECT driver_id, avg(earnings) AS avg_earnings 
FROM uber_driver  
GROUP BY driver_id 
ORDER BY avg_earnings asc LIMIT 5;

#q4  Calculate the sum fare amount for rides 
#taken by passengers who have taken rides in different payment methods.

SELECT SUM(fare_amount)
FROM uber_ride 
WHERE passenger_id IN (SELECT passenger_id FROM uber_ride GROUP BY passenger_id
HAVING COUNT(DISTINCT payment_method) > 1
);

#q5 Retrieve rides where the fare amount is 
#significantly above the average fare amount.
select *from uber_ride
where fare_amount > (select avg(fare_amount) from uber_ride);

#q6  List the drivers who have completed rides on the same day they joined
select d.driver_id,d.driver_name from uber_driver as d 
join uber_ride as r on d.driver_id = r.driver_id
where d.join_date = r.ride_timestamp;

#q7  Calculate the average fare amount for rides taken 
#by passengers who have taken rides in different payment methods.
SELECT AVG(fare_amount)
FROM uber_ride
WHERE passenger_id IN (
    SELECT passenger_id
    FROM  uber_ride 
    GROUP BY passenger_id
    HAVING COUNT(DISTINCT payment_method) > 1
);

#q8 Identify the pickup location with the highest percentage increase 
#in average fare amount compared to the overall average fare.
SELECT pickup_location, AVG(fare_amount) AS avg_fare,
       (AVG(fare_amount) - (SELECT AVG(fare_amount) from uber_ride)) * 100.0 / 
       (SELECT AVG(fare_amount) FROM uber_ride) AS percentage_increase
FROM uber_ride
GROUP BY pickup_location
ORDER BY percentage_increase desc;

#q9   Retrieve rides where the dropoff location is the same as the pickup location
select *from uber_ride
where dropoff_location = pickup_location;

#q10 Calculate the average rating of drivers
# who have driven rides with varying pickup locations.
SELECT AVG(rating) FROM uber_driver WHERE driver_id IN 
(SELECT DISTINCT driver_id FROM uber_ride 
 GROUP BY driver_id
 HAVING COUNT(DISTINCT pickup_location) > 1
);
LIMIT 1;