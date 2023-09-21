create database record_company;
use record_company;
create table bands (  
  id int not null auto_increment,
  name varchar(255) not null,
  primary key(id)
);

create table albumm(
id int not null auto_increment,
name varchar(255) not null,
relase_year int,
band_id int not null,
primary key (id),
foreign key (band_id) references bands(id)
);

insert into bands (name) values ('Iron Maiden');

insert into bands (name) values ('Deuce'), ('Avenged Sevenfold'), ('Ankor');

select * from bands;

select * from bands limit 2;

select name from bands;
select id as 'ID', name as 'band name' from bands;

select * from bands order by name;

insert  into albumm (name, relase_year, band_id)
values ('The Number of the Beasts', 1985, 1),
       ('Power Slave', 1984, 1),
       ('Nightmare', 2018, 2),
       ('Nightmare', 2010, 3),
       ('Test album', null, 3);
       
      select * from albumm;
      
     select distinct name from albumm;
     
update albumm set relase_year = 1982  where id = 1;
select * from albumm where relase_year < 2000;

select * from albumm where name like '%er%' or band_id = 2;

select *from albumm where relase_year = 1984 and band_id = 1;

select * from albumm where relase_year  between 2000 and 2018;

select * from albumm where relase_year is null;

delete from albumm where id = 5;

select * from albumm;


select * from bands 
right join bands on bands.id = albums.band_id;


select sum(release_year) from albumm;

select band_id, count(band_id) from albumm
group by band_id;


select b.name as band_name, count(a.id) as num_albumm
from bands as b
left join albumm as a on b.id = a.band_id 
where b.name = "Deuce"  group by b.id  having num_albumm = 1;
