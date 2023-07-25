--Question 1: Find the total cost of each customer's orders. Output customer's id, first name, and the total order cost. Order records by customer's first name alphabetically.


select customers.id, customers.first_name, SUM(total_order_cost) AS Total_Order_Cost

FROM customers


INNER JOIN orders

ON  customers.id = orders.cust_id


GROUP BY customers.id, customers.first_name

ORDER BY first_name ASC

;

--Question 3: Find the number of rows for each review score earned by 'Hotel Arena'. Output the hotel name (which should be 'Hotel Arena'), review score along with the corresponding number of rows with that score for the specified hotel.




select hotel_name, reviewer_score, COUNT(reviewer_score)

from hotel_reviews


WHERE hotel_name = 'Hotel Arena'

GROUP BY hotel_name, reviewer_score;

;