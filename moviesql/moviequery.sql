CREATE USER 'movietest'@'localhost' IDENTIFIED WITH mysql_native_password BY '1qaz!QAZ';

create table category(
id varchar(20) primary key,
name varchar(50),
pic_link varchar(100)
);

create table movie(
id varchar(200) primary key,
category_id varchar(20) references category(id),
name varchar(50),
pic_link varchar(100),
link varchar(500),
title varchar(60),
background varchar(100),
movie_name  varchar(60)
);

create table result(
 movie_id varchar(20) references movie(id),
 wiki_link varchar(100),
 imdb_link varchar(100),
 rottenT_link varchar(100),
 primary key(movie_id),
 heading varchar(60)
);



insert into category values("1","Batman","batmanhome.jpg");
insert into category values("2","HarryPotter","howarts-houses.jpg");


insert into movie values("1","1","BM1","batman1989.jpg","https://en.wikipedia.org/wiki/Batman_(1989_film)","GOTHAM","batmansymbol.jpg","Batman (1989)");
insert into movie values("2","1","BM2","BatmanReturns(1992).jpg","://en.wikipedhttpsia.org/wiki/Batman_Returns","GOTHAM","batmansymbol.jpg","Batman Returns (1992)");
insert into movie values("3","1","BM3","BatmanForever(1995).jpg","https://en.wikipedia.org/wiki/Batman_Forever","GOTHAM","batmansymbol.jpg","Batman Forever (1995)");
insert into movie values("4","1","BM4","Batman&Robin(1997).jpg","https://en.wikipedia.org/wiki/Batman_%26_Robin_(film)","GOTHAM","batmansymbol.jpg","Batman & Robin (1997)");
insert into movie values("5","1","BM5","BatmanBegins(2005).jpg","https://en.wikipedia.org/wiki/Batman_Begins","GOTHAM","batmansymbol.jpg","Batman Begins (2005)");
insert into movie values("6","1","BM6","TheDarkKnight(2008).jpg","https://en.wikipedia.org/wiki/The_Dark_Knight_(film)","GOTHAM","batmansymbol.jpg","The Dark Knight (2008)");
insert into movie values("7","1","BM7","TheDarkKnightRises(2012).jpg","https://en.wikipedia.org/wiki/The_Dark_Knight_Rises","GOTHAM","batmansymbol.jpg","The Dark Knight Rises (2012)");
insert into movie values("8","1","BM8","BatmanvSuperman.jpg","https://en.wikipedia.org/wiki/Batman_v_Superman:_Dawn_of_Justice","GOTHAM","batmansymbol.jpg","Batman v Superman(2016)");
insert into movie values("9","1","BM9","thebatman.jpg","https://en.wikipedia.org/wiki/The_Batman_(film)","GOTHAM","batmansymbol.jpg","The Batman (2021)");
insert into movie values("10","2","HP1","HarryPotterandthePhilosopher'sStone.jpg","https://en.wikipedia.org/wiki/Harry_Potter_and_the_Philosopher%27s_Stone_(film)","HOGWARDS","hogbag.jpg","Harry Potter and the Philosopher's Stone");
insert into movie values("11","2","HP2","HarryPotterandtheChamberofSecrets.jpg","https://en.wikipedia.org/wiki/Harry_Potter_and_the_Chamber_of_Secrets_(film)","HOGWARDS","hogbag.jpg","Harry Potter and the Chamber of Secrets");
insert into movie values("12","2","HP3","HarryPotterandthePrisonerofAzkaban.jpg","https://en.wikipedia.org/wiki/Harry_Potter_and_the_Prisoner_of_Azkaban_(film)","HOGWARDS","hogbag.jpg","Harry Potter and the Prisoner of Azkaban");
insert into movie values("13","2","HP4","HarryPotterandtheGobletofFire.jpg","https://en.wikipedia.org/wiki/Harry_Potter_and_the_Goblet_of_Fire_(film)","HOGWARDS","hogbag.jpg","Harry Potter and the Goblet of Fire");
insert into movie values("14","2","HP5","HarryPotterandtheOrderofthePhoenix.jpg","https://en.wikipedia.org/wiki/Harry_Potter_and_the_Order_of_the_Phoenix_(film)","HOGWARDS","hogbag.jpg","Harry Potter and the Order of the Phoenix");
insert into movie values("15","2","HP6","HarryPotterandtheHalf-BloodPrince.jpg","https://en.wikipedia.org/wiki/Harry_Potter_and_the_Half-Blood_Prince_(film)","HOGWARDS","hogbag.jpg","Harry Potter and the Half-Blood Prince");
insert into movie values("16","2","HP7","HarryPotterandtheDeathlyHallows–Part1.jpg","https://en.wikipedia.org/wiki/Harry_Potter_and_the_Deathly_Hallows_%E2%80%93_Part_1","HOGWARDS","hogbag.jpg","Harry Potter and the Deathly Hallows – Part 1");
insert into movie values("17","2","HP8","HarryPotterandtheDeathlyHallows–Part2.jpg","https://en.wikipedia.org/wiki/Harry_Potter_and_the_Deathly_Hallows_%E2%80%93_Part_2","HOGWARDS","hogbag.jpg","Harry Potter and the Deathly Hallows – Part 2");


insert into result values("1","https://en.wikipedia.org/wiki/Batman_(1989_film)","https://www.imdb.com/title/tt0096895/","https://www.rottentomatoes.com/m/1001781_batman","Batman (1989)");
insert into result values("2","https://en.wikipedia.org/wiki/Batman_Returns","https://www.imdb.com/title/tt0103776/","https://www.rottentomatoes.com/m/batman_returns","Batman Returns (1992)");
insert into result values("3","https://en.wikipedia.org/wiki/Batman_Forever","https://www.imdb.com/title/tt0112462/","https://www.rottentomatoes.com/m/batman_forever","Batman Forever (1995)");
insert into result values("4","https://en.wikipedia.org/wiki/Batman_%26_Robin_(film)","https://www.imdb.com/title/tt0118688/","https://www.rottentomatoes.com/m/batman_vs_robin","Batman & Robin (1997)");
insert into result values("5","https://en.wikipedia.org/wiki/Batman_Begins","https://www.imdb.com/title/tt0372784/","https://www.rottentomatoes.com/m/batman_begins","Batman Begins (2005)");
insert into result values("6","https://en.wikipedia.org/wiki/The_Dark_Knight_(film)","https://www.imdb.com/title/tt0468569/","https://www.rottentomatoes.com/m/the_dark_knight","The Dark Knight (2008)");
insert into result values("7","https://en.wikipedia.org/wiki/The_Dark_Knight_Rises","https://www.imdb.com/title/tt1345836/","https://www.rottentomatoes.com/m/the_dark_knight_rises","The Dark Knight Rises (2012)");
insert into result values("8","https://en.wikipedia.org/wiki/Batman_v_Superman:_Dawn_of_Justice","https://www.imdb.com/title/tt2975590/","https://www.rottentomatoes.com/m/batman_v_superman_dawn_of_justice","Batman v Superman(2016)");
insert into result values("9","https://en.wikipedia.org/wiki/The_Batman_(film)","https://www.imdb.com/title/tt1877830/","https://www.rottentomatoes.com/m/the_batman","The Batman (2021)");
insert into result values("10","https://en.wikipedia.org/wiki/Harry_Potter_and_the_Philosopher%27s_Stone_(film)","https://www.imdb.com/title/tt0241527/","https://www.rottentomatoes.com/m/harry_potter_and_the_sorcerers_stone","Harry Potter and the Philosopher's Stone");
insert into result values("11","https://en.wikipedia.org/wiki/Harry_Potter_and_the_Chamber_of_Secrets_(film)","https://www.imdb.com/title/tt0295297/","https://www.rottentomatoes.com/m/harry_potter_and_the_chamber_of_secrets","Harry Potter and the Chamber of Secrets");
insert into result values("12","https://en.wikipedia.org/wiki/Harry_Potter_and_the_Prisoner_of_Azkaban_(film)","https://www.imdb.com/title/tt0304141/","https://www.rottentomatoes.com/m/harry_potter_and_the_prisoner_of_azkaban","Harry Potter and the Prisoner of Azkaban");
insert into result values("13","https://en.wikipedia.org/wiki/Harry_Potter_and_the_Goblet_of_Fire_(film)","https://www.imdb.com/title/tt0330373/","https://www.rottentomatoes.com/m/harry_potter_and_the_goblet_of_fire","Harry Potter and the Goblet of Fire");
insert into result values("14","https://en.wikipedia.org/wiki/Harry_Potter_and_the_Order_of_the_Phoenix_(film)","https://www.imdb.com/title/tt0373889/","https://www.rottentomatoes.com/m/harry_potter_and_the_order_of_the_phoenix","Harry Potter and the Order of the Phoenix");
insert into result values("15","https://en.wikipedia.org/wiki/Harry_Potter_and_the_Half-Blood_Prince_(film)","https://www.imdb.com/title/tt0417741/","https://www.rottentomatoes.com/m/harry_potter_and_the_half_blood_prince","Harry Potter and the Half-Blood Prince");
insert into result values("16","https://en.wikipedia.org/wiki/Harry_Potter_and_the_Deathly_Hallows_%E2%80%93_Part_1","https://www.imdb.com/title/tt0926084/","https://www.rottentomatoes.com/m/harry_potter_and_the_deathly_hallows_part_1","Harry Potter and the Deathly Hallows – Part 1");
insert into result values("17","https://en.wikipedia.org/wiki/Harry_Potter_and_the_Deathly_Hallows_%E2%80%93_Part_2","https://www.imdb.com/title/tt1201607/","https://www.rottentomatoes.com/m/harry_potter_and_the_deathly_hallows_part_2_2011","Harry Potter and the Deathly Hallows – Part 2");