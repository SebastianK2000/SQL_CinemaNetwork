 
-- Wypełnienie tabeli Cinemas

INSERT INTO cinemas (name_cinema, city, street, post_key, date_open, date_close )
	VALUES ('Multikino', 'Tarnów', 'Krakowska 15', '33-100', '20.12.2019', NULL);
INSERT INTO cinemas (name_cinema, city, street, post_key, date_open, date_close)
	VALUES ('TripleCinema', 'Sopot', 'Słoneczna 7', '23-640', '20.12.2016', NULL);
INSERT INTO cinemas (name_cinema, city, street, post_key, date_open, date_close)
	VALUES ('Manufaktura', 'Łódź', 'Mickiewicza 51', '70-990', '20.12.2001', NULL);
INSERT INTO cinemas (name_cinema, city, street, post_key, date_open, date_close)
	VALUES ('SeaCinema', 'Gdańsk', 'Portowa 45', '77-190', '20.12.2023', NULL);
INSERT INTO cinemas (name_cinema, city, street, post_key, date_open, date_close)
	VALUES ('TowerCinema', 'Wrocław', 'Arkady 98', '12-900', '20.12.2015', NULL);
INSERT INTO cinemas (name_cinema, city, street, post_key, date_open, date_close)
	VALUES ('Multikino', 'Warszawa', 'Powiśla 2', '50-540', '20.12.2010', NULL);
INSERT INTO cinemas (name_cinema, city, street, post_key, date_open, date_close)
	VALUES ('Cinema3D', 'Kraków', 'Miodowa 89', '30-150', '20.12.2022', NULL);
	
-- Wypełnienie tabeli Rooms

INSERT INTO rooms (name_room, floor_cinema, number_of_seats, quality_screen)
	VALUES ('Mars', '1', '40', '4K');
INSERT INTO rooms (name_room, floor_cinema, number_of_seats, quality_screen)
	VALUES ('Venus', '2', '75', '4K');
INSERT INTO rooms (name_room, floor_cinema, number_of_seats, quality_screen)
	VALUES ('Orion', '0', '60', '4K');
INSERT INTO rooms (name_room, floor_cinema, number_of_seats, quality_screen)
	VALUES ('Saturn', '4', '25', '4K');
INSERT INTO rooms (name_room, floor_cinema, number_of_seats, quality_screen)
	VALUES ('Jowisz', '22', '100', '4K');
INSERT INTO rooms (name_room, floor_cinema, number_of_seats, quality_screen)
	VALUES ('Neptun', '10', '35', '4K');
INSERT INTO rooms (name_room, floor_cinema, number_of_seats, quality_screen)
	VALUES ('Helios', '1', '40', '4K');


-- Wypełnienie tabeli Room_cinema_seats

INSERT INTO room_cinema_seats (number_seats, collumns, id_room)
	VALUES (5, 102, 1);
INSERT INTO roomm_cinema_seats (number_seats, collumns, id_room)
	VALUES (4, 108, 1);
INSERT INTO roomm_cinema_seats (number_seats, collumns, id_room)
	VALUES (9, 103, 1);
INSERT INTO roomm_cinema_seats (number_seats, collumns, id_room)
	VALUES (15, 101, 1);
INSERT INTO roomm_cinema_seats (number_seats, collumns, id_room)
	VALUES (20, 105, 1);
INSERT INTO roomm_cinema_seats (number_seats, collumns, id_room)
	VALUES (10, 110, 1);
INSERT INTO roomm_cinema_seats (number_seats, collumns, id_room)
	VALUES (15, 107, 1);
	
-- Wypełnienie tabeli Seans

INSERT INTO seans (id_movie, id_room, data_of_seans, hour_seans, price_ticket_normal, price_ticket_student)
	VALUES (1, 1, '16.06.2023', '08:00', 29.99, 14.99);
INSERT INTO seans (id_movie, id_room, data_of_seans, hour_seans, price_ticket_normal, price_ticket_student)	VALUES (1, 1, '16.06.2023', '08:00', 29.99, 14.99);
	VALUES (2, 2, '17.06.2023', '18:00', 29.99, 14.99);
INSERT INTO seans (id_movie, id_room, data_of_seans, hour_seans, price_ticket_normal, price_ticket_student)	VALUES (1, 1, '16.06.2023', '08:00', 29.99, 14.99);
	VALUES (3, 3, '18.06.2023', '09:00', 49.99, 24.99);
INSERT INTO seans (id_movie, id_room, data_of_seans, hour_seans, price_ticket_normal, price_ticket_student)	VALUES (1, 1, '16.06.2023', '08:00', 29.99, 14.99);
	VALUES (4, 4, '19.06.2023', '12:00', 29.99, 14.99);
INSERT INTO seans (id_movie, id_room, data_of_seans, hour_seans, price_ticket_normal, price_ticket_student)	VALUES (1, 1, '16.06.2023', '08:00', 29.99, 14.99);
	VALUES (5, 5, '20.06.2023', '20:00', 39.99, 24.99);
INSERT INTO seans (id_movie, id_room, data_of_seans, hour_seans, price_ticket_normal, price_ticket_student)	VALUES (1, 1, '16.06.2023', '08:00', 29.99, 14.99);
	VALUES (6, 6, '21.06.2023', '13:00', 29.99, 14.99);
INSERT INTO seans (id_movie, id_room, data_of_seans, hour_seans, price_ticket_normal, price_ticket_student)	VALUES (1, 1, '16.06.2023', '08:00', 29.99, 14.99);
	VALUES (7, 7, '22.06.2023', '16:00', 59.99, 34.99);
	
-- Wypełnienie tabeli Reservation

INSERT INTO reservation (id_seans, id_seats, is_priced, date_sales, hour_sales, place_sales, id_customer)
	VALUES (1, 1, 1, '16.06.2023', '08:00', 'Online', 1);
INSERT INTO reservation (id_seans, id_seats, is_priced, date_sales, hour_sales, place_sales, id_customer)
	VALUES (2, 2, 2, '17.06.2023', '15:00', 'Online', 2);
INSERT INTO reservation (id_seans, id_seats, is_priced, date_sales, hour_sales, place_sales, id_customer)
	VALUES (3, 3, 3, '18.06.2023', '16:00', 'Online', 3);
INSERT INTO reservation (id_seans, id_seats, is_priced, date_sales, hour_sales, place_sales, id_customer)
	VALUES (4, 4, 4, '19.06.2023', '17:00', 'Online', 4);
INSERT INTO reservation (id_seans, id_seats, is_priced, date_sales, hour_sales, place_sales, id_customer)
	VALUES (5, 5, 5, '20.06.2023', '22:00', 'Online', 5);
INSERT INTO reservation (id_seans, id_seats, is_priced, date_sales, hour_sales, place_sales, id_customer)
	VALUES (6, 6, 6, '21.06.2023', '23:00', 'Online', 6);
INSERT INTO reservation (id_seans, id_seats, is_priced, date_sales, hour_sales, place_sales, id_customer)
	VALUES (7, 7, 7, '22.06.2023', '04:00', 'Online', 7);
	
-- Wypełnienie tabeli customers

INSERT INTO customers (login, email, date_account_create, first_name, last_name)
	VALUES ('admin1', 'email1@gmail.com', '16.06.2023', 'Aleksandra', 'Kowalski');
INSERT INTO customers (login, email, date_account_create, first_name, last_name)
	VALUES ('admin2', 'email2@gmail.com', '17.06.2023', 'Piotr', 'Kowalski');
INSERT INTO customers (login, email, date_account_create, first_name, last_name)
	VALUES ('admin3', 'email3@gmail.com', '18.06.2023', 'Dawid', 'Kowalski');
INSERT INTO customers (login, email, date_account_create, first_name, last_name)
	VALUES ('admin4', 'email4@gmail.com', '19.06.2023', 'Sebastian', 'Kowalski');
INSERT INTO customers (login, email, date_account_create, first_name, last_name)
	VALUES ('admin5', 'email5@gmail.com', '20.06.2023', 'Magdalena', 'Kowalski');
INSERT INTO customers (login, email, date_account_create, first_name, last_name)
	VALUES ('admin6', 'email6@gmail.com', '21.06.2023', 'Zofia', 'Kowalski');
INSERT INTO customers (login, email, date_account_create, first_name, last_name)
	VALUES ('admin7', 'email7@gmail.com', '22.06.2023', 'Marcel', 'Kowalski');

-- Wypełnienie tabeli movie

INSERT INTO movie (title_movie, time_movie, year_movie, description_movie, actors, language_movie, subtitles_pl, 
quality, type_move, pegi, price_licence, active_since, active_until)
	VALUES (1, 1, 1, '16.06.2023', '08:00', 'Online', 1);
INSERT INTO movie (title_movie, time_movie, year_movie, description_movie, actors, language_movie, subtitles_pl, 
quality, type_move, pegi, price_licence, active_since, active_until)
	VALUES (1, 1, 1, '16.06.2023', '08:00', 'Online', 1);
INSERT INTO movie (title_movie, time_movie, year_movie, description_movie, actors, language_movie, subtitles_pl, 
quality, type_move, pegi, price_licence, active_since, active_until)
	VALUES (1, 1, 1, '16.06.2023', '08:00', 'Online', 1);
INSERT INTO movie (title_movie, time_movie, year_movie, description_movie, actors, language_movie, subtitles_pl, 
quality, type_move, pegi, price_licence, active_since, active_until)
	VALUES (1, 1, 1, '16.06.2023', '08:00', 'Online', 1);