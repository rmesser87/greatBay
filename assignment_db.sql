create database if not exists application_db;

use application_db;

create table if not exists users (
uID integer(10) not null auto_increment primary key,
username varchar(25) not null, 
uPassword varchar(10) not null 
);

create table if not exists items (
ID integer(10) not null auto_increment primary key,
sellerID integer(10) not null,
currentBidder integer(10),
year integer(4) not null,
make varchar(25) not null,
model varchar(26) not null,
carCondition varchar(25),
mileage integer(12) not null,
startingBid integer(10),
currentBid integer(10),
forSale boolean not null
);

insert into users (username, uPassword) values
('rmesser', 'Password1'), ('dmfletcher', 'Password2'),('arovira', 'Password3');

insert into items (sellerID, year, make, model, carCondition, mileage, startingBid, forSale) values
(1, 1997, 'Honda', 'Accord', 'Fair', 100000, 2500, true), (2, 2007, 'Ford', 'Taurus', 'New', 90000, 500, true),(3, 2007, 'Toyota', 'Prius', 'Poor', 155000, 2000, true);
