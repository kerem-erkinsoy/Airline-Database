CREATE DATABASE FLIGHT_DATABASE;
USE FLIGHT_DATABASE;

#DROP DATABASE FLIGHT_DATABASE;
CREATE TABLE AIRPORT (
    Airport_code VARCHAR(3) NOT NULL,
    Airport_name VARCHAR(30) NOT NULL,
    City VARCHAR(20) NOT NULL,
    State VARCHAR (20) NOT NULL ,
    PRIMARY KEY (Airport_code)
);

CREATE TABLE AIRLINE(
    Airline_id INT unsigned NOT NULL,
    Airline_name VARCHAR(20) NOT NULL,
    Address VARCHAR(50) NOT NULL,
    Number_of_airplanes INT UNSIGNED NOT NULL DEFAULT 0,
    Airline_code VARCHAR(3) NOT NULL UNIQUE ,
    PRIMARY KEY (Airline_id)
);

CREATE TABLE FACTORY(
    Factory_id INT UNSIGNED NOT NULL ,
    Factory_name VARCHAR(20) NOT NULL UNIQUE,
    Address VARCHAR(50) NOT NULL,
    PRIMARY KEY (Factory_id)
);

CREATE TABLE AIRPLANE_TYPE (
    Airplane_type_name VARCHAR(30) NOT NULL,
    Max_seats INT UNSIGNED NOT NULL,
    Company_name VARCHAR (20) NOT NULL ,
    PRIMARY KEY (Airplane_type_name),
    FOREIGN KEY (Company_name) REFERENCES  FACTORY (Factory_name) ON DELETE CASCADE ON UPDATE CASCADE,
    CHECK (Max_seats <= 615 AND Max_seats >= 1)
);

CREATE TABLE AIRPLANE (
    Airplane_id VARCHAR(6) NOT NULL,
    Total_number_of_seats INT UNSIGNED NOT NULL,
    Airplane_type VARCHAR(20) NOT NULL,
    Airline_code VARCHAR(3) , 
    PRIMARY KEY (Airplane_id),
    FOREIGN KEY (Airplane_type) REFERENCES AIRPLANE_TYPE (Airplane_type_name) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Airline_code) REFERENCES AIRLINE (Airline_code) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE CAN_LAND (
    Airplane_type_name VARCHAR(30) NOT NULL,
    Airport_code VARCHAR(3) NOT NULL, 
    PRIMARY KEY (Airplane_type_name,Airport_code),
    FOREIGN KEY (Airplane_type_name) REFERENCES AIRPLANE_TYPE (Airplane_type_name) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Airport_code) REFERENCES AIRPORT (Airport_code) ON DELETE CASCADE ON UPDATE CASCADE
);
#drop table flight;
CREATE TABLE FLIGHT (
    Flight_number VARCHAR(6) NOT NULL,
    Airline_code VARCHAR(3) NOT NULL,
    Weekdays VARCHAR(20) NOT NULL,
    PRIMARY KEY (Flight_number),
    FOREIGN KEY (Airline_code) REFERENCES AIRLINE (Airline_code) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE FLIGHT_LEG(
    Flight_number VARCHAR(6) NOT NULL,
    Leg_number INT UNSIGNED NOT NULL,
    Departure_airport_code VARCHAR(3) NOT NULL,
    Arrival_airport_code VARCHAR(3) NOT NULL,
    Scheduled_departure_time DATETIME NOT NULL,
    Scheduled_arrive_time DATETIME NOT NULL,
    Mileage INT UNSIGNED NOT NULL ,
    PRIMARY KEY (Flight_number, Leg_number),
    FOREIGN KEY (Flight_number) REFERENCES FLIGHT (Flight_number) ON DELETE CASCADE ON UPDATE CASCADE, 
    FOREIGN KEY (Arrival_airport_code) REFERENCES AIRPORT (Airport_code) ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY (Departure_airport_code) REFERENCES AIRPORT (Airport_code) ON DELETE RESTRICT ON UPDATE RESTRICT
);
#drop table flight;
CREATE TABLE LEG_INSTANCE(
    Flight_number VARCHAR(6) NOT NULL,
    Leg_number INT UNSIGNED NOT NULL,
    Flight_date DATE NOT NULL,
    Departure_airport_code VARCHAR(3) NOT NULL DEFAULT "",
    Arrival_airport_code VARCHAR(3) NOT NULL DEFAULT "",
    Departure_time DATETIME NOT NULL,
    Arrive_time DATETIME NOT NULL,
    Airplane_id VARCHAR(6) NOT NULL,
    Number_of_available_seats INT UNSIGNED NOT NULL DEFAULT 1,
    PRIMARY KEY (Flight_number, Leg_number,Flight_date),
    FOREIGN KEY (Flight_number,Leg_number) REFERENCES FLIGHT_LEG (Flight_number,Leg_number) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Arrival_airport_code) REFERENCES AIRPORT (Airport_code) ON UPDATE RESTRICT ON DELETE RESTRICT ,
    FOREIGN KEY (Departure_airport_code) REFERENCES AIRPORT (Airport_code) ON UPDATE RESTRICT ON DELETE RESTRICT  ,
    FOREIGN KEY (Airplane_id) REFERENCES AIRPLANE (Airplane_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE FARE (
    Flight_number VARCHAR(6) NOT NULL,
    Fare_code VARCHAR(1) NOT NULL,
    Amount DOUBLE NOT NULL,
    Restrictions VARCHAR(100) NOT NULL,
    PRIMARY KEY (Flight_number,Fare_code),
    FOREIGN KEY (Flight_number) REFERENCES FLIGHT(Flight_number) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE CUSTOMER(
    Passport_number VARCHAR(10) NOT NULL,
    Customer_name VARCHAR (30) NOT NULL,
    Customer_phone VARCHAR (20) NOT NULL,
    Email VARCHAR(35) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    Country VARCHAR(20) NOT NULL,
    PRIMARY KEY (Passport_number)
);
CREATE TABLE SEAT_RESERVATION(
    Flight_number VARCHAR(6) NOT NULL,
    Leg_number INT UNSIGNED NOT NULL,
    Flight_date DATE NOT NULL,
    Seat_number varchar(5) NOT NULL,
    Passport_number varchar(9) NOT NULL,
    PRIMARY KEY (Flight_number,Leg_number,Flight_date,Seat_number),
    FOREIGN KEY (Flight_number,Leg_number,Flight_date) REFERENCES LEG_INSTANCE(Flight_number,Leg_number,Flight_date) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Passport_number) REFERENCES CUSTOMER(Passport_number) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE CHECKED_IN(
    Flight_number VARCHAR(6) NOT NULL,
    Leg_number INT UNSIGNED NOT NULL,
    Flight_date DATE NOT NULL,
    Seat_number varchar(5) NOT NULL,
    Passport_number varchar(9) NOT NULL,
    Departure_airport_code VARCHAR(3) NOT NULL DEFAULT "",
    Arrival_airport_code VARCHAR(3) NOT NULL,
    Departure_time DATETIME NOT NULL,
    Arrival_time DATETIME NOT NULL,
    Mileage INT UNSIGNED NOT NULL,
    PRIMARY KEY (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number),
    FOREIGN KEY (Flight_number,Leg_number,Flight_date) REFERENCES LEG_INSTANCE(Flight_number,Leg_number,Flight_date) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Passport_number) REFERENCES CUSTOMER(Passport_number) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Departure_airport_code) REFERENCES AIRPORT(Airport_code) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Arrival_airport_code) REFERENCES AIRPORT(Airport_code) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE FFC(
	Passport_number varchar(9) NOT NULL,
    Total_mileage_point INT NOT NULL DEFAULT 0,
    PRIMARY KEY (Passport_number),
    FOREIGN KEY (Passport_number) REFERENCES CUSTOMER(Passport_number)
);