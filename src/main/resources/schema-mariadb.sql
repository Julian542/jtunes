drop table if exists song;
drop table if exists discografica;

create table song(
    id int primary key auto_increment,
    nombre varchar(200) not null,
    descripcion varchar(3000),
    imagen_url varchar(1000)
);

insert into song (id,nombre,descripcion,imagen_url) values
(1,'Do I Wanna Know?','By Arctic Monkeys, from album AM.','https://i.pinimg.com/originals/86/c6/ca/86c6ca5d1908e8179de421287bef2a2f.jpg'),
(2,'Ocean Eyes','y Billie Eilish, from album When We All Fall Asleep, Where Do We Go?','https://studiosol-a.akamaihd.net/letras/500x500/fotos/6/1/c/a/61ca1dcbc2cdda2af430927f4fe4b98c.jpg'),
(3,'Shape Of You','By Ed Sheeran, of album Divide.','https://66.media.tumblr.com/tumblr_m6t1ooDQGl1r72zz4o1_1341688892_cover.png'),
(4,'Happier ft.Bastille','Single by Marshmello.','https://studiosol-a.akamaihd.net/letras/500x500/fotos/a/9/9/9/a9990522b116c3ea361e420c935fc64d.jpg'),
(5,'Changes','By Justin Bieber, from his latest album Changes.','https://jenesaispop.com/wp-content/uploads/2020/01/bieber-changes-1280x720.jpg'),
(6,'Pumped Up Kicks','By Foster The People, from album Torches.','https://img.gigs.guide/unsafe/500x0/smart/filters:quality()/https://i.scdn.co/image/82babf927d68d75373df483836b21aa4bf9446d0'),
(7,'Sweater Weather','By The Neighbourhood, from album I Love You.','https://lastfm.freetls.fastly.net/i/u/500x500/63bd5abec2474e8f9ecff9dd86385e8f.jpg'),
(8,"Let's Go ft.Ne-Yo",'By Calvin Harris, from album 18 Months.','https://unika.fm/wp-content/uploads/2017/02/rs_634x951-170224113958-Calvin-Harris.jpg');

create table discografica(
    id int primary key auto_increment,
    nombre varchar(200) not null,
    logo varchar(1000)
);

insert into discografica (id,nombre,logo) values 
(1,'Domino Recording Company','https://pbs.twimg.com/profile_images/877604797947555841/_kqG3c6p.jpg'),
(2,'Interscope Records','https://pm1.narvii.com/6707/becd10706a7c30a41f7955b5ca208706921e4da3_00.jpg'),
(3,'Atlantic Records','https://i.pinimg.com/originals/aa/dd/7e/aadd7e9868da34944b4a26125b5c9900.png'),
(4,'Joytime Collective','https://img.discogs.com/woyK5MkoKC8k-77uLWg2cdrozzk=/fit-in/300x300/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/L-1059962-1472801631-2244.jpeg.jpg'),
(5,'Def Jam Recordings','https://static.wixstatic.com/media/f60b5e_fd8b621ba3cd40628293c1f9abf9accb.jpg/v1/fill/w_338,h_209,al_c,q_80,usm_0.66_1.00_0.01/f60b5e_fd8b621ba3cd40628293c1f9abf9accb.webp'),
(6,'Columbia Records','https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Columbia_Records_Colored_Logo.svg/240px-Columbia_Records_Colored_Logo.svg.png'),
(7,'Sony Music','https://lh3.googleusercontent.com/proxy/XG7aqBv1G-Ivw5bxbPsmLnNGtJXNHAm7vyS8aZxLTAjTIgOoDszBNDIzni2dzYtvi9MLS6IDIdJX3_j28jukbtM0s4xxbj6vWQCPyM285icz1O4GFPYTlH6ZhbfVF2AQZndj3GjVDu7tolH0OGFwcKk');

alter table song add column discografica_id int,
add foreign key(discografica_id) references discografica(id);

update song set discografica_id = 1 where id in (1);
update song set discografica_id = 2 where id in (2);
update song set discografica_id = 3 where id in (3);
update song set discografica_id = 4 where id in (4);
update song set discografica_id = 5 where id in (5);
update song set discografica_id = 6 where id in (6,7);
update song set discografica_id = 7 where id in (8);

alter table song modify discografica_id int not null;