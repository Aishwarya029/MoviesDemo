create table category(
id varchar(20) primary key,
name varchar(50),
pic_link varchar(100),
title varchar(60),
background varchar(100)
);

create table movie(
id varchar(200) primary key,
category_id varchar(20) references category(id),
name varchar(50),
pic_link varchar(100),
movie_name  varchar(60)
);

 create table result(
 movie_id varchar(20) references movie(id),
 wiki_link varchar(100),
 you_link varchar(100),
 tele_link varchar(100),
 primary key(movie_id),
 heading varchar(60)
 );


insert into category values("1","Batman","batmanhome.jpg","GOTHAM","batmansymbol.jpg");
insert into category values("2","HarryPotter","howarts-houses.jpg","HOGWARDS","hogbag.jpg");

insert into movie values("1","1","BM1","batman1989.jpg","Batman (1989)");
insert into movie values("2","1","BM2","BatmanReturns1993.jpg","Batman Returns (1993)");
insert into movie values("3","1","BM3","BatmanForever1996.jpg","Batman Forever (1996)");
insert into movie values("4","1","BM4","Batman&Robin1998.jpg","Batman & Robin (1998)");
insert into movie values("5","1","BM5","BatmanBegins2006.jpg","Batman Begins (2006)");
insert into movie values("6","1","BM6","TheDarkKnight2009.jpg","The Dark Knight (2009)");
insert into movie values("7","1","BM7","TheDarkKnightRises2013.jpg","The Dark Knight Rises (2013)");
insert into movie values("8","1","BM8","BatmanvSuperman.jpg","Batman v Superman(2016)");
insert into movie values("9","1","BM9","thebatman.jpg","The Batman (2021)");
insert into movie values("10","2","HP1","HarryPotterandthePhilosopher'sStone.jpg","Harry Potter and the Philosopher's Stone");
insert into movie values("11","2","HP2","HarryPotterandtheChamberofSecrets.jpg","Harry Potter and the Chamber of Secrets");
insert into movie values("12","2","HP3","HarryPotterandthePrisonerofAzkaban.jpg","Harry Potter and the Prisoner of Azkaban");
insert into movie values("13","2","HP4","HarryPotterandtheGobletofFire.jpg","Harry Potter and the Goblet of Fire");
insert into movie values("14","2","HP5","HarryPotterandtheOrderofthePhoenix.jpg","Harry Potter and the Order of the Phoenix");
insert into movie values("15","2","HP6","HarryPotterandtheHalf-BloodPrince.jpg","Harry Potter and the Half-Blood Prince");
insert into movie values("16","2","HP7","HarryPotterandtheDeathlyHallowsPart1.jpg","Harry Potter and the Deathly Hallows – Part 1");
insert into movie values("17","2","HP8","HarryPotterandtheDeathlyHallowsPart2.jpg","Harry Potter and the Deathly Hallows – Part 2");


insert into result values("1","https://en.wikipedia.org/wiki/Batman_(1989_film)","https://www.youtube.com/watch?v=l_qlrjafOK0&feature=youtu.be","https://t.me/Movies_Batman/750","Batman (1989)");
insert into result values("2","https://en.wikipedia.org/wiki/Batman_Returns","https://www.youtube.com/watch?v=Too3qgNaYBE","https://t.me/Movies_Batman/763","Batman Returns (1992)");
insert into result values("3","https://en.wikipedia.org/wiki/Batman_Forever","https://www.youtube.com/watch?v=ROLvjRB4E_Q","https://t.me/Movies_Batman/776","Batman Forever (1995)");
insert into result values("4","https://en.wikipedia.org/wiki/Batman_%26_Robin_(film)","https://www.youtube.com/watch?v=4RBXypX4qWI","https://t.me/Movies_Batman/790","Batman & Robin (1997)");
insert into result values("5","https://en.wikipedia.org/wiki/Batman_Begins","https://www.youtube.com/watch?v=neY2xVmOfUM","https://t.me/Movies_Batman/804","Batman Begins (2005)");
insert into result values("6","https://en.wikipedia.org/wiki/The_Dark_Knight_(film)","https://www.youtube.com/watch?v=EXeTwQWrcwY","https://t.me/Movies_Batman/817","The Dark Knight (2008)");
insert into result values("7","https://en.wikipedia.org/wiki/The_Dark_Knight_Rises","https://www.youtube.com/watch?v=GokKUqLcvD8","https://t.me/Movies_Batman/829","The Dark Knight Rises (2012)");
insert into result values("8","https://en.wikipedia.org/wiki/Batman_v_Superman:_Dawn_of_Justice","https://www.youtube.com/watch?v=bha24P9uw-E","https://t.me/Movies_Batman/843","Batman v Superman(2016)");
insert into result values("9","https://en.wikipedia.org/wiki/The_Batman_(film)","https://www.youtube.com/watch?v=-FZ-pPFAjYY","https://t.me/Movies_Batman/852","The Batman (2021)");
insert into result values("10","https://en.wikipedia.org/wiki/Harry_Potter_and_the_Philosopher%27s_Stone_(film)","https://www.youtube.com/watch?v=VyHV0BRtdxo","https://t.me/MoviesScheme/94","Harry Potter and the Philosopher's Stone");
insert into result values("11","https://en.wikipedia.org/wiki/Harry_Potter_and_the_Chamber_of_Secrets_(film)","https://www.youtube.com/watch?v=1bq0qff4iF8","https://t.me/MoviesScheme/97","Harry Potter and the Chamber of Secrets");
insert into result values("12","https://en.wikipedia.org/wiki/Harry_Potter_and_the_Prisoner_of_Azkaban_(film)","https://www.youtube.com/watch?v=lAxgztbYDbs","https://t.me/MoviesScheme/100","Harry Potter and the Prisoner of Azkaban");
insert into result values("13","https://en.wikipedia.org/wiki/Harry_Potter_and_the_Goblet_of_Fire_(film)","https://www.youtube.com/watch?v=3EGojp4Hh6I","https://t.me/MoviesScheme/103","Harry Potter and the Goblet of Fire");
insert into result values("14","https://en.wikipedia.org/wiki/Harry_Potter_and_the_Order_of_the_Phoenix_(film)","https://www.youtube.com/watch?v=y6ZW7KXaXYk","https://t.me/MoviesScheme/106","Harry Potter and the Order of the Phoenix");
insert into result values("15","https://en.wikipedia.org/wiki/Harry_Potter_and_the_Half-Blood_Prince_(film)","https://www.youtube.com/watch?v=sg81Lts5kYY","https://t.me/MoviesScheme/109","Harry Potter and the Half-Blood Prince");
insert into result values("16","https://en.wikipedia.org/wiki/Harry_Potter_and_the_Deathly_Hallows_%E2%80%93_Part_1","https://www.youtube.com/watch?v=-L-z8VNbrcU","https://t.me/MoviesScheme/112","Harry Potter and the Deathly Hallows – Part 1");
insert into result values("17","https://en.wikipedia.org/wiki/Harry_Potter_and_the_Deathly_Hallows_%E2%80%93_Part_2","https://www.youtube.com/watch?v=ll1H-9Qm1UM","https://t.me/MoviesScheme/114","Harry Potter and the Deathly Hallows – Part 2");