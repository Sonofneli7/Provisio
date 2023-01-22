/* Team Two
SQL Insert Statements
January 21, 2023
To start the mysql server run this on your terminal
mysql -u root -p */
-- drop database
DROP DATABASE provisio;

-- show databases
SHOW DATABASES;

-- create whatabook database
CREATE DATABASE provisio;

-- activate database
USE provisio;


-- drop test user if exists 
DROP USER IF EXISTS 'provisio_user'@'localhost';

-- Create whatabook_user and grant them all privileges to the whatabook database 
CREATE USER 'provisio_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';

-- Grant all privileges to the whatabook database to user whatabook_user on localhost 
GRANT ALL PRIVILEGES ON provisio.* TO'provisio_user'@'localhost';

FLUSH PRIVILEGES;

USE provisio;

-- DROP TABLES IF THEY EXISTS
DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS hotel;
DROP TABLE IF EXISTS place;
DROP TABLE IF EXISTS reservation;


-- CREATE USER TABLE
CREATE TABLE user (
    user_id              INT             NOT NULL        AUTO_INCREMENT,
    first_name      VARCHAR(75)     NOT NULL,
    last_name       VARCHAR(75)     NOT NULL,
    email           VARCHAR(255)    NOT NULL,
    passphrase      VARCHAR(255)    NOT NULL,
    loyalty_points  VARCHAR(255)    NOT NULL,
    PRIMARY KEY(id)
);
-- INSERT INTO SQL COMMANDS FOR USERS
INSERT INTO user(first_name, last_name, email, passphrase)
    VALUES('Darell', 'Reese', 'dreese@gmail.com', 'Python%78');
    
INSERT INTO user(first_name, last_name, email, passphrase)
    VALUES('Austin', 'Powers', 'yeahbaby@hotmail.com', 'hahaYeah!');
    
INSERT INTO user(first_name, last_name, email, passphrase)
    VALUES('Isabella', 'Holmes', 'homesbella@icloud.com', 'Dectivite#7080');
    
-- CREATE TABLE PLACE (LOCATION IS A KEYWORD IN MYSQL)

CREATE TABLE place (
    place_id        INT             NOT NULL        AUTO_INCREMENT,
    city            VARCHAR(75)     NOT NULL,
    ind_state       VARCHAR(75)     NOT NULL,
    zip             VARCHAR(255)    NOT NULL,
    picture         VARCHAR(300)    NOT NULL,
    PRIMARY KEY(place_id)
);

-- INSERT INTO PLACE TABLE

INSERT INTO place(city, ind_state, zip, picture)
    VALUES('Orlando', 'Florida', '32819', 'orlando.jpg');

INSERT INTO place(city, ind_state, zip, picture)
    VALUES('Miami', 'Florida', '33141', 'miami.jpg');

INSERT INTO place(city, ind_state, zip, picture)
    VALUES('New York', 'New York', '10011', 'newyork.jpg');
    
-- CREATE TABLE HOTEL

CREATE TABLE hotel (
    hotel_id        INT             NOT NULL        AUTO_INCREMENT,
    hotel_name      VARCHAR(75)     NOT NULL,
    price           INT             NOT NULL,
    descrip         VARCHAR(255)    NOT NULL,
    amenitites      VARCHAR(300)    NOT NULL,
    place_id        INT             NOT NULL,
    PRIMARY KEY(hotel_id)
    -- May need to add a foreign key for place_id
);

-- INSERT INTO HOTEL TABLE

INSERT INTO hotel(hotel_name, price, descrip, amenitites, location_id)
    VALUES(
        'Old Key West', 
        500, 
        'Family fun resort style stay', 
        'Pool, Tennis, Gym, Amusement Parks, Restaurants', 
        (SELECT place_id FROM place where city = 'Orlando')
        );
        
INSERT INTO hotel(hotel_name, price, descrip, amenitites, location_id)
    VALUES(
        'Provisio South Beach Resort', 
        1000, 
        ‘Adult Hideaway’, 
        'Pool, Clubs, Gym, Bars, Restaurants', 
        (SELECT place_id FROM place where city = 'Miami')
        );
        
INSERT INTO hotel(hotel_name, price, descrip, amenitites, location_id)
    VALUES(
        'The Grand Provisio', 
        2000, 
        ‘Executive Business Stays’, 
        'Pool, Conferene Rooms, Gym, Bars, Restaurants, Room Service, Golf', 
        (SELECT place_id FROM place where city = 'New York')
        );
        
    -- CREATE RESERVATIONS TABLE
    
    CREATE TABLE reservations(
    reservations_id      INT             NOT NULL        AUTO_INCREMENT,
    user_id              INT             NOT NULL        AUTO_INCREMENT,
    hotel_id             INT             NOT NULL        AUTO_INCREMENT,
    
    PRIMARY KEY(reservations_id)
    CONSTRAINT fk_hotel
    FOREIGN KEY (hotel_id)
        REFERENCES hotel(hotel_id),
    CONSTRAINT fk_user
    FOREIGN KEY (user_id)
        REFERENCES user(user_Id)
); 

INSERT INTO reservations(user_id, hotel_id)
    VALUES( (SELECT user_id FROM user WHERE first_name = 'Darrell'),
    VALUES( (SELECT hotel_id FROM hotel WHERE hotel_name = 'Old Key West'),
    VALUES( (SELECT reservations_id FROM reservations WHERE user_id = 1),
            );

INSERT INTO reservations(user_id, hotel_id)
    VALUES( (SELECT user_id FROM user WHERE first_name = 'Austin'),
    VALUES( (SELECT hotel_id FROM hotel WHERE hotel_name = 'Provisio SouthBeach'),
    VALUES( (SELECT reservations_id FROM reservations WHERE user_id = 2),
            );
           
INSERT INTO reservations(user_id, hotel_id)
    VALUES( (SELECT user_id FROM user WHERE first_name = 'Isabella'),
    VALUES( (SELECT hotel_id FROM hotel WHERE hotel_name = 'Grand Provisio'),
    VALUES( (SELECT reservations_id FROM reservations WHERE user_id = 3),
            );
           
