# Airline-Database

An airline relational database was designed by reverse engineering according to the tables below. 

![tables](https://user-images.githubusercontent.com/68387972/130336319-a1b5b854-c738-492c-89a2-44518544ed36.png)

According to model, the following requirements are satisfied:

- The AIRLINE relational database schema shown in the above figure describes a database for airline
flight information. Each FLIGHT is identified by a Flight_number, and consists of one or more
FLIGHT_LEGs with Leg_numbers 1, 2, 3, and so on. 
- Each FLIGHT_LEG has scheduled arrival and
departure times, airports, and one or more LEG_INSTANCEs—one for each Date on which the flight
travels. 
- FAREs are kept for each FLIGHT. 
- For each FLIGHT_LEG instance, SEAT_RESERVATIONs are kept,
as are the AIRPLANE used on the leg and the actual arrival and departure times and airports. 
- An AIRPLANE is identified by an Airplane_id and is of a particular AIRPLANE_TYPE. CAN_LAND relates
AIRPLANE_TYPEs to the AIRPORTs at which they can land. 
- An AIRPORT is identified by an Airport_code.


## EER Diagram for Airline System

![Airline System EER Diagram](https://user-images.githubusercontent.com/68387972/130304699-d0d863c3-2ff5-4970-8bc2-5766b0e66d4b.png)

