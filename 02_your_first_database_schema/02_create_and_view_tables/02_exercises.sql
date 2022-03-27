CREATE TABLE countries(
  id serial,
  name varchar(50) NOT NULL UNIQUE,
  capital varchar(50) NOT NULL,
  population integer
);
