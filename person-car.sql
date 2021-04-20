create table car (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price NUMERIC(19, 2) NOT NULL
);

create table person (
    id BIGSERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	gender VARCHAR(7) NOT NULL,
	email VARCHAR(100),
	date_of_birth DATE NOT NULL,
	country_of_birth VARCHAR(50) NOT NULL,
	car_id BIGINT REFERENCES car(id),
	UNIQUE(car_id)
);

-- INSERT INTO PERSON
insert into person (first_name, last_name, gender, email, date_of_birth, country_of_birth, car_id)
values ('Fernanda', 'Beardon', 'Female', 'fernandab@is.gd', '1953-10-28', 'Comoros', '1');

insert into person (first_name, last_name, gender, email, date_of_birth, country_of_birth, car_id)
values ('Omar', 'Colmore', 'Male', null, '1921-04-03', 'Finland', '2');

insert into person (first_name, last_name, gender, email, date_of_birth, country_of_birth, car_id)
values ('Adriana', 'Matuschek', 'Female', 'amatuschek2@feedburner.com', '1965-02-28', 'Cameroon');

-- INSERT INTO CAR
insert into car (make, model, price) values ('Land Rover', 'Sterling', '87665.38');
insert into car (make, model, price) values ('GMC', 'Acadia', '17662.69');