-- 2li sorgu 1
-- Uçuşların bilgilerini fiyatına göre büyükten küçüğe sıralama

SELECT FARE.Flight_number,Airline_code,Fare_code,Amount
FROM Flight,Fare
WHERE FARE.Flight_number=FLight.Flight_number
ORDER BY Amount DESC;

-- 2'li sorgu 2
-- Planlanan tarihte gerçekleşen uçuşların listelenmesi
SELECT FLIGHT_LEG.Flight_number,Departure_time,Arrive_time,Scheduled_departure_time,Scheduled_arrive_time
FROM FLIGHT_LEG,LEG_INSTANCE
WHERE FLIGHT_LEG.Scheduled_departure_time=LEG_INSTANCE.Departure_time
AND FLIGHT_LEG.Scheduled_arrive_time=LEG_INSTANCE.Arrive_time;

-- 2'li sorgu 3
-- HAVAYOLLARINDA BULUNABİLEN Uçak tipleri ve Maksimum KAPASİTELERİ
SELECT can_land.Airport_code,airplane_type.airplane_type_name, airplane_type.Max_seats
FROM can_land, airplane_type
WHERE can_land.Airplane_type_name = airplane_type.Airplane_type_name
GROUP BY airplane_type_name
ORDER BY Max_seats DESC;

-- 3'lü sorgu 1
-- Economy sınıfından olan uçuşların kalkış ve varış yerleriyle birlikte
-- fiyatını listeler.
SELECT Fare.Flight_number,Departure_airport_code,Arrival_airport_code,Amount
FROM Flight,Fare,Leg_Instance
WHERE Flight.Flight_number=Fare.Flight_number
AND Fare_code="Y" AND Flight.Flight_number=Leg_Instance.Flight_number;

-- 3'lü sorgu 2
-- 
# İstanbulda check-in yapan müşterilerinin isimleri
SELECT Customer_name
FROM CUSTOMER , CHECKED_IN, AIRPORT
WHERE CUSTOMER.Passport_number = CHECKED_IN.Passport_number
AND CHECKED_IN.Arrival_airport_code = AIRPORT.Airport_code
AND AIRPORT.City = "Istanbul" ;


-- 3'lü sorgu 3

-- İsmi "Kerem Erkinsoy" olan müşterinin
-- uçuş yapacağı tarihler

SELECT Customer.Customer_name, flight_leg.Scheduled_departure_time
from Customer, Flight_leg, seat_reservation
where Customer.Customer_name= "Kerem Erkinsoy"
and Customer.Passport_number = Seat_reservation.Passport_number
and Seat_reservation.Flight_number = Flight_leg.Flight_number
and Seat_reservation.Leg_number = Flight_leg.Leg_number;

-- 4'lü sorgu
-- Müşterilerin uçuşlarında hangi havayolu şirketlerini kullandığını listeler.
SELECT DISTINCT Customer.Customer_name, customer.Passport_number, airline.Airline_name
from customer, airline, seat_reservation, flight
where customer.Passport_number = seat_reservation.Passport_number
and seat_reservation.Flight_number = flight.Flight_number
and flight.Airline_code = airline.Airline_code
order by customer.Passport_number;



-- NESTED ORNEGİ 1
-- Ekonomi sınıfından olan uçuşların
-- ortaalama bilet fiyatlarından daha ucuz olan
-- uçuşların listelenmesi
SELECT Flight_number, Amount
FROM FARE
HAVING AMOUNT <
ALL (SELECT AVG(Amount) FROM FARE WHERE FARE_CODE="Y");

-- NESTED ORNEGİ 2
-- 250 km'den kısa olan uçuşların listesi
select flight_leg.flight_number, flight_leg.leg_number, flight_leg.Mileage
from flight_leg
where (flight_leg.flight_number, flight_leg.leg_number) in (
select flight_leg.flight_number, flight_leg.leg_number
from flight_leg
where flight_leg.Mileage < 250);


-- NESTED ORNEGI 3
-- Koltuk numarası 300'den fazla olan uçakların yaptığı uçuşlar ve tarihleri
SELECT Flight_number ,Leg_number,Flight_date
FROM LEG_INSTANCE
WHERE Airplane_id IN(
SELECT Airplane_id
FROM AIRPLANE
WHERE Total_number_of_seats > 300);

-- NESTED ORNEGI  4
# Uçuş ücretinin değeri 150'den küçük olan havayolu şirketi
SELECT Airline_code,Flight_number
FROM FLIGHT
WHERE FLIGHT.Flight_number IN (
SELECT FARE.Flight_number 
FROM FARE
WHERE Amount < 200);

# CHECK-IN YAPMAYAN MUSTERİLER VE UÇUŞ BİLGİLERİ - NOT EXIST ORNEGI
SELECT *
FROM SEAT_RESERVATION AS A
WHERE NOT EXISTS (
SELECT  Flight_number ,Leg_number ,Flight_date ,Seat_number Passport_number 
FROM CHECKED_IN AS B
WHERE A.Flight_number = B.Flight_number
AND A.Leg_number = B.Leg_number
AND A.Flight_date =B.Flight_date
AND A.Seat_number=B.Seat_number
AND A.Passport_number=B.Passport_number);

# CHECK-IN YAPAN MUSTERİLER VE UÇUŞ BİLGİLERİ  - EXIST ORNEGI
SELECT *
FROM SEAT_RESERVATION AS A
WHERE EXISTS (
SELECT  Flight_number ,Leg_number ,Flight_date ,Seat_number Passport_number 
FROM CHECKED_IN AS B
WHERE A.Flight_number = B.Flight_number
AND A.Leg_number = B.Leg_number
AND A.Flight_date =B.Flight_date
AND A.Seat_number=B.Seat_number
AND A.Passport_number=B.Passport_number);



-- Inner Join örneği
-- Varış havaalanlarında hizmet veren şirketler ve buraya giden uçuşlar
DESCRIBE FLIGHT;
SELECT FLIGHT.Flight_number,Airport.Airport_name, AIRLINE.Airline_name
FROM AIRPORT INNER JOIN 
FLIGHT_LEG ON AIRPORT.Airport_code=FLIGHT_LEG.Departure_airport_code
INNER JOIN FLIGHT ON FLIGHT_LEG.Flight_number=FLIGHT.Flight_number
INNER JOIN AIRLINE ON AIRLINE.Airline_code=FLIGHT.Airline_code
AND FLIGHT.Airline_code=AIRLINE.Airline_code;

-- FULL OUTER JOIN
-- MYSQL DESTEKLEMEDIGI ICIN
-- UNION YAPILDI
SELECT * FROM CUSTOMER
LEFT OUTER JOIN ffc on CUSTOMER.Passport_number = FFC.Passport_number
UNION
SELECT * FROM CUSTOMER
RIGHT OUTER JOIN FFC on CUSTOMER.Passport_number = FFC.Passport_number;


