create database cinema;
use cinema;

create table tbl_movieInfo (
	movieCode int(10) not null auto_increment primary key COMMENT '영화코드',
	title varchar(20) not null COMMENT '영화코드',
	poster varchar(100) not null COMMENT '포스터',
	stillcut varchar(1000) COMMENT '스틸컷',
	scenario varchar(1000) not null COMMENT '시나리오',
	genre varchar(10) not null COMMENT '장르',
	director varchar(10) not null COMMENT '영화감독',
	cast varchar(1000) not null COMMENT '캐스팅',
	openDate date not null COMMENT '상영일',
	spectators int(5) not null default 0 COMMENT '관람자수',
	filmRate int(2) not null default 0 COMMENT '관람가등급나이',
	runningTime int(5) not null default 0 COMMENT '러닝타임',
	grade float(5) not null default 0 COMMENT '평점',
	screening boolean not null default false COMMENT '상영여부'
);
insert into tbl_movieinfo(movieCode, title, poster, stillcut, scenario, genre, director, cast, openDate, filmRate, runningTime, screening) 
values(null, 'title', 'poster', 'stillcut', 'scenario', 'genre', 'director', 'cast', '2020.12.05', 15, 350, true);



create table member(
id varchar(10) not null primary key,
pass varchar(10) not null,
name varchar(24),
birth timestamp,
lev char(1) default 'A',
gender char(1) default '1',
email varchar(20),
phone varchar(30),
regdate timestamp default now()  
);
insert into member values('asas1234','1234','최촤','2019.10.21','A','1','dfs12@fsdf','010-2222-2222',now());
insert into member values('admin','123456','관리지','1989.01.25','B','S','fdsf@131','010-2222-5555',now());
