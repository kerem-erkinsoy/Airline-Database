INSERT INTO AIRPORT(Airport_code,Airport_name,City,State) VALUES("SAW","Sabiha Gökçen Airport","Istanbul","Public");
INSERT INTO AIRPORT(Airport_code,Airport_name,City,State) VALUES("ADB","Adnan Menderes Airport","Izmir","Public");
INSERT INTO AIRPORT(Airport_code,Airport_name,City,State) VALUES("USQ","Uşak Airport","Usak","Public");
INSERT INTO AIRPORT(Airport_code,Airport_name,City,State) VALUES("KZR","Zafer Airport ","Kutahya","Public");
INSERT INTO AIRPORT(Airport_code,Airport_name,City,State) VALUES("ISL","Atatürk Airport","Istanbul","Public");
INSERT INTO AIRPORT(Airport_code,Airport_name,City,State) VALUES("ERZ","Erzurum Airport","Erzurum","Public");
INSERT INTO AIRPORT(Airport_code,Airport_name,City,State) VALUES("ESB","Esenboğa Airport","Ankara","Public");
INSERT INTO AIRPORT(Airport_code,Airport_name,City,State) VALUES("YEI","Bursa Airport","Bursa","Public");
INSERT INTO AIRPORT(Airport_code,Airport_name,City,State) VALUES("DLM","Dalaman Airport","Mugla","Public");
INSERT INTO AIRPORT(Airport_code,Airport_name,City,State) VALUES("GZT","Gaziantep Airport","Gaziantep","Public");

INSERT INTO FACTORY (Factory_id,Factory_name,Address) VALUES (789052719,"Airbus","Toulouse,Fransa");
INSERT INTO FACTORY  VALUES (862795626,"Boeing","Chicago,ABD");
INSERT INTO FACTORY  VALUES (059764289,"Bombardier","Wichita,Kansas,ABD");
INSERT INTO FACTORY  VALUES (278614098,"Douglas","Santa Monica, California,ABD");
INSERT INTO AIRLINE (Airline_id,Airline_name,Address,Airline_code)  VALUES  (249871359,"Turkish Airlines","İstanbul,Türkiye","THY");
INSERT INTO AIRLINE (Airline_id,Airline_name,Address,Airline_code) VALUES (179245063,"Anadolu Jet","Ankara,Türkiye","TK");
INSERT INTO AIRLINE (Airline_id,Airline_name,Address,Airline_code) VALUES (054795173,"Pegasus","İstanbul,Türkiye","PC");
INSERT INTO AIRLINE (Airline_id,Airline_name,Address,Airline_code) VALUES (047982417,"Sunexpress","Antalya,Türkiye","XQ");

INSERT INTO AIRPLANE_TYPE (Airplane_type_name,Max_seats,Company_name) VALUES ("Airbus A320",150,"Airbus");
INSERT INTO AIRPLANE_TYPE (Airplane_type_name,Max_seats,Company_name) VALUES ("Airbus A310",220,"Airbus");
INSERT INTO AIRPLANE_TYPE (Airplane_type_name,Max_seats,Company_name) VALUES ("Boeing 777",301,"Boeing");
INSERT INTO AIRPLANE_TYPE (Airplane_type_name,Max_seats,Company_name) VALUES ("Boeing 767-300",351,"Boeing");
INSERT INTO AIRPLANE_TYPE (Airplane_type_name,Max_seats,Company_name) VALUES ("Learjet 40",7,"Bombardier");
INSERT INTO AIRPLANE_TYPE (Airplane_type_name,Max_seats,Company_name) VALUES ("Douglas DC-2","14","Douglas");


INSERT INTO AIRPLANE VALUES ("N930NN",130,"Airbus A320","THY");
INSERT INTO AIRPLANE VALUES ("N973JM",150,"Airbus A320","PC");
INSERT INTO AIRPLANE VALUES ("N4216S",200,"Airbus A310","XQ");
INSERT INTO AIRPLANE VALUES ("N340LV",220,"Airbus A310","THY");
INSERT INTO AIRPLANE VALUES ("C-GTF0",250,"Boeing 777","XQ");
INSERT INTO AIRPLANE VALUES ("JA8089",300,"Boeing 777","TK");
INSERT INTO AIRPLANE VALUES ("N901CM",310,"Boeing 767-300","THY");
INSERT INTO AIRPLANE VALUES ("N7025U",350,"Boeing 767-300","PC");
INSERT INTO AIRPLANE VALUES ("JA5894",7,"Learjet 40","TK");
INSERT INTO AIRPLANE VALUES ("GS6464",10,"Douglas DC-2","TK");
INSERT INTO AIRPLANE VALUES ("GS4848",14,"Douglas DC-2","TK");



INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Airbus A320","SAW");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Airbus A320","ADB");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Airbus A320","USQ");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Airbus A320","KZR");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Airbus A320","ISL");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Airbus A320","DLM");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Airbus A320","GZT");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Airbus A320","ESB");

INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Airbus A310","SAW");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Airbus A310","DLM");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Airbus A310","GZT");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Airbus A310","ESB");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Airbus A310","ISL");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Airbus A310","ERZ");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Airbus A310","KZR");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Airbus A310","YEI");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Airbus A310","USQ");

INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Boeing 777","SAW");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Boeing 777","KZR");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Boeing 777","ESB");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Boeing 777","ADB");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Boeing 777","ISL");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Boeing 777","GZT");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Boeing 777","YEI");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Boeing 777","USQ");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Boeing 777","DLM");


INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Boeing 767-300","KZR");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Boeing 767-300","GZT");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Boeing 767-300","ISL");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Boeing 767-300","ESB");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Boeing 767-300","ERZ");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Boeing 767-300","ADB");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Boeing 767-300","SAW");

INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Learjet 40","ISL");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Learjet 40","KZR");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Learjet 40","GZT");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Learjet 40","ERZ");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Learjet 40","ADB");

INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Douglas DC-2","DLM");
INSERT INTO CAN_LAND (AIRPLANE_TYPE_NAME,AIRPORT_CODE) VALUES ("Douglas DC-2","USQ");

INSERT INTO FLIGHT (FLIGHT_NUMBER,AIRLINE_CODE,WEEKDAYS) VALUES ("DF2753","THY","PT CR CM");
INSERT INTO FLIGHT (FLIGHT_NUMBER,AIRLINE_CODE,WEEKDAYS) VALUES ("US4848","THY","PT CR CM");
INSERT INTO FLIGHT (FLIGHT_NUMBER,AIRLINE_CODE,WEEKDAYS) VALUES ("FU4864","THY","PT");
INSERT INTO FLIGHT (FLIGHT_NUMBER,AIRLINE_CODE,WEEKDAYS) VALUES ("TK2752","THY","PR CM CT PZ");
INSERT INTO FLIGHT VALUES ("FD5610","PC","PT SL CR PR CM");
INSERT INTO FLIGHT VALUES ("EN4267","PC","CT PZ");
INSERT INTO FLIGHT VALUES ("LN3211","PC","SL CM CT PZ");
INSERT INTO FLIGHT VALUES ("GT4638","XQ","PT CT");
INSERT INTO FLIGHT VALUES ("KV3323","TK","SL PR CT");
INSERT INTO FLIGHT VALUES ("LX3100","TK","PZ");




INSERT INTO FLIGHT_LEG (Flight_number,Leg_number,Departure_airport_code,Arrival_airport_code,Scheduled_departure_time,Scheduled_arrive_time,Mileage)
VALUES ("DF2753",901,"SAW","ADB",'2021-02-15 14:30:00','2021-02-15 16:00:00',350);
INSERT INTO FLIGHT_LEG (Flight_number,Leg_number,Departure_airport_code,Arrival_airport_code,Scheduled_departure_time,Scheduled_arrive_time,Mileage)
VALUES ("DF2753",911,"SAW","ADB",'2021-03-15 14:30:00','2021-03-15 16:00:00',350);
INSERT INTO FLIGHT_LEG (Flight_number,Leg_number,Departure_airport_code,Arrival_airport_code,Scheduled_departure_time,Scheduled_arrive_time,Mileage)
VALUES ("DF2753",921,"SAW","ADB",'2021-04-15 14:30:00','2021-04-15 16:00:00',350);
INSERT INTO FLIGHT_LEG (Flight_number,Leg_number,Departure_airport_code,Arrival_airport_code,Scheduled_departure_time,Scheduled_arrive_time,Mileage)
VALUES ("DF2753",907,"ESB","SAW",'2021-05-01 21:30:00','2021-05-01 22:30:00',221);

INSERT INTO FLIGHT_LEG (Flight_number,Leg_number,Departure_airport_code,Arrival_airport_code,Scheduled_departure_time,Scheduled_arrive_time,Mileage)
VALUES ("LN3211",902,"USQ","DLM",'2021-02-16 15:30:00','2021-02-16 16:45',325);

INSERT INTO FLIGHT_LEG (Flight_number,Leg_number,Departure_airport_code,Arrival_airport_code,Scheduled_departure_time,Scheduled_arrive_time,Mileage)
VALUES ("GT4638",903,"ISL","KZR",'2021-02-17 08:30:00','2021-02-17 09:45',250);
INSERT INTO FLIGHT_LEG (Flight_number,Leg_number,Departure_airport_code,Arrival_airport_code,Scheduled_departure_time,Scheduled_arrive_time,Mileage)
VALUES ("GT4638",908,"GZT","YEI",'2021-03-15 11:30:00','2021-03-15 13:30:00',221);
INSERT INTO FLIGHT_LEG (Flight_number,Leg_number,Departure_airport_code,Arrival_airport_code,Scheduled_departure_time,Scheduled_arrive_time,Mileage)
VALUES ("GT4638",998,"YEI","GZT",'2021-03-16 11:30:00','2021-03-16 13:30:00',221);

INSERT INTO FLIGHT_LEG (Flight_number,Leg_number,Departure_airport_code,Arrival_airport_code,Scheduled_departure_time,Scheduled_arrive_time,Mileage)
VALUES ("KV3323",904,"KZR","GZT",'2021-03-17 08:30:00','2021-03-17 10:30:00',195);
INSERT INTO FLIGHT_LEG (Flight_number,Leg_number,Departure_airport_code,Arrival_airport_code,Scheduled_departure_time,Scheduled_arrive_time,Mileage)
VALUES ("KV3323",704,"KZR","GZT",'2021-05-17 08:30:00','2021-05-17 10:30:00',195);

INSERT INTO FLIGHT_LEG (Flight_number,Leg_number,Departure_airport_code,Arrival_airport_code,Scheduled_departure_time,Scheduled_arrive_time,Mileage)
VALUES ("LX3100",905,"ADB","ISL",'2021-02-18 08:30:00','2021-02-18 09:40:00',440);

INSERT INTO FLIGHT_LEG (Flight_number,Leg_number,Departure_airport_code,Arrival_airport_code,Scheduled_departure_time,Scheduled_arrive_time,Mileage)
VALUES ("FD5610",906,"ERZ","USQ",'2021-03-01 21:30:00','2021-03-01 22:30:00',880);

INSERT INTO FLIGHT_LEG (Flight_number,Leg_number,Departure_airport_code,Arrival_airport_code,Scheduled_departure_time,Scheduled_arrive_time,Mileage)
VALUES ("EN4267",906,"ADB","USQ",'2021-03-05 21:30:00','2021-03-05 23:15:00',256);

INSERT INTO FLIGHT_LEG (Flight_number,Leg_number,Departure_airport_code,Arrival_airport_code,Scheduled_departure_time,Scheduled_arrive_time,Mileage)
VALUES ("FU4864",806,"USQ","DLM",'2021-03-25 11:30:00','2021-03-25 23:15:00',325);

DELETE FROM leg_instance;

INSERT INTO LEG_INSTANCE (Flight_number,Leg_number,Flight_date,Departure_airport_code,Arrival_airport_code,
Departure_time,Arrive_time,Airplane_id) VALUES 
("GT4638",903,"2021-02-17","ISL","KZR",'2021-02-17 08:30:00','2021-02-17 09:45',"N930NN");
INSERT INTO LEG_INSTANCE (Flight_number,Leg_number,Flight_date,Departure_airport_code,Arrival_airport_code,
Departure_time,Arrive_time,Airplane_id) VALUES 
("GT4638",908,"2021-03-15","GZT","YEI",'2021-03-15 11:30:00','2021-03-15 13:30:00',"C-GTF0");
INSERT INTO LEG_INSTANCE (Flight_number,Leg_number,Flight_date,Departure_airport_code,Arrival_airport_code,
Departure_time,Arrive_time,Airplane_id) VALUES 
("GT4638",998,"2021-03-16","YEI","GZT",'2021-03-16 11:30:00','2021-03-16 13:30:00',"JA8089");

INSERT INTO LEG_INSTANCE (Flight_number,Leg_number,Flight_date,Departure_airport_code,Arrival_airport_code,
Departure_time,Arrive_time,Airplane_id) VALUES 
("KV3323",904,"2021-03-17","KZR","GZT",'2021-03-17 08:30:00','2021-03-17 10:30:00',"N7025U");
INSERT INTO LEG_INSTANCE (Flight_number,Leg_number,Flight_date,Departure_airport_code,Arrival_airport_code,
Departure_time,Arrive_time,Airplane_id) VALUES 
("KV3323",704,"2021-05-17","KZR","GZT",'2021-05-17 08:45:00','2021-05-17 10:45:00',"N7025U");

INSERT INTO LEG_INSTANCE (Flight_number,Leg_number,Flight_date,Departure_airport_code,Arrival_airport_code,
Departure_time,Arrive_time,Airplane_id) VALUES 
("DF2753",907,"2021-05-01","ESB","SAW",'2021-02-17 23:30:00','2021-02-18 02:00:00',"N901CM");

INSERT INTO LEG_INSTANCE (Flight_number,Leg_number,Flight_date,Departure_airport_code,Arrival_airport_code,Departure_time,Arrive_time,Airplane_id)
 VALUES  ("DF2753",901,'2021-02-15 ',"SAW","ADB",'2021-02-15 14:30:00','2021-02-15 16:00:00',"JA8089");
INSERT INTO  LEG_INSTANCE (Flight_number,Leg_number,Flight_date,Departure_airport_code,Arrival_airport_code,Departure_time,Arrive_time,Airplane_id)
 VALUES  ("DF2753",911,'2021-03-15',"SAW","ADB",'2021-03-15 14:45:00','2021-03-15 16:15:00',"C-GTF0");
INSERT INTO LEG_INSTANCE (Flight_number,Leg_number,Flight_date,Departure_airport_code,Arrival_airport_code,Departure_time,Arrive_time,Airplane_id)
 VALUES  ("DF2753",921,'2021-04-15',"SAW","ADB",'2021-04-15 14:30:00','2021-04-15 16:00:00',"C-GTF0");

 
 INSERT INTO LEG_INSTANCE (Flight_number,Leg_number,Flight_date,Departure_airport_code,Arrival_airport_code,Departure_time,Arrive_time,Airplane_id)
 VALUES  ("LX3100",905,'2021-02-18',"ADB","ISL",'2021-02-18 08:30:00','2021-02-18 09:40:00',"N7025U");
 INSERT INTO LEG_INSTANCE (Flight_number,Leg_number,Flight_date,Departure_airport_code,Arrival_airport_code,Departure_time,Arrive_time,Airplane_id)
 VALUES  ("FD5610",906,'2021-03-01',"ERZ","USQ",'2021-03-01 21:30:00','2021-03-01 22:30:00',"N340LV");
INSERT INTO LEG_INSTANCE (Flight_number,Leg_number,Flight_date,Departure_airport_code,Arrival_airport_code,Departure_time,Arrive_time,Airplane_id)
 VALUES  ("EN4267",906,'2021-03-05',"ADB","USQ",'2021-03-05 21:30:00','2021-03-05 23:15:00',"JA8089");
INSERT INTO LEG_INSTANCE (Flight_number,Leg_number,Flight_date,Departure_airport_code,Arrival_airport_code,Departure_time,Arrive_time,Airplane_id)
 VALUES  ("FU4864",806,'2021-03-25',"USQ","DLM",'2021-03-25 11:30:00','2021-03-25 23:15:00',"N930NN");
 
 
 
 
INSERT INTO FARE (FLIGHT_NUMBER,FARE_CODE,AMOUNT,RESTRICTIONS)  VALUES ("DF2753","F",750,"Refundable");
INSERT INTO FARE (FLIGHT_NUMBER,FARE_CODE,AMOUNT,RESTRICTIONS)  VALUES ("DF2753","J",550,"Non-refundable");
INSERT INTO FARE (FLIGHT_NUMBER,FARE_CODE,AMOUNT,RESTRICTIONS)  VALUES ("DF2753","Y",300,"Non-refundable");
INSERT INTO FARE (FLIGHT_NUMBER,FARE_CODE,AMOUNT,RESTRICTIONS)  VALUES ("LN3211","F",625,"Non-refundable");
INSERT INTO FARE (FLIGHT_NUMBER,FARE_CODE,AMOUNT,RESTRICTIONS)  VALUES ("LN3211","Y",205,"Non-refundable");
INSERT INTO FARE (FLIGHT_NUMBER,FARE_CODE,AMOUNT,RESTRICTIONS)  VALUES ("GT4638","J",450,"Non-refundable");
INSERT INTO FARE (FLIGHT_NUMBER,FARE_CODE,AMOUNT,RESTRICTIONS)  VALUES ("GT4638","Y",210,"Non-refundable");
INSERT INTO FARE (FLIGHT_NUMBER,FARE_CODE,AMOUNT,RESTRICTIONS)  VALUES ("KV3323","J",425,"Non-refundable");
INSERT INTO FARE (FLIGHT_NUMBER,FARE_CODE,AMOUNT,RESTRICTIONS)  VALUES ("LX3100","Y",250,"Non-refundable");
INSERT INTO FARE (FLIGHT_NUMBER,FARE_CODE,AMOUNT,RESTRICTIONS)  VALUES ("LX3100","J",550,"Refundable");
INSERT INTO FARE (FLIGHT_NUMBER,FARE_CODE,AMOUNT,RESTRICTIONS)  VALUES ("FD5610","Y",175,"Refundable");
INSERT INTO FARE (FLIGHT_NUMBER,FARE_CODE,AMOUNT,RESTRICTIONS)  VALUES ("EN4267","J",480,"Refundable");
INSERT INTO FARE (FLIGHT_NUMBER,FARE_CODE,AMOUNT,RESTRICTIONS)  VALUES ("TK2752","Y",140,"Refundable");
INSERT INTO FARE (FLIGHT_NUMBER,FARE_CODE,AMOUNT,RESTRICTIONS)  VALUES ("LN3211","J",350,"Refundable");
INSERT INTO FARE (FLIGHT_NUMBER,FARE_CODE,AMOUNT,RESTRICTIONS)  VALUES ("FU4864","J",500,"Non-refundable");


DESCRIBE CUSTOMER;

INSERT INTO FLIGHT (FLIGHT_NUMBER,AIRLINE_CODE,WEEKDAYS) VALUES ("DF2755","PC","PT CR CM");
INSERT INTO FLIGHT_LEG (Flight_number,Leg_number,Departure_airport_code,Arrival_airport_code,Scheduled_departure_time,Scheduled_arrive_time,Mileage)
VALUES ("DF2755",901,"ADB","SAW",'2021-02-15 14:30:00','2021-02-15 16:00:00',350);
INSERT INTO LEG_INSTANCE (Flight_number,Leg_number,Flight_date,Departure_airport_code,Arrival_airport_code,Departure_time,Arrive_time,Airplane_id) VALUES  ("DF2755",901,"2021-02-15","ADB","SAW",'2021-02-15 14:30:00','2021-02-15 16:00:00',"JA8089");
INSERT INTO LEG_INSTANCE (Flight_number,Leg_number,Flight_date,Departure_airport_code,Arrival_airport_code,Departure_time,Arrive_time,Airplane_id) VALUES  ("DF2755",901,"2021-02-17","ADB","SAW",'2021-02-17 14:30:00','2021-02-17 16:00:00',"JA8089");
INSERT INTO LEG_INSTANCE (Flight_number,Leg_number,Flight_date,Departure_airport_code,Arrival_airport_code,Departure_time,Arrive_time,Airplane_id) VALUES  ("DF2755",901,"2021-02-19","ADB","SAW",'2021-02-19 14:30:00','2021-02-19 16:00:00',"JA8089");


DELETE FROM CUSTOMER;
INSERT INTO CUSTOMER (Passport_number,Customer_name,Customer_phone,Email,Address,Country) 
VALUES("U00005001","Kerem Erkinsoy","5369874123","kerem@gmail.com","Usak","Turkiye");
INSERT INTO CUSTOMER (Passport_number,Customer_name,Customer_phone,Email,Address,Country) 
VALUES("U00005002","İbrahim Kale","5055448210","ibo@gmail.com","Samsun","Turkiye");
INSERT INTO CUSTOMER (Passport_number,Customer_name,Customer_phone,Email,Address,Country) 
VALUES("U00005003","Lokman Hekim","5055446515","loki@gmail.com","Konya","Turkiye");
INSERT INTO CUSTOMER (Passport_number,Customer_name,Customer_phone,Email,Address,Country) 
VALUES("U00005004","Aybars Aydın","5545447810","ibo@gmail.com","Eskisehir","Turkiye");
INSERT INTO CUSTOMER (Passport_number,Customer_name,Customer_phone,Email,Address,Country) 
VALUES("U00005005","Taylan Tufan","5545447810","tt@gmail.com","Alanya","Turkiye");
INSERT INTO CUSTOMER (Passport_number,Customer_name,Customer_phone,Email,Address,Country) 
VALUES("U00005006","Halil Toprak","50519074586","tt@gmail.com","Izmır","Turkiye");

INSERT INTO CUSTOMER (Passport_number,Customer_name,Customer_phone,Email,Address,Country) 
VALUES ("U00005007","Özge Buyukasik","905414778681","o.b@g.com","Izmır","Turkiye");
INSERT INTO CUSTOMER (Passport_number,Customer_name,Customer_phone,Email,Address,Country) 
VALUES ("U00005008","Ramazan Tas","905414778682","r.t@g.com","Usak","Turkiye");
INSERT INTO CUSTOMER (Passport_number,Customer_name,Customer_phone,Email,Address,Country) 
VALUES ("U00005009","Sabri Gulseven","905414778683","s.g@g.com","Bursa","Turkiye");
INSERT INTO CUSTOMER (Passport_number,Customer_name,Customer_phone,Email,Address,Country) 
VALUES ("U00005010","Hasan Tahsin","905414778684","h.t@g.com","Izmır","Turkiye");
INSERT INTO CUSTOMER (Passport_number,Customer_name,Customer_phone,Email,Address,Country) 
VALUES ("U00005011","Ibrahim Afellay","4440444","i.a@g.com","Amsterdam","Hollanda");
INSERT INTO CUSTOMER (Passport_number,Customer_name,Customer_phone,Email,Address,Country) 
VALUES ("U00005012","Gorkem Aktas","905414778686","g.a@g.com","Ankara","Turkiye");
INSERT INTO CUSTOMER (Passport_number,Customer_name,Customer_phone,Email,Address,Country) 
VALUES ("U00005013","Emre Karagun","5414778687","e.k@g.com","Istanbul","Turkiye");
INSERT INTO CUSTOMER (Passport_number,Customer_name,Customer_phone,Email,Address,Country) 
VALUES ("U00005014","Cristiano Pele","2245671052","c.p@g.com","Lizbon","Portekiz");
INSERT INTO CUSTOMER (Passport_number,Customer_name,Customer_phone,Email,Address,Country) 
VALUES("U00005015","EMRE DURSUN","5369874123","emre@gmail.com","Izmır","Turkiye");
INSERT INTO CUSTOMER (Passport_number,Customer_name,Customer_phone,Email,Address,Country) 
VALUES("U00005016","KEREM ARIKÇILI","5369874126","kerem1@gmail.com","hatay","Turkiye");
INSERT INTO CUSTOMER (Passport_number,Customer_name,Customer_phone,Email,Address,Country)
 VALUES("U00005017","MELİKE GÜNAS","5369875372","melike@gmail.com","Kutahya","Turkiye");
INSERT INTO CUSTOMER (Passport_number,Customer_name,Customer_phone,Email,Address,Country) 
VALUES("U00005018","MUSTAFA OKUTAN","5369874320","mustafa@gmail.com","bursa","Turkiye");
INSERT INTO CUSTOMER (Passport_number,Customer_name,Customer_phone,Email,Address,Country) 
VALUES("U00005019","DENİZ YILDIZ","5369873453","deniz@gmail.com","Ankara","Turkiye");
INSERT INTO CUSTOMER (Passport_number,Customer_name,Customer_phone,Email,Address,Country) 
VALUES("U00005020","EMRE BELEZOĞLU","5369877602","emreb@gmail.com","Istanbul","Turkiye");
INSERT INTO CUSTOMER (Passport_number,Customer_name,Customer_phone,Email,Address,Country) 
VALUES("U00005021","MEHMET YEŞİL","536265897","mehmet@gmail.com","adana","Turkiye");
INSERT INTO CUSTOMER (Passport_number,Customer_name,Customer_phone,Email,Address,Country) 
VALUES("U00005022","ÖNDER TOPALOĞLU","5369876420","önder@gmail.com","Manisa","Turkiye");



INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("DF2753",901,"2021-02-15","15A","U00005001");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("DF2753",901,"2021-02-15","22C","U00005002");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("DF2753",901,"2021-02-15","02C","U00005003");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("DF2753",901,"2021-02-15","82C","U00005004");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("DF2753",911,'2021-03-15',"82C","U00005005");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("DF2753",911,'2021-03-15',"42C","U00005006");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("DF2753",911,'2021-03-15',"12C","U00005007");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("DF2753",911,'2021-03-15',"15A","U00005001");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("DF2753",911,'2021-03-15',"22C","U00005002");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("DF2753",921,'2021-04-15',"22C","U00005002");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("DF2753",921,'2021-04-15',"78A","U00005001");

INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("GT4638",903,"2021-02-17","78A","U00005011");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("GT4638",903,"2021-02-17","79A","U00005012");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("GT4638",903,"2021-02-17","80A","U00005013");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("GT4638",903,"2021-02-17","81A","U00005014");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("GT4638",908,"2021-03-15","81A","U00005014");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("GT4638",908,"2021-03-15","80A","U00005013");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("GT4638",908,"2021-03-15","60A","U00005015");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("GT4638",998,"2021-03-16","60A","U00005016");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("GT4638",998,"2021-03-16","6A","U00005006");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("GT4638",998,"2021-03-16","7A","U00005007");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("GT4638",998,"2021-03-16","1A","U00005020");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("KV3323",904,"2021-03-17","1A","U00005010");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("KV3323",904,"2021-03-17","1C","U00005011");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("KV3323",904,"2021-03-17","3C","U00005018");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("KV3323",904,"2021-03-17","7C","U00005019");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("LX3100",905,'2021-02-18',"7C","U00005005");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("LX3100",905,'2021-02-18',"79C","U00005006");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("LX3100",905,'2021-02-18',"80C","U00005004");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("FD5610",906,'2021-03-01',"8C","U00005004");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("FD5610",906,'2021-03-01',"4C","U00005002");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("EN4267",906,'2021-03-05',"2C","U00005020");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("EN4267",906,'2021-03-05',"3C","U00005019");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("EN4267",906,'2021-03-05',"4C","U00005018");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("FU4864",806,'2021-03-25',"4C","U00005009");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("FU4864",806,'2021-03-25',"3C","U00005008");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("FU4864",806,'2021-03-25',"2C","U00005007");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("FU4864",806,'2021-03-25',"9C","U00005006");
INSERT INTO SEAT_RESERVATION (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("FU4864",806,'2021-03-25',"10C","U00005005");



INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("DF2753",901,"2021-02-15","15A","U00005001");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("DF2753",901,"2021-02-15","22C","U00005002");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("DF2753",901,"2021-02-15","02C","U00005003");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("DF2753",901,"2021-02-15","82C","U00005004");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("DF2753",911,'2021-03-15',"82C","U00005005");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("DF2753",911,'2021-03-15',"42C","U00005006");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("DF2753",911,'2021-03-15',"15A","U00005001");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("DF2753",911,'2021-03-15',"22C","U00005002");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("DF2753",921,'2021-04-15',"78A","U00005001");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("GT4638",903,"2021-02-17","79A","U00005012");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("GT4638",903,"2021-02-17","80A","U00005013");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("GT4638",903,"2021-02-17","81A","U00005014");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("GT4638",908,"2021-03-15","80A","U00005013");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("GT4638",908,"2021-03-15","60A","U00005015");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("GT4638",998,"2021-03-16","60A","U00005016");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("GT4638",998,"2021-03-16","7A","U00005007");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("GT4638",998,"2021-03-16","1A","U00005020");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("KV3323",904,"2021-03-17","1A","U00005010");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("KV3323",904,"2021-03-17","3C","U00005018");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("KV3323",904,"2021-03-17","7C","U00005019");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("LX3100",905,'2021-02-18',"7C","U00005005");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("LX3100",905,'2021-02-18',"80C","U00005004");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("FD5610",906,'2021-03-01',"4C","U00005002");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("EN4267",906,'2021-03-05',"2C","U00005020");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("EN4267",906,'2021-03-05',"3C","U00005019");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("FU4864",806,'2021-03-25',"4C","U00005009");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("FU4864",806,'2021-03-25',"3C","U00005008");

INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("FU4864",806,'2021-03-25',"2C","U00005007");
INSERT INTO checked_in (Flight_number,Leg_number,Flight_date,Seat_number,Passport_number)
VALUES ("FU4864",806,'2021-03-25',"9C","U00005006");


