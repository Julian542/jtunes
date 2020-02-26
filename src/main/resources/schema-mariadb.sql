drop table if exists song;

create table song(
    id int primary key auto_increment,
    nombre varchar(200) not null,
    descripcion varchar(3000),
    imagen_url varchar(1000)
);

insert into song (nombre,descripcion,imagen_url) values
('Do I Wanna Know?','By Arctic Monkeys, from album AM.','https://i.pinimg.com/originals/86/c6/ca/86c6ca5d1908e8179de421287bef2a2f.jpg'),
('Ocean Eyes','y Billie Eilish, from album When We All Fall Asleep, Where Do We Go?','https://studiosol-a.akamaihd.net/letras/500x500/fotos/6/1/c/a/61ca1dcbc2cdda2af430927f4fe4b98c.jpg'),
('Shape Of You','By Ed Sheeran, of album Divide.','https://66.media.tumblr.com/tumblr_m6t1ooDQGl1r72zz4o1_1341688892_cover.png'),
('Happier ft.Bastille','Single by Marshmello.','https://studiosol-a.akamaihd.net/letras/500x500/fotos/a/9/9/9/a9990522b116c3ea361e420c935fc64d.jpg'),
('Changes','By Justin Bieber, from his latest album Changes.','https://jenesaispop.com/wp-content/uploads/2020/01/bieber-changes-1280x720.jpg'),
('Pumped Up Kicks','By Foster The People, from album Torches.','https://img.gigs.guide/unsafe/500x0/smart/filters:quality()/https://i.scdn.co/image/82babf927d68d75373df483836b21aa4bf9446d0'),
('Sweater Weather','By The Neighbourhood, from album I Love You.','https://lastfm.freetls.fastly.net/i/u/500x500/63bd5abec2474e8f9ecff9dd86385e8f.jpg'),
("Let's Go ft.Ne-Yo",'By Calvin Harris, from album 18 Months.','https://unika.fm/wp-content/uploads/2017/02/rs_634x951-170224113958-Calvin-Harris.jpg');