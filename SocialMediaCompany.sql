Create database if  not exists newSocialMediaCompany;

use newSocialMediaCompany;

drop table if exists social;
drop table if exists posts;
drop table if exists comments;

create table social (
member_id int(15) not null auto_increment,
user_name varchar(26) not null,
first_name varchar(26) not null,
last_name varchar(26) not null,
city varchar(25), 
state varchar(2) not null, 
email varchar(20) not null,
phone_number varchar(11), 
social_password varchar(40) not null, 
primary key (id),
unique key (user_name),
unique key (email)
);

create table posts (
post_id int(15) not null auto_increment,
user_name varchar(26) not null,
post text(200),
tag_location text(100), 
publish_timestamp datetime default current_timestamp,
primary key(post_id),
foreign key (user_name) references social(user_name)
);

create  table comments (
comment_id int(15) not null auto_increment,
post_id int(15) not null,
user_name varchar(26) not null,
comment varchar(200) not null,
publish_timestamp datetime default current_timestamp,
primary key (comment_id),
foreign key (post_id) references posts(post_id),
foreign key (user_name) references social(user_name)
);