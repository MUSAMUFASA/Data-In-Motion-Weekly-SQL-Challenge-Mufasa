--Question 1:Produce a count of the number of facilities that have a cost to guests of 10 or more.

SELECT COUNT(guestcost)

FROM cd.facilities

WHERE guestcost >= 10;

--Question 2: Produce a count of the number of recommendations each member has made. Order by member ID.


SELECT recommendedby, COUNT (recommendedby) AS count

FROM cd.members

GROUP BY recommendedby

HAVING COUNT (recommendedby) > 0

ORDER BY recommendedby;


--Question 3: Produce a list of facilities with more than 1000 slots booked. Produce an output table consisting of facility id and slots, sorted by facility id.

SELECT cd.bookings.facid, SUM(cd.bookings.slots) as "Total Slots"

FROM cd.bookings


GROUP BY cd.bookings.facid

HAVING SUM(cd.bookings.slots) > 1000


ORDER BY cd.bookings.facid ASC ;

