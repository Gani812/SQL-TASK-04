#Use Existing DB
USE RentalDB;

#Total Number of Properties by Each Owner
SELECT O.Name AS OwnerName, COUNT(P.PropertyID) AS PropertyCount
FROM Properties P
JOIN Owners O ON P.OwnerID = O.OwnerID
GROUP BY O.Name;

#Total Rent Collected by City
SELECT L.City, SUM(P.RentAmount) AS TotalRent
FROM Properties P
JOIN Locations L ON P.LocationID = L.LocationID
GROUP BY L.City;

#Average Rent Amount by City
SELECT L.City, AVG(P.RentAmount) AS AvgRent
FROM Properties P
JOIN Locations L ON P.LocationID = L.LocationID
GROUP BY L.City;

#Count of Bookings per Renter
SELECT R.Name AS RenterName, COUNT(B.BookingID) AS TotalBookings
FROM Bookings B
JOIN Renters R ON B.RenterID = R.RenterID
GROUP BY R.Name;

#Total Payment Received Per Payment Method
SELECT PaymentMethod, SUM(AmountPaid) AS TotalPaid
FROM Payments
GROUP BY PaymentMethod;

#Average Payment Received Per Booking
SELECT B.BookingID, AVG(P.AmountPaid) AS AvgPayment
FROM Payments P
JOIN Bookings B ON P.BookingID = B.BookingID
GROUP BY B.BookingID;

#Owners Having More Than 1 Property
SELECT O.Name, COUNT(P.PropertyID) AS PropertyCount
FROM Properties P
JOIN Owners O ON P.OwnerID = O.OwnerID
GROUP BY O.Name
HAVING PropertyCount > 1;

#Cities with Average Rent Above 15,000
SELECT L.City, AVG(P.RentAmount) AS AvgRent
FROM Properties P
JOIN Locations L ON P.LocationID = L.LocationID
GROUP BY L.City
HAVING AvgRent > 15000;

#Round Off Average Rent to 2 Decimal Places
SELECT L.City, ROUND(AVG(P.RentAmount), 2) AS AvgRent
FROM Properties P
JOIN Locations L ON P.LocationID = L.LocationID
GROUP BY L.City;

#Count of Distinct Cities with Properties
SELECT COUNT(DISTINCT L.City) AS UniqueCities
FROM Properties P
JOIN Locations L ON P.LocationID = L.LocationID;
