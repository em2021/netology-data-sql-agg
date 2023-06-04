set search_path to netology;

create table netology.customers (
	id serial primary key unique,
	name varchar(255) constraint name_contains_only_letters check (name similar to '[A-z]*'),
	surname varchar(255) constraint surname_contains_only_letters check (surname similar to '[A-z]*'),
	age int constraint age_is_positive check (age > 0),
	phone_number varchar(50) constraint phone_number_contains_only_numbers check (phone_number similar to '[0-9]*') unique
);