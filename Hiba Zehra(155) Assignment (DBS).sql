Create Database AirLineReservationSystem;
Use AirLineReservationSystem;
Create table Airline(
AirLine_ID int primary key,Name varchar(30),IATA_code int,Country varchar(40)
);
Create table Airports(
Airport_ID int primary key,Name varchar(30),City varchar(40),Country varchar(40),IATA_code int
);
Create table Flights(
Flight_ID int primary key,AirLine_ID int,Departure_AirportID int,Arrival_AirportID int,Departure_time int,Arrival_time int,Duration int
);
Create table Passengers(
Passenger_ID int primary key,Name varchar(30),DOB int,Nationality varchar(30),Email varchar(50),Phone int
);
Create table Bookings(
Booking_ID int primary key,Passenger_ID int,Flight_ID int,Booking_date int,Class varchar(20),Seat_number int
);
Create table Payment(
Payment_ID int primary key,Booking_ID int,Payment_method varchar(30),Payment_date int,Amount int
);
Create table Seats(
Seat_ID int primary key,Flight_ID int,Seat_number int,Class varchar(20),Availability varchar(40)
);
Create table Routes(
Route_ID int primary key,Departure_AirportID int,Arrival_AirportID int,Distance int,Flight_Duration int
);
Create table Fares(
Fare_ID int primary key,Flight_ID int,Class varchar(20),Fare_Amount int
);
Create table Checkin(
Checkin_ID int primary key,Booking_ID int,Checkin_time int,Baggage_Allowed varchar(40),Seat_Assigned int
); 