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
