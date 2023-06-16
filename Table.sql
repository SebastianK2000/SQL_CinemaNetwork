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
	number_seats varchar(4) NOT NULL,
	collumns varchar(4) NOT NULL, 
	id_room int REFERENCES rooms(id)
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

