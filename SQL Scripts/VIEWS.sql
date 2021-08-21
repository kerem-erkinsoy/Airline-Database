CREATE VIEW CUSTOMER_SEG AS
SELECT *
FROM FFC
WHERE Total_mileage_point >= 1000;

-- Uçuşlardaki boş koltuk sayısı ve uçuş bilgileri gösterilir
create view flight_koltuk
as select leg_instance.Flight_number, leg_instance.Leg_number, leg_instance.Number_of_available_seats, flight_leg.Mileage
from flight_leg, leg_instance
where flight_leg.Flight_number = leg_instance.Flight_number
and flight_leg.Leg_number = leg_instance.Leg_number
order by flight_leg.Flight_number;

-- View 1
-- Leg instance'ların en yakın zamandan en uzak zamana doğru sıralanması
-- ve leg instanceların fiyatlarıyla birlikte bir tabloda bulunması
-- amaçlanmıştır.
CREATE VIEW NEAREST_LEG_INSTANCES AS
SELECT LG.Flight_number, LG.Leg_number, LG.Flight_date,LG.Departure_airport_code,
LG.Arrival_airport_code, LG.Departure_time,LG.Arrive_time,F.Fare_code, F.Amount
FROM LEG_INSTANCE LG
INNER JOIN FARE F ON LG.Flight_number = F.Flight_number AND LG.Number_of_available_seats > 0
ORDER BY Flight_date;

-- View örneği
-- Hangi havalimanına hangi uçak ve hangi havayolu şirketinden inecek olanları
-- gösterir.
CREATE VIEW WHICH_CAN_LAND AS
SELECT *
FROM CAN_LAND
RIGHT JOIN AIRPLANE ON CAN_LAND.Airplane_type_name=AIRPLANE.Airplane_type;