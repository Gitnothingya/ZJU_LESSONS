drop database smart;
create database smart;
use smart;
create table users(
	uid int,
    uname varchar(20) unique,
    password varchar(32),
    phone_number char(11) unique,
    primary key(uid)
);

create table places(
	pid int,
    pname varchar(20),
    uid int,
    description varchar(100),
    primary key(pid),
    foreign key(uid) references users(uid)
);
create table rooms(
	rid int,
    rname varchar(20),
    description varchar(100),
    pid int,
    primary key(rid),
    foreign key(pid) references places(pid)
);
create table scenes(
	sid int,
    sname varchar(20),
    description varchar(100),
    pid int,
    primary key(sid),
    foreign key(pid) references places(pid)
);

create table devices(
	did int,
    dname varchar(50),
    type varchar(50),
    state char(1),
    funct int,
    primary key(did),
    check(state in ('1','0'))
);
create table include(
	rid int,
    did int,
    primary key(rid,did),
    foreign key(rid) references rooms(rid),
    foreign key(did) references devices(did)
);

create table control(
	sid int,
    did int,
    funct int,
    primary key(sid,did),
    foreign key(sid) references scenes(sid),
    foreign key(did) references devices(did)
);









