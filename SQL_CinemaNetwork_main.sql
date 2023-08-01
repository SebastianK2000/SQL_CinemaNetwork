 -- Tworzenie tabel
 
 CREATE TABLE Cinemas (
	id SERIAL PRIMARY KEY,
	name_cinema varchar(30) NOT NULL,
	city varchar(60) NOT NULL,
	street varchar(100),
	post_key char(6) NOT NULL, 
	date_open DATE NOT NULL,
	date_close DATE
);

CREATE TABLE movie(
	id SERIAL PRIMARY KEY, 
	title_movie varchar(300) NOT NULL, 
	time_movie int NOT NULL, 
	year_movie int, 
	description_movie text, 
	actors text, 
	language_movie char(2), 
	subtitles_pl boolean DEFAULT true, 
	quality varchar(10),
	type_move varchar(50),
	pegi varchar(5),
	price_licence numeric(10, 2), 
	active_since DATE NOT NULL,
	active_until DATE NOT NULL
);

CREATE TABLE customers(	
	id SERIAL PRIMARY KEY, 
	login varchar(50) NOT NULL,
	email varchar(100) NOT NULL,
	date_account_create DATE NOT NULL DEFAULT NOW(),
	first_name varchar(40), 
	last_name varchar(40)
);

CREATE TABLE rooms(
	id SERIAL PRIMARY KEY, 
	name_room varchar(50) NOT NULL,
	floor_cinema varchar(50), 
	number_of_seats int NOT NULL,
	quality_screen varchar(10),
	id_cinema  int REFERENCES cinemas(id)
);

CREATE TABLE room_cinema_seats(
	id SERIAL PRIMARY KEY, 
	number_seats varchar(50) NOT NULL,
	collumn_seats varchar(50) NOT NULL,
	id_room INT NOT NULL,
	CONSTRAINT id_room_fkey FOREIGN KEY (id_room) 
		REFERENCES rooms(id)

);

CREATE TABLE seans(
	id SERIAL PRIMARY KEY,
	id_movie int NOT NULL REFERENCES movie(id),
	id_room int NOT NULL REFERENCES rooms(id),
	data_of_seans date NOT NULL,
	hour_seans time NOT NULL,
	price_ticket_normal numeric(3,2) NOT NULL,
	price_ticket_student numeric(3,2) NOT NULL
);

CREATE TABLE reservation(
	id SERIAL PRIMARY KEY,
	id_seans int NOT NULL REFERENCES seans(id),
	id_seats int NOT NULL REFERENCES room_cinema_seats(id),
	is_priced boolean DEFAULT false,
	date_sales date,
	hour_sales time,
	place_sales varchar(20) NOT NULL,
	id_customer int REFERENCES customers(id)
);

-- Wypełnienie tabeli room_cinema_seats

INSERT INTO room_cinema_seats (number_seats, collumn_seats, id_room)
VALUES ('40', '102', 15);

INSERT INTO room_cinema_seats (number_seats, collumn_seats, id_room)
VALUES ('75', '108', 16);

INSERT INTO room_cinema_seats (number_seats, collumn_seats, id_room)
VALUES ('60', '103', 17);

INSERT INTO room_cinema_seats (number_seats, collumn_seats, id_room)
VALUES ('25', '101', 18);

INSERT INTO room_cinema_seats (number_seats, collumn_seats, id_room)
VALUES ('100', '105', 19);

INSERT INTO room_cinema_seats (number_seats, collumn_seats, id_room)
VALUES ('35', '110', 20);

INSERT INTO room_cinema_seats (number_seats, collumn_seats, id_room)
VALUES ('40', '107', 21);

	
-- Wypełnienie tabeli Seans

INSERT INTO seans (id_movie, id_room, data_of_seans, hour_seans, price_ticket_normal, price_ticket_student)
	VALUES (1, 15, '16.06.2023', '08:00', 9.5, 4.5);
INSERT INTO seans (id_movie, id_room, data_of_seans, hour_seans, price_ticket_normal, price_ticket_student)	
	VALUES (2, 16, '17.06.2023', '18:00', 9.5, 4.5);
INSERT INTO seans (id_movie, id_room, data_of_seans, hour_seans, price_ticket_normal, price_ticket_student)	
	VALUES (3, 17, '18.06.2023', '09:00', 9.5, 4.5);
INSERT INTO seans (id_movie, id_room, data_of_seans, hour_seans, price_ticket_normal, price_ticket_student)	
	VALUES (4, 18, '19.06.2023', '12:00', 9.5, 4.5);
INSERT INTO seans (id_movie, id_room, data_of_seans, hour_seans, price_ticket_normal, price_ticket_student)	
	VALUES (1, 19, '20.06.2023', '20:00', 9.5, 4.5);
INSERT INTO seans (id_movie, id_room, data_of_seans, hour_seans, price_ticket_normal, price_ticket_student)	
	VALUES (2, 20, '21.06.2023', '13:00', 9.5, 4.5);
INSERT INTO seans (id_movie, id_room, data_of_seans, hour_seans, price_ticket_normal, price_ticket_student)
	VALUES (3, 21, '22.06.2023', '16:00', 9.5, 4.5);
	

SELECT * FROM reservation
	
-- Wypełnienie tabeli Reservation

INSERT INTO reservation (id_seans, id_seats, is_priced, date_sales, hour_sales, place_sales, id_customer)
	VALUES (7, 10, FALSE, '16.06.2023', '08:00', 'Online', 1);
INSERT INTO reservation (id_seans, id_seats, is_priced, date_sales, hour_sales, place_sales, id_customer)
	VALUES (8, 11, FALSE, '17.06.2023', '15:00', 'Online', 2);
INSERT INTO reservation (id_seans, id_seats, is_priced, date_sales, hour_sales, place_sales, id_customer)
	VALUES (9, 12, FALSE, '18.06.2023', '16:00', 'Online', 3);
INSERT INTO reservation (id_seans, id_seats, is_priced, date_sales, hour_sales, place_sales, id_customer)
	VALUES (10, 13, TRUE, '19.06.2023', '17:00', 'Online', 4);
INSERT INTO reservation (id_seans, id_seats, is_priced, date_sales, hour_sales, place_sales, id_customer)
	VALUES (11, 14, FALSE, '20.06.2023', '22:00', 'Online', 5);
INSERT INTO reservation (id_seans, id_seats, is_priced, date_sales, hour_sales, place_sales, id_customer)
	VALUES (12, 15, TRUE, '21.06.2023', '23:00', 'Online', 6);
INSERT INTO reservation (id_seans, id_seats, is_priced, date_sales, hour_sales, place_sales, id_customer)
	VALUES (13, 16, FALSE, '22.06.2023', '04:00', 'Online', 7);
	
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

INSERT INTO movie (title_movie, time_movie, year_movie, description_movie, actors, language_movie, subtitles_pl, quality, type_move, pegi, price_licence, active_since, active_until)
	VALUES ('Wilk z Wall Street', 2, 1990, 'Makler który podbija świat...', 'Leonardo DiCaprio', 'PL', TRUE, 'Hight', 'Komedia', 15,9, '16.06.2023', '16.07.2023');
INSERT INTO movie (title_movie, time_movie, year_movie, description_movie, actors, language_movie, subtitles_pl, 
quality, type_move, pegi, price_licence, active_since, active_until)
	VALUES ('Gwiezdne Wojny', 2,1970, 'Dawno, dawno temu w odległej galaktyce...','Pedro Pascal', 'PL', TRUE, 'Hight', 'SF', 15,9, '16.06.2023', '16.07.2023');
INSERT INTO movie (title_movie, time_movie, year_movie, description_movie, actors, language_movie, subtitles_pl, 
quality, type_move, pegi, price_licence, active_since, active_until)
	VALUES ('Harry Potter', 2, 2000, 'Urodzony wielki mag z blizną...','Daniel Radcliffe', 'PL', TRUE, 'Hight', 'Fantasy', 15,9, '16.06.2023', '16.07.2023');
INSERT INTO movie (title_movie, time_movie, year_movie, description_movie, actors, language_movie, subtitles_pl, 
quality, type_move, pegi, price_licence, active_since, active_until)
	VALUES ('Barbie', 2, 2023, 'Przygody Barbie i Kena...', 'Margot Robie, Ryan Gosling', 'PL', TRUE, 'Hight', 'Komedia', 15,9, '16.06.2023', '16.07.2023');