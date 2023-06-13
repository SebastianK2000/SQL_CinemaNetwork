CREATE TABLE Cinemas (
	id SERIAL PRIMARY KEY,
	name_cinema varchar(30) NOT NULL,
	city varchar(60) NOT NULL,
	street varchar(100),
	post_key char(6) NOT NULL, 
	date_open DATE NOT NULL,
	date_close DATE
);