-- Active: 1750240490853@@127.0.0.1@5432@ph
CREATE TABLE person5(

    id serial PRIMARY KEY,
    user_name VARCHAR(20) NOT NULL,
    age INTEGER CHECK (age >= 18)
)

INSERT INTO person5(id, user_name, age) VALUES(3, 'Imran', 25);
SELECT * from person5;

ALTER TABLE person5
    ADD COLUMN email VARCHAR(25) DEFAULT 'defualt@mail.com' NOT NULL;

    
SELECT * from person5;

INSERT INTO person5(id, user_name, age, email) VALUES(8, 'hossain', 24, 'avr@gmail.com');
SELECT * from person5;

ALTER TABLE person5
    ADD COLUMN secont VARCHAR(25) DEFAULT 'radium' NOT NULL;

SELECT * from person5;