/*
Tyler Spring 
4/24/23
Project 3
CMIS 320 / 7383
The insert into methods for the tables made in part A.
This is to be ran after "Spring_Part_A".
*/

--insert methods for distributor
INSERT INTO distributor (dis_id, name, order_history)
VALUES (1, 'XYZ Distributors', '2019-2022 orders');
INSERT INTO distributor (dis_id, name, order_history)
VALUES (2, 'ABC Distributors', '2019-2022 orders');
INSERT INTO distributor (dis_id, name, order_history)
VALUES (3, 'XYZ Entertainment', '2017-2022 orders');
INSERT INTO distributor (dis_id, name, order_history)
VALUES (4, 'FilmNation', '2015-2022 orders');
INSERT INTO distributor (dis_id, name, order_history)
VALUES (5, 'ABC Films', '2019-2022 orders');

--insert methods for orders
INSERT INTO orders (order_id, dis_id, dvd_quantity, vcr_quantity, price)
VALUES (1, 1, 100, 50, 1500.00);
INSERT INTO orders (order_id, dis_id, dvd_quantity, vcr_quantity, price)
VALUES (2, 2, 150, 75, 2000.00);
INSERT INTO orders (order_id, dis_id, dvd_quantity, vcr_quantity, price)
VALUES (3, 3, 75, 0, 800.00);
INSERT INTO orders (order_id, dis_id, dvd_quantity, vcr_quantity, price)
VALUES (4, 4, 200, 100, 3000.00);
INSERT INTO orders (order_id, dis_id, dvd_quantity, vcr_quantity, price)
VALUES (5, 5, 50, 25, 750.00);

--insert methods for movies
INSERT INTO movie (movie_id, title, catalog_id, dvd_quantity, vcr_quantity)
VALUES (1, 'The Godfather', 1001, 200, 100);
INSERT INTO movie (movie_id, title, catalog_id, dvd_quantity, vcr_quantity)
VALUES (2, 'The Shawshank Redemption', 1002, 250, 150);
INSERT INTO movie (movie_id, title, catalog_id, dvd_quantity, vcr_quantity)
VALUES (3, 'Jurassic Park', 1003, 100, 75);
INSERT INTO movie (movie_id, title, catalog_id, dvd_quantity, vcr_quantity)
VALUES (4, 'Pulp Fiction', 1004, 75, 25);
INSERT INTO movie (movie_id, title, catalog_id, dvd_quantity, vcr_quantity)
VALUES (5, 'Cars', 1005, 150, 75);

--insert methods for DVDs
INSERT INTO dvd (dvd_id, title, movie_id, dvd_quantity)
VALUES (1, 'The Godfather DVD', 1, 200);
INSERT INTO dvd (dvd_id, title, movie_id, dvd_quantity)
VALUES (2, 'The Shawshank Redemption DVD', 2, 250);
INSERT INTO dvd (dvd_id, title, movie_id, dvd_quantity)
VALUES (3, 'Jurassic Park DVD', 3, 100);
INSERT INTO dvd (dvd_id, title, movie_id, dvd_quantity)
VALUES (4, 'Pulp Fiction DVD', 4, 75);
INSERT INTO dvd (dvd_id, title, movie_id, dvd_quantity)
VALUES (5, 'Cars DVD', 5, 150);

--insert methods for VCRs
INSERT INTO vcr (vcr_id, title, movie_id, vcr_quantity)
VALUES (1, 'The Godfather VCR', 1, 100);
INSERT INTO vcr (vcr_id, title, movie_id, vcr_quantity)
VALUES (2, 'The Shawshank Redemption VCR', 2, 150);
INSERT INTO vcr (vcr_id, title, movie_id, vcr_quantity)
VALUES (3, 'Jurassic Park VCR', 3, 75);
INSERT INTO vcr (vcr_id, title, movie_id, vcr_quantity)
VALUES (4, 'Pulp Fiction VCR', 4, 25);
INSERT INTO vcr (vcr_id, title, movie_id, vcr_quantity)
VALUES (5, 'Cars VCR', 5, 75);

--insert methods for catalog
INSERT INTO catalog (catalog_id, movie_id, actor, actress, genre, director, awards, release_year, length, dvd_id, vcr_id, price)
VALUES (1001, 1, 'Marlon Brando', 'Diane Keaton', 'Crime, Drama', 'Francis Ford Coppola', 3, 1972, 2.55, 1, 1, 25.99);
INSERT INTO catalog (catalog_id, movie_id, actor, actress, genre, director, awards, release_year, length, dvd_id, vcr_id, price)
VALUES (1002, 2, 'Tim Robbins', 'Morgan Freeman', 'Drama', 'Frank Darabont', 7, 1994, 2.22, 2, 2, 19.99);
INSERT INTO catalog (catalog_id, movie_id, actor, actress, genre, director, awards, release_year, length, dvd_id, vcr_id, price)
VALUES (1003, 3, 'Sam Neill', 'Laura Dern', 'Action, Adventure, Sci-Fi', 'Steven Spielberg', 3, 1993, 2.07, 3, 3, 14.99);
INSERT INTO catalog (catalog_id, movie_id, actor, actress, genre, director, awards, release_year, length, dvd_id, vcr_id, price)
VALUES (1004, 4, 'Robert De Niro', 'Jodie Foster', 'Crime, Drama', 'Martin Scorsese', 1, 1976, 1.53, 2, 2, 29.99);
INSERT INTO catalog (catalog_id, movie_id, actor, actress, genre, director, awards, release_year, length, dvd_id, vcr_id, price)
VALUES (1005, 5, 'Will Smith', 'Tim Allen', 'Drama', 'Frank Darabont', 1, 1996, 1.22, 5, 5, 19.99);

--insert methods for inventory
INSERT INTO inventory (inventory_id, movie_id, dvd_id, vcr_id, dvd_quantity, vcr_quantity, dist_serial)
VALUES (1, 1, 1, 1, 200, 100, 1234);
INSERT INTO inventory (inventory_id, movie_id, dvd_id, vcr_id, dvd_quantity, vcr_quantity, dist_serial)
VALUES (2, 2, 2, 2, 250, 150, 5678);
INSERT INTO inventory (inventory_id, movie_id, dvd_id, vcr_id, dvd_quantity, vcr_quantity, dist_serial)
VALUES (3, 3, 3, 3, 75, 50, 9012);
INSERT INTO inventory (inventory_id, movie_id, dvd_id, vcr_id, dvd_quantity, vcr_quantity, dist_serial)
VALUES (4, 4, 4, 4, 100, 100, 3456);
INSERT INTO inventory (inventory_id, movie_id, dvd_id, vcr_id, dvd_quantity, vcr_quantity, dist_serial)
VALUES (5, 5, 5, 5, 150, 75, 5678);

--insert methods for customer
INSERT INTO customer (customer_id, name, email, phone, rental_history, address)
VALUES (1, 'John Doe', 'johndoe@example.com', '555-1234', '2019-2022 rentals', '123 Main St');
INSERT INTO customer (customer_id, name, email, phone, rental_history, address)
VALUES (2, 'Jane Smith', 'janesmith@example.com', '555-5678', '2019-2022 rentals', '456 Maple Ave');
INSERT INTO customer (customer_id, name, email, phone, rental_history, address)
VALUES (3, 'Bob Johnson', 'bjohnson@example.com', '555-9012', '2018-2022 rentals', '789 Main St');
INSERT INTO customer (customer_id, name, email, phone, rental_history, address)
VALUES (4, 'Mary Brown', 'mbrown@example.com', '555-3456', '2020-2022 rentals', '321 Main St');
INSERT INTO customer (customer_id, name, email, phone, rental_history, address)
VALUES (5, 'Jane Doe', 'janedoe@example.com', '555-5679', '2018-2023 rentals', '456 Main St');

--insert methods for rent
INSERT INTO rent (rent_id, customer_id, inventory_id, movie_id, rent_date, due_date, damages, late_fee, tax, rewind_fee, discount, standard, total, dvd_id, vcr_id)
VALUES (1, 1, 1, 1, TO_DATE('2023-04-22', 'YYYY-MM-DD'), TO_DATE('2023-04-29', 'YYYY-MM-DD'), 0, 5.00, 50.00, 2.50, 0, 5.00, 57.50, 1, 1);
INSERT INTO rent (rent_id, customer_id, inventory_id, movie_id, rent_date, due_date, damages, late_fee, tax, rewind_fee, discount, standard, total, dvd_id, vcr_id)
VALUES (2, 2, 2, 2, TO_DATE('2023-04-23', 'YYYY-MM-DD'), TO_DATE('2023-04-30', 'YYYY-MM-DD'), 0, 7.50, 75.00, 3.75, 0, 7.50, 86.25, 2, 2);
INSERT INTO rent (rent_id, customer_id, inventory_id, movie_id, rent_date, due_date, damages, late_fee, tax, rewind_fee, discount, standard, total, dvd_id, vcr_id)
VALUES (3, 3, 3, 3, TO_DATE('2023-04-22', 'YYYY-MM-DD'), TO_DATE('2023-04-29', 'YYYY-MM-DD'), 0, 5.00, 50.00, 2.50, 0, 5.00, 57.50, 3, 3);
INSERT INTO rent (rent_id, customer_id, inventory_id, movie_id, rent_date, due_date, damages, late_fee, tax, rewind_fee, discount, standard, total, dvd_id, vcr_id)
VALUES (4, 4, 4, 4, TO_DATE('2023-04-22', 'YYYY-MM-DD'), TO_DATE('2023-04-29', 'YYYY-MM-DD'), 0, 5.00, 50.00, 2.50, 0, 5.00, 57.50, 4, 4);
INSERT INTO rent (rent_id, customer_id, inventory_id, movie_id, rent_date, due_date, damages, late_fee, tax, rewind_fee, discount, standard, total, dvd_id, vcr_id)
VALUES (5, 5, 5, 5, TO_DATE('2023-04-23', 'YYYY-MM-DD'), TO_DATE('2023-04-30', 'YYYY-MM-DD'), 0, 3.50, 35.00, 2.00, 0, 3.50, 40.00, 5, 5);