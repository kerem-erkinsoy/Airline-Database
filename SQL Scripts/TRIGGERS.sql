

-- Uçuş tarihi şimdiki zamandan ileri bir tarihte olmalı.

DELIMITER $$
CREATE TRIGGER date_check
BEFORE INSERT ON LEG_INSTANCE
FOR EACH ROW
BEGIN
IF NEW.Flight_date <= CURDATE() AND DATE(NEW.Departure_time) <= NEW.Flight_date THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid date!';
END IF;
END$$
DELIMITER ;


--  Geçerli bir uçuş kaydı için kullanılacak uçak tipinin iki hava yolunda da
-- konaklayabilir olması gerekmektedir.

DELIMITER $$
CREATE TRIGGER can_land_check
BEFORE INSERT ON LEG_INSTANCE
FOR EACH ROW
BEGIN
DECLARE type_of_airplane VARCHAR(20);
SELECT Airplane_type
    INTO type_of_airplane
    FROM AIRPLANE WHERE Airplane_id = NEW.Airplane_id;
IF type_of_airplane NOT IN 
(SELECT Airplane_type_name FROM CAN_LAND WHERE Airport_code = NEW.Departure_airport_code)  or 
type_of_airplane NOT IN (SELECT Airplane_type_name FROM CAN_LAND WHERE Airport_code = NEW.Arrival_airport_code) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "The airplane is can't land at these airports!";
END IF;
END$$
DELIMITER ;


/* 3. Bir uçağın koltuk sayısı o uçağın tipindeki uçakların 
koltuk sayılarından büyük olamaz.*/

DELIMITER $$
CREATE TRIGGER airplane_type_max_seat_number_check
BEFORE INSERT ON AIRPLANE
FOR EACH ROW
BEGIN
	DECLARE max_seat INT;
    SELECT Max_seats
    INTO max_seat
    FROM AIRPLANE_TYPE WHERE Airplane_type_name = NEW.Airplane_type;
    IF NEW.Total_number_of_seats > max_seat THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid total seat number!';
	END IF;
END$$
DELIMITER ;

/*4. Müşteri check in yaptığında uçuşun kilometre bilgisini alarak FFC
tablosunundaki toplam mil puanını arttırır.*/

DELIMITER $$
CREATE TRIGGER update_mileage
    AFTER INSERT
    ON CHECKED_IN FOR EACH ROW
BEGIN
    DECLARE oldMilage INT;
    SELECT Total_mileage_point 
    INTO oldMilage
    FROM FFC WHERE Passport_number = NEW.Passport_number;
    UPDATE FFC SET Total_mileage_point = oldMilage + NEW.Mileage WHERE Passport_number = NEW.Passport_number;
END$$    
DELIMITER ;


/* 5. Check-in yapan müşterinin uçuş bilgilerini CHECKED_IN tablosuna ekliyoruz.*/

DELIMITER $$
CREATE TRIGGER get_flight_infos
    BEFORE INSERT
    ON CHECKED_IN FOR EACH ROW
BEGIN
   SET NEW.Departure_airport_code = (
   SELECT Departure_airport_code 
   from LEG_INSTANCE
   where Flight_number = NEW.Flight_number AND
    Leg_number = NEW.Leg_number AND
    Flight_date = NEW.Flight_date);
    
	SET NEW.Arrival_airport_code = (
   SELECT Arrival_airport_code 
   from LEG_INSTANCE 
   where Flight_number = NEW.Flight_number AND
    Leg_number = NEW.Leg_number AND
    Flight_date = NEW.Flight_date);
    
    SET NEW.Arrival_time = (
   SELECT Arrive_time 
   from LEG_INSTANCE 
   where Flight_number = NEW.Flight_number AND
    Leg_number = NEW.Leg_number AND
    Flight_date = NEW.Flight_date);
    SET NEW.Departure_time = (
   SELECT Departure_time 
   from LEG_INSTANCE 
   where Flight_number = NEW.Flight_number AND
    Leg_number = NEW.Leg_number AND
    Flight_date = NEW.Flight_date);
    SET NEW.Mileage = (
   SELECT Mileage 
   from FLIGHT_LEG 
   where Flight_number = NEW.Flight_number AND
    Leg_number = NEW.Leg_number );
END$$    
DELIMITER ;



/* 6. Müşteri rezervasyon yaptırmadan önce müsait koltuk durumuna bakılır. Eğer
uygun koltuk varsa uygun koltuk sayısı bir azaltılır yoksa hata mesajı verilir. */ 

DELIMITER $$
CREATE TRIGGER leg_instance_available_seat_number_check
BEFORE INSERT ON SEAT_RESERVATION
FOR EACH ROW
BEGIN
	DECLARE available_seat INT;
    SELECT Number_of_available_seats
    INTO available_seat
    FROM LEG_INSTANCE 
    WHERE 
    Flight_number = NEW.Flight_number AND
    Leg_number = NEW.Leg_number AND
    Flight_date = NEW.Flight_date;
    IF available_seat = 0 THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'There is no available seat for this leg instance!';
    ELSE
    UPDATE LEG_INSTANCE SET  Number_of_available_seats = available_seat - 1
    WHERE 
    Flight_number = NEW.Flight_number AND
    Leg_number = NEW.Leg_number AND
    Flight_date = NEW.Flight_date;
	END IF;
END$$
DELIMITER ;


/* 7. Yapılan rezervasyon silindiğinde uçuştaki uygun koltuk sayısı 1 arttırılmalıdır. */ 

DELIMITER $$
CREATE TRIGGER after_reservation_delete
AFTER DELETE
ON SEAT_RESERVATION FOR EACH ROW
BEGIN
	DECLARE available_seat INT;
    SELECT Number_of_available_seats
    INTO available_seat
    FROM LEG_INSTANCE 
    WHERE 
    Flight_number = OLD.Flight_number AND
    Leg_number = OLD.Leg_number AND
    Flight_date = OLD.Flight_date;
    
    UPDATE LEG_INSTANCE SET  Number_of_available_seats = available_seat + 1
    WHERE 
    Flight_number = OLD.Flight_number AND
    Leg_number = OLD.Leg_number AND
    Flight_date = OLD.Flight_date;
	
END$$
DELIMITER ;


/* 8. Her müşteri eklendiğinde o müşteriye ait pasaport numarasıyla birlikte bir
FFC kaydı oluşturulur. */

DELIMITER $$
CREATE TRIGGER create_ffc
    AFTER INSERT
    ON CUSTOMER FOR EACH ROW
BEGIN
	INSERT INTO FFC (Passport_number) VALUES (NEW.Passport_number);
END$$    
DELIMITER ;


/* 9. Sisteme herhangi bir uçak kaydı eklendiğinde o uçağa ait şirketin uçak sayısı 1
arttırılmaktadır. */

DELIMITER $$
CREATE TRIGGER update_airplane_number
    AFTER INSERT
    ON AIRPLANE FOR EACH ROW
BEGIN
	DECLARE oldNumber INT;
    SELECT Number_of_airplanes
    INTO oldNumber
    FROM AIRLINE 
    WHERE 
    Airline_code = NEW.Airline_code;
	UPDATE AIRLINE SET Number_of_airplanes = oldNumber + 1 WHERE Airline_code = NEW.Airline_code;
END$$    
DELIMITER ;



/* 10. Bir şirkete bağlu uçak kaydı silindiğinde o şirketin toplam uçak sayısı 1
       azaltılmaktadır.*/ 

DELIMITER $$
CREATE TRIGGER update_airplane_number_2
    AFTER DELETE
    ON AIRPLANE FOR EACH ROW
BEGIN
	DECLARE oldNumber INT;
    SELECT Number_of_airplanes
    INTO oldNumber
    FROM AIRLINE 
    WHERE 
    Airline_code = OLD.Airline_code;
    IF oldNumber = 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'There is zero airplane at this airline!';
    ELSE
	UPDATE AIRLINE SET Number_of_airplanes = oldNumber - 1 WHERE Airline_code = OLD.Airline_code;
    END IF;
END$$    
DELIMITER ;


/* 11. LEG_INSTANCE tablosuna bir kayıt eklenmeden önce o uçuşa ait uygun
koltuk sayısına, uçuşu yapacak uçağın toplam koltuk sayısı atanır.*/

DELIMITER $$
CREATE TRIGGER number_of_seats 
BEFORE INSERT ON LEG_INSTANCE
FOR EACH ROW
BEGIN
	SET NEW.Number_of_available_seats = (SELECT Total_number_of_seats from AIRPLANE where Airplane_id= NEW.Airplane_id);
END$$
DELIMITER ;

















