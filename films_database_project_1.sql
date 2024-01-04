-- codecademy postgres database project 1
-- create 'films' table 

create table films(
	name text,
	release_date INTEGER
);

-- begin by entering several films into the DB

insert into films(name, release_date)
values ('Spirited Away', 2001);


insert into films(name, release_date)
values('My Neighbor Totoro', 1988);

insert into films(name, release_date)
values('Princess Mononoke', 1997);

insert into films(name, release_date)
values('The Boy and the Heron', 2023);

-- decide to change the DB name to reflect the films stored

alter table films 
rename to favorite_studio_ghibli_films;

insert into favorite_studio_ghibli_films(name, release_date)
values('The Wind Rises', 2013);

insert into favorite_studio_ghibli_films(name, release_date)
values('Ponyo', 2008);

-- adding some more columns for more information 

alter table favorite_studio_ghibli_films
add column runtime INTEGER,
add column category text,
add column rating text,
add column box_office BIGINT;

select *
from favorite_studio_ghibli_films
where release_date > 2000;

update favorite_studio_ghibli_films
set runtime =  125
where name = 'Spirited Away';

insert into favorite_studio_ghibli_films(name, release_date, runtime, category, rating, box_office)
values ('Spirited Away', 2001, 125, 'Animation', 'PG', 357287850);

select * from favorite_studio_ghibli_films;

update favorite_studio_ghibli_films 
set runtime = 124, category = 'Animation', rating = 'PG-13', box_office = 134156853
where name = 'The Boy and the Heron';

select * from favorite_studio_ghibli_films;

update favorite_studio_ghibli_films 
set runtime = 101, category = 'Animation', rating = 'G', box_office = 204920882
where name = 'Ponyo';

update favorite_studio_ghibli_films 
set runtime = 86, category = 'Animation', rating = 'G', box_office = 20691725
where name = 'My Neighbor Totoro';

update favorite_studio_ghibli_films 
set runtime = 134, category = 'Animation', rating = 'PG-13', box_office = 169971552
where name = 'Princess Mononoke';

update favorite_studio_ghibli_films 
set runtime = 126, category = 'Animation', rating = 'PG-13', box_office = 136864780
where name = 'The Wind Rises';

select *
from favorite_studio_ghibli_films;

-- adding constriant

alter table favorite_studio_ghibli_films 
add constraint unique_name unique (name);

-- testing constrint 
insert into favorite_studio_ghibli_films(name)
values ('Spirited Away');

update favorite_studio_ghibli_films 
set name = 'Spirited Away' 
where name = 'My Neighbor Totoro';




