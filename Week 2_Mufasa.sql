--Question 1: Find the total cost of each customer's orders. Output customer's id, first name, and the total order cost. Order records by customer's first name alphabetically.
select orders.cust_id, customers.first_name, SUM(orders.total_order_cost)

from orders

INNER JOIN customers ON orders.cust_id=customers.id

GROUP BY orders.cust_id,customers.first_name

ORDER BY customers.first_name ASC

;

--Question 2: Find the total cost of each customer's orders. Output customer's id, first name, and the total order cost. Order records by customer's first name alphabetically.

select airbnb_hosts.nationality,    COUNT(distinct airbnb_units.unit_id) as apartment_count

FROM airbnb_hosts

INNER JOIN airbnb_units

ON airbnb_units.host_id = airbnb_hosts.host_id

WHERE unit_type = 'Apartment' and age < 30

GROUP BY airbnb_hosts.nationality;

--Question 3: Find the number of rows for each review score earned by 'Hotel Arena'. Output the hotel name (which should be 'Hotel Arena'), review score along with the corresponding number of rows with that score for the specified hotel.


select hotel_name, reviewer_score, COUNT(reviewer_score)

from hotel_reviews


WHERE hotel_name = 'Hotel Arena'

GROUP BY hotel_name, reviewer_score;
