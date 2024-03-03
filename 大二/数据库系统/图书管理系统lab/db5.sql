use library;
select * from manager;

select * from book;

select * from borrow;

delete from borror;


drop table book;
drop table borrow;
drop table card;
create table borrow
(
cno char(6), #借书证号
cname varchar(10), #借书人名
bno char(6), #书籍编号
bname varchar(20), #书籍名
borrow_date varchar(12), #借书日期
return_date varchar(12), #还书日期
primary key(cno,bno),
foreign key(cno) references card(cno),
foreign key(bno) references book(bno)
);
create table card
(
cno char(6), #借书证编号
`name` varchar(10), #姓名
department varchar(20), #、院系
privilege char(1), #身份，老师（T）或学生（S）
borrowed int, #借书数量
primary key(cno),
check(privilege in('T','S'))
);
create table book(
bno char(6), #书籍编号
`name` varchar(20), #书籍名称
category varchar(20), #类型
author varchar(10), #作者
price numeric(6,2), #价格
stock int, #库存
pub varchar(10), #出版商
pubyear int, #出版年份
total int, #总量
primary key(bno)
);

