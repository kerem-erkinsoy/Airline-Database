ALTER TABLE LEG_INSTANCE
ADD Constraint Date_Check_LI
CHECK(Departure_time < Arrive_time);

ALTER TABLE FLIGHT_LEG
ADD Constraint Date_Check_FL
CHECK(Scheduled_departure_time  < Scheduled_arrive_time );

ALTER TABLE FARE
ADD Constraint Amount_Check
CHECK (Amount >= 0);

ALTER TABLE FARE
ADD Constraint Code_Check
CHECK (Fare_code = "F" OR Fare_code = "J" OR Fare_code = "Y" );

ALTER TABLE LEG_INSTANCE
ADD CONSTRAINT Flight_Seat_Check
CHECK (Number_of_available_seats >= 0);

ALTER TABLE FLIGHT_LEG
ADD Constraint Airport_Check_FL
CHECK(Departure_airport_code!=Arrival_airport_code);

ALTER TABLE LEG_INSTANCE
ADD Constraint Airport_Check_LI
CHECK(Departure_airport_code!=Arrival_airport_code);

Alter table CUSTOMER
ADD Constraint Passport_number_check
CHECK  (LENGTH(Passport_number) BETWEEN 7 and 9);