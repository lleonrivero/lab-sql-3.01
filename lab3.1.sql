## Lab | SQL - Lab 3.01 ##

USE sakila;

-- Activity 1
-- 1. Drop column picture from staff.

ALTER TABLE sakila.staff
DROP COLUMN picture;

-- NOTE: Refresh schema navigator to see the column removed. 

-- 2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.

INSERT INTO sakila.staff (staff_id, first_name, last_name, address_id, email, store_id, active, username, password, last_update)
VALUES (3, 'Tammy', 'Sanders', 79, 'tammy.sanders@sakilastaff.org', 2, 1, 'Tammy', 'ironhack2022', now());

	-- The e-mail I entered is wrong. It should be '.com' instead of '.org'. Will change the information.

UPDATE sakila.staff
SET email = 'tammy.sanders@sakilastaff.com'
WHERE staff_id = 3;

	-- Jon's password is null. I will create one for him. 

UPDATE sakila.staff
SET password = 'hackiron2022'
WHERE staff_id = 2;

-- 3. Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. 
SELECT * FROM sakila.customer WHERE last_name = 'Hunter';
INSERT INTO sakila.rental (rental_date, inventory_id, customer_id, staff_id, last_update)
VALUES (now(), 1, 130, 1, now());

-- Note: Not entering rental_id (primary key, auto incremental); not entering return_date


-- Activity 2
-- 1. Use dbdiagram.io or draw.io to propose a new structure for the Sakila database.

-- We finally used the MySQL diagram editor. Please see PDF file. 