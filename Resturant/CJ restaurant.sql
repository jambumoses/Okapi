-- author jambu moses
-- version 1.0
-- restuarant application

create database CJ_restaurant;
use CJ_restaurant;

create table categories(
categories_id int primary key identity not null,
title varchar(100) not null,
img varchar(100) not null,
description varchar(100) null,
category_id varchar(100) null
);

create table foods(
foods_id int primary key identity not null,
title varchar(100) not null,
img varchar(100) not null,
description varchar(100) null
);

create table drinks(
drinks_id int primary key identity not null,
title varchar(100) not null,
img varchar(100) not null,
description varchar(100) null
);

create table ice_creams(
ice_creams_id int primary key identity not null,
title varchar(100) not null,
img varchar(100) not null,
description varchar(100) null
);

create table shop(
item_id int primary key identity not null,
category varchar(100) not null,
title varchar(100) not null,
img varchar(100) not null,
description varchar(100) not null,
currency varchar(50) not null,
price float not null,
quantity int not null,
subtotal float not null
);

create table cjs_users(
users_id int primary key identity not null,
email varchar(100) null,
password varchar(100) null,
username varchar(100) null,
address varchar(100) null,
country varchar(100) null,
city varchar(100) null,
dof date null,
gender varchar(100) null,
tel int null
);

create table cart(
cart_id int primary key identity not null,
title varchar(100) not null,
category varchar(100) not null,
img varchar(100) not null,
description varchar(100) not null,
price float not null,
currency varchar(50) not null,
quantity int not null,
subtotal float not null
);


-- ###droping tables####
drop database CJ_restaurant;
--drop table categories;
--drop table foods;
--drop table drinks;
--drop table ice_creams;
--drop table shop;
--drop table cjs_users;
--drop table cart;


-- inserting data in the tables



select * from foods;		
select * from cjs_users;



-- foods
insert into foods(title,img,description) values
('whole chicken','whole chicken.png',null),
('shawarm ','wrap shawarma.png',null),
('pizza','BBQ pizza.png',null),
('salmon Fish','salmon fish.png',null);

-- drinks
insert into drinks(title,img,description) values
('kiddie Drinks','kiddie drink.png',null),
('fruit boosters','fruit boosters.png',null),
('coladas','colada.png',null),
('soda','soda.png',null);

-- icecreams
insert into ice_creams(title,img,description) values
('hot fudge sundae','hot fudge.png',null),
('chocolate brownie sundae','chocolate brownie.png',null),
('ice cream cookie','cookies.png',null),
('ice cream cramel','caramel.png',null);



insert into categories(title, img, description, category_id) values
('black forest slice','black.jpg',null,null),
('ice cream','ice.png',null,null),
('milk shake','milk.jpg',null,null),
('spanish latte','spanish.png',null,null),
('french flies','plantain chips.png',null,null),
('donuts','donuts.png',null,null),
('cookies','chocolate chips cookies.png',null,null),
('fried chicken','fried chicken.jpg',null,null),
('noodles','Curry_and_Pepper_Noodles__Vegan_Recipe_-removebg-preview.png',null,null),
('hamburgers','cheese.jpg',null,null),
('pizza','pizza.png',null,null);


insert into shop(category,title,img,description,currency,price,quantity,subtotal) values
('foods','cheese burger','cheeseburger.png','burger sandwich filled with melted yellow cheddar cheese','shs',10500.0,1,10500.0),
('foods','egg_salad','egg_salad-removebg-preview.png','hard-boiled eggs,creamy mayonnaise,diced red onion and a hint of
            mustard','shs',15000.0,1,15000.0),
('foods','chicken drumsticks','chicken drumsticks.png','oven baked sticky chilli','shs',25000.0,1,25000.0),
('foods','chicken wings','chicken wings.png','crispy fries loaded with sweet chilli chicken wings','shs',11000.0,1,11000.0),
('foods','plain fries','french fries.png','Crispy delicious french fries with amazing flavors','shs',9000.0,1,9000.0),
('foods','pizza','pizza.png','A delicious chessy pizza hot and fresh from the oven','shs',35000.0,1,35000.0),
('foods','omelete','omelete.png','Loaded with fresh fruits and stuffed with plenty of cheese','shs',15000.0,1,15000.0),
('foods','passion juice','passion.png','freshing iced passion fruit','shs',17000,1,17000.0),
('foods','fruit salad','fruit salad.png','classic fruit salad with sweet zesty dressing','shs',17000.0,1,17000.0),
('foods','orange juice','orange juice.png','fresh orange juice in glass with mint fresh fruits','shs',17000.0,1,17000.0),
('foods','coffee milkshake','coffee milkshake.png','rich and creamy with a hint of chocolat flavour','shs',19000.0,1,19000.0)
;

insert into cjs_users(email,password,username,address,country,city,dof,gender,tel) values
('jambcareer@gmail.com','jamb@12345','jamb','munuki','south sudan','juda','05-05-2023','male','0761327212');