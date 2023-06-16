-- Wypełnienie tabeli Cinemas 

INSERT INTO cinemas (name_cinema, city, street, post_key, date_open, date_close)
	VALUES ('Multikino', 'Tarnów', 'Krakowska 15', '33-100', '20.12.2019');
INSERT INTO cinemas (name_cinemas, city, street, post_key, date_open, date_close)
	VALUES ('TripleCinema', 'Sopot', 'Słoneczna 7', '23-640', '20.12.2016');
INSERT INTO cinemas (name_cinemas, city, street, post_key, date_open, date_close)
	VALUES ('Manufaktura', 'Łódź', 'Mickiewicza 51', '70-990', '20.12.2001');
INSERT INTO cinemas (name_cinemas, city, street, post_key, date_open, date_close)
	VALUES ('SeaCinema', 'Gdańsk', 'Portowa 45', '77-190', '20.12.2023');
INSERT INTO cinemas (name_cinemas, city, street, post_key, date_open, date_close)
	VALUES ('TowerCinema', 'Wrocław', 'Arkady 98', '12-900', '20.12.2015');
INSERT INTO cinemas (name_cinemas, city, street, post_key, date_open, date_close)
	VALUES ('Multikino', 'Warszawa', 'Powiśla 2', '50-540', '20.12.2010');
INSERT INTO cinemas (name_cinemas, city, street, post_key, date_open, date_close)
	VALUES ('Cinema3D', 'Kraków', 'Miodowa 89', '30-150', '20.12.2022');
	
-- Wypełnienie tabeli Rooms

INSERT INTO rooms (name_room, floor_cinema, number_of_seats, quality_screen, id_cinema)
	VALUES ('Mars', '1', '40', '4K', '1');
INSERT INTO rooms (name_room, floor_cinema, number_of_seats, quality_screen, id_cinema)
	VALUES ('Venus', '2', '75', '4K', '1');
INSERT INTO rooms (name_room, floor_cinema, number_of_seats, quality_screen, id_cinema)
	VALUES ('Orion', '0', '60', '4K', '1');
INSERT INTO rooms (name_room, floor_cinema, number_of_seats, quality_screen, id_cinema)
	VALUES ('Saturn', '4', '25', '4K', '1');
INSERT INTO rooms (name_room, floor_cinema, number_of_seats, quality_screen, id_cinema)
	VALUES ('Jowisz', '22', '100', '4K', '1');
INSERT INTO rooms (name_room, floor_cinema, number_of_seats, quality_screen, id_cinema)
	VALUES ('Neptun', '10', '35', '4K', '1');
INSERT INTO rooms (name_room, floor_cinema, number_of_seats, quality_screen, id_cinema)
	VALUES ('Helios', '1', '40', '4K', '1');


-- Wypełnienie tabeli Room_cinema_seats

INSERT INTO roomm_cinema_seats (number_seats, collumns, id_room, data_of_seans, hour_seans)
	VALUES (5, 102, 1, '16.06.2023', '08:00');
INSERT INTO roomm_cinema_seats (number_seats, collumns, id_room, data_of_seans, hour_seans)
	VALUES (4, 108, 5, '17.06.2023', '22:00');
INSERT INTO roomm_cinema_seats (number_seats, collumns, id_room, data_of_seans, hour_seans)
	VALUES (9, 103, 4, '18.06.2023', '20:45');
INSERT INTO roomm_cinema_seats (number_seats, collumns, id_room, data_of_seans, hour_seans)
	VALUES (15, 101, 7, '19.06.2023', '15:45');
INSERT INTO roomm_cinema_seats (number_seats, collumns, id_room, data_of_seans, hour_seans)
	VALUES (20, 105, 2, '20.06.2023', '12:00');
INSERT INTO roomm_cinema_seats (number_seats, collumns, id_room, data_of_seans, hour_seans)
	VALUES (10, 110, 3, '21.06.2023', '10:00');
INSERT INTO roomm_cinema_seats (number_seats, collumns, id_room, data_of_seans, hour_seans)
	VALUES (15, 107, 6, '22.06.2023', '16:00');
	
-- Wypełnienie tabeli Seans NIE GOTOWE 

INSERT INTO seans (id_movie, id_room, data_of_seans, hour_seans, price_ticket_normal, price_ticket_student)
	VALUES (1, 1, '16.06.2023', '08:00', 29.99, 14.99);
INSERT INTO roomm_cinema_seats (id_movie, id_room, data_of_seans, hour_seans, price_ticket_normal, price_ticket_student)
	VALUES (1, 1, '16.06.2023', '08:00', 29.99, 14.99);
INSERT INTO roomm_cinema_seats (id_movie, id_room, data_of_seans, hour_seans, price_ticket_normal, price_ticket_student)
	VALUES (1, 1, '16.06.2023', '08:00', 29.99, 14.99);
INSERT INTO roomm_cinema_seats (id_movie, id_room, data_of_seans, hour_seans, price_ticket_normal, price_ticket_student)
	VALUES (1, 1, '16.06.2023', '08:00', 29.99, 14.99);
INSERT INTO roomm_cinema_seats (id_movie, id_room, data_of_seans, hour_seans, price_ticket_normal, price_ticket_student)
	VALUES (1, 1, '16.06.2023', '08:00', 29.99, 14.99);
INSERT INTO roomm_cinema_seats (id_movie, id_room, data_of_seans, hour_seans, price_ticket_normal, price_ticket_student)
	VALUES (1, 1, '16.06.2023', '08:00', 29.99, 14.99);
INSERT INTO roomm_cinema_seats (id_movie, id_room, data_of_seans, hour_seans, price_ticket_normal, price_ticket_student)
	VALUES (1, 1, '16.06.2023', '08:00', 29.99, 14.99);
	
-- Wypełnienie tabeli Reservation

INSERT INTO reservation (id_seans, id_seats, is_priced, date_sales, hour_sales, place_sales, id_customer)
	VALUES (1, 1, '16.06.2023', '08:00', 29.99, 14.99);