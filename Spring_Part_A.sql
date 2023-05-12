/*
Tyler Spring 
4/24/23
Project 3
CMIS 320 / 7383
This script is where the tables are created.
Below you can see the tables with their primary keys,
types, as well as the foreign keys and where they are connected to.
*/

--Distributor table, ID as PK
CREATE TABLE distributor (
  dis_id INT PRIMARY KEY,
  name VARCHAR2(30),
  order_history VARCHAR2(30)
);

--Orders tables ID as PK, dis_id as FK
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  dis_id INT,
  dvd_quantity INT,
  vcr_quantity INT,
  price DECIMAL(7,2),
  FOREIGN KEY (dis_id) REFERENCES distributor(dis_id)
);


--Movie table ID as PK
CREATE TABLE movie(
    movie_id INT PRIMARY KEY,
    title VARCHAR2(30),
    catalog_id NUMBER(10),
    dvd_quantity INT,
    vcr_quantity INT
);

--dvd table ID as PK, movie_id as FK
CREATE TABLE dvd(
    dvd_id INT PRIMARY KEY,
    title VARCHAR2(30),
    movie_id INT,
    dvd_quantity INT,
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

--vcr table ID as PK, movie_id as FK
CREATE TABLE vcr (
    vcr_id INT PRIMARY KEY,
    title VARCHAR2(30),
    movie_id INT,
    vcr_quantity INT,
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

--catalog table ID as PK, movie, dvd, vcr id's as FK
CREATE TABLE catalog (
  catalog_id NUMBER(10) PRIMARY KEY,
  movie_id INT,
  actor VARCHAR2(30),
  actress VARCHAR2(30),
  genre VARCHAR2(30),
  director VARCHAR2(30),
  awards NUMBER(30),
  release_year INT,
  length DECIMAL(6,2),
  dvd_id INT,
  vcr_id INT,
  price DECIMAL(7,2),
  FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
  FOREIGN KEY (dvd_id) REFERENCES dvd(dvd_id),
  FOREIGN KEY (vcr_id) REFERENCES vcr(vcr_id)
);

--inventory table id as PK, movie, dvd, vcr id's as FK
CREATE TABLE inventory (
  inventory_id INT PRIMARY KEY,
  movie_id INT,
  dvd_id INT,
  vcr_id INT,
  dvd_quantity INT,
  vcr_quantity INT,
  dist_serial INT,
  FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
  FOREIGN KEY (dvd_id) REFERENCES dvd(dvd_id),
  FOREIGN KEY (vcr_id) REFERENCES vcr(vcr_id)
);

--customer table id as PK
CREATE TABLE customer (
  customer_id INT PRIMARY KEY,
  name VARCHAR2(30),
  email VARCHAR2(30),
  phone VARCHAR2(30),
  rental_history VARCHAR2(30),
  address VARCHAR2(30)
);

--rent table id as PK, customer, inventory, movie, dvd, vcr id's as FK
CREATE TABLE rent (
  rent_id INT PRIMARY KEY,
  customer_id INT,
  inventory_id INT,
  movie_id INT,
  rent_date DATE,
  due_date DATE,
  damages DECIMAL(5,2),
  late_fee DECIMAL(5,2),
  tax DECIMAL(5,2),
  rewind_fee DECIMAL(5,2),
  discount DECIMAL(5,2),
  standard DECIMAL(5,2),
  total DECIMAL(5,2),
  dvd_id INT,
  vcr_id INT,
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (inventory_id) REFERENCES inventory(inventory_id),
  FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
  FOREIGN KEY (dvd_id) REFERENCES dvd(dvd_id),
  FOREIGN KEY (vcr_id) REFERENCES vcr(vcr_id)
);

