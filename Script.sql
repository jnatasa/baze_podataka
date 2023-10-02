drop database if exists music;
create database music;
use music;


create table artist(
id int not null auto_increment primary key,
name varchar(255) not null
);

create table albums(
id int not null auto_increment primary key,
name varchar(255) not null,
relase_year int
);

create table songs( 
id int not null auto_increment primary key,
name varchar(255) not null
);

create table genres( 
id int not null auto_increment primary key,
name varchar(255) not null
);

create table users(
id int not null auto_increment primary key,
name varchar(255) not null
);

create table playlist( 
id int not null auto_increment primary key,
name varchar(255) not null
);

create table ratings(
id int not null auto_increment primary key,
rating int
);

create table menagers(
id int not null auto_increment primary key,
name varchar(255) not null
);

create table status(
id int not null auto_increment primary key,
is_active boolean not null default true
);

create table bands( 
id int not null auto_increment primary key,
name varchar(255) not null,
albums int,
songs int,
genres int,
menagers int,
playlist int,
users int,
is_active boolean
);


alter table artist add foreign key (id) references menagers (id);

alter table songs add foreign key (id) references ratings (id);

alter table bands add foreign key (id) references albums (id);
alter table bands add foreign key (id) references songs (id);
alter table bands add foreign key (id) references genres (id);
alter table bands add foreign key (id) references menagers (id);
alter table bands add foreign key (id) references status (id);
alter table bands add foreign key (id) references playlist (id);
alter table bands add foreign key (id) references users (id);