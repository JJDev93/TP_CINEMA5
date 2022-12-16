create database cinema;
use cinema;

============================================
영화 정보 테이블
============================================
create table tbl_movieInfo (
	movieCode int(10) not null auto_increment primary key COMMENT '영화코드',
	title varchar(20) not null COMMENT '영화제목',
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
	screening int(1) not null default 0 COMMENT '상영여부'
);


============================================
멤버 정보 테이블
============================================
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


============================================
영화관 정보 테이블
============================================
drop table tbl_theater;
create table tbl_theater(
	theaterCode int(10) not null auto_increment PRIMARY KEY COMMENT '영화관 코드',
	theaterName varchar(200) not null COMMENT '영화관이름'
);
insert into tbl_theater values(null, '5조 영화관 종로점');
select * from tbl_theater;


============================================
상영관 정보 테이블
============================================
drop table tbl_audi;
create table tbl_audi(
	audiCode int(10) not null auto_increment PRIMARY KEY COMMENT '상영관코드',
    audiName varchar(200) not null COMMENT '상영관이름',
	theaterCode int(10) not null COMMENT '영화관코드',
	FOREIGN KEY(theaterCode)
	REFERENCES tbl_theater(theaterCode) ON UPDATE CASCADE ON DELETE CASCADE
);
insert into tbl_audi values(null, '1관', 1);
select * from tbl_audi;


============================================
좌석 정보 테이블
============================================
drop table tbl_seat;
create table tbl_seat(
	seatCode int(10) not null auto_increment PRIMARY KEY COMMENT '좌석코드',
    seatName varchar(200) not null COMMENT '좌석명',
    seatUse BOOLEAN not null default 0 COMMENT '예약유무',
    audiCode int(10) not null COMMENT '상영관코드',
    theaterCode int(10) not null COMMENT '영화관 코드',
	FOREIGN KEY(theaterCode)
	REFERENCES tbl_theater(theaterCode) ON UPDATE CASCADE ON DELETE CASCADE,    
	FOREIGN KEY(audiCode)
	REFERENCES tbl_audi(audiCode) ON UPDATE CASCADE ON DELETE CASCADE
);
select * from tbl_seat;
insert into tbl_seat values(null, 'A01', 0, 1, 1);
insert into tbl_seat values(null, 'A02', 0, 1, 1);
insert into tbl_seat values(null, 'A03', 0, 1, 1);
insert into tbl_seat values(null, 'A04', 0, 1, 1);
insert into tbl_seat values(null, 'A05', 0, 1, 1);
insert into tbl_seat values(null, 'A06', 0, 1, 1);
insert into tbl_seat values(null, 'A07', 0, 1, 1);
insert into tbl_seat values(null, 'A08', 0, 1, 1);
insert into tbl_seat values(null, 'A09', 0, 1, 1);


============================================
예매 테이블
============================================
CREATE TABLE schedule (
   scheduleCode INT(10) NOT NULL auto_increment primary key COMMENT'상영코드',
   movietitle varchar(100) not null,
   onDate   DATE NOT NULL COMMENT'상영날짜',
   onTime   TIME NOT NULL COMMENT'상영시간',
   theaterCode INT(10) NOT NULL COMMENT'영화관코드',
   audiCode INT(10) NOT NULL COMMENT'상영관코드',
   movieCode INT(10) NOT NULL COMMENT'영화코드',
   price INT(5) not NULL COMMENT'가격',
   FOREIGN KEY(theaterCode)
	REFERENCES tbl_theater(theaterCode) ON UPDATE CASCADE ON DELETE CASCADE,    
	FOREIGN KEY(audiCode)
	REFERENCES tbl_audi(audiCode) ON UPDATE CASCADE ON DELETE CASCADE, 
	FOREIGN KEY(movieCode)
	REFERENCES tbl_movieInfo(movieCode) ON UPDATE CASCADE ON DELETE CASCADE
);
select * from schedule;
