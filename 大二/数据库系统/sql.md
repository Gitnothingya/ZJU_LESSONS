---
typora-copy-images-to: image
typora-root-url: image
---

# 理论







# SQL语言

### 数据类型

```sql
#数据类型
char(n)		#固定长度n的字符串
varchar		#可变最大长度为n的字符串
int			#有限集整型 ，范围由机器决定
smallint	#更小范围的整型
numeric(p,d)#固定格式小数，p为精确度，d为小数点后位数
real,double,precision#由机器决定的浮点数精度
float(n)	#最小精度为n的浮点数


-- 待补充
date #日期s
```

### 建表

```sql
/*
create table 表名(
	数据名		数据类型,
	数据名		数据类型 not null(可选为空), 
	…………
	primary key(数据名,……),
	foreign key(……) references 表名
	foreign key ……（可多个）
	)
	主键可无，但不可为空
 */
create table instructor(
		ID 		char(5),
		name	varchar(20) not null,
		dept_name varchar(20),
    	salary	numeric(8,2),
    	primary key (ID),
    	foreign key (dept_name) references department);
```

### 增删改查

```sql
#插入
insert into tablename value (<字段>,……,……,……);

#删除
delete *from tablename;
delete from tablename;#删除所有元组
delete from tablename where condition;#条件删除

#改
#ALTER TABLE <表名> CHANGE <旧字段名> <新字段名> <新数据类型>;修改字段名
ALTER TABLE tb_emp1 CHANGE col1 col3 CHAR(30);
#ALTER TABLE <表名> MODIFY <字段名> <数据类型>; 修改数据类型
ALTER TABLE tb_emp1 MODIFY name VARCHAR(30);
#ALTER TABLE <表名> DROP <字段名>;字段删除
ALTER TABLE tb_emp1 DROP col2;
/*
ALTER TABLE <表名> [修改选项]
修改选项的语法格式如下：
{ ADD (COLUMN)<列名> <类型> 							增加字段
| CHANGE (COLUMN) <旧列名> <新列名> <新列类型>			
| ALTER (COLUMN) <列名> { SET DEFAULT <默认值> | DROP DEFAULT }
| MODIFY (COLUMN) <列名> <类型>
| DROP (COLUMN) <列名>
| RENAME TO <新表名>
*/

#查询
/*
select A1,A2,...
from r1,r2,...
where P1 and P2 or P3;（可选条件）
*/
select distinct dept_name from instructor;
select all dept_name from instructor;
#distinct 去重，all不去重
select * from tablename ; #所有属性
select '437';#返回一列一行表，437
select '437' as FOO;#返回一个具有FOO字段的表
select ID,name,salary/12 as monthly_salary;
#可进行+-*/运算，并重命名。
select name from instructor where dept_name = 'Comp. Sci.' and salary > 70000;#多条件
#from 多个关系相当于对关系做笛卡尔积
#重命名符 as ，可选省略
select name from instructor where name like '%dar%';
#like, 字符串操作符，'%'匹配任意字符串，'_'匹配任一字符;可用\作为转义字符显示%.
select distinct name from instructor order by name [desc];
#默认升序，可选降序
#between运算符  where salary between 90000 and 100000;
#元组比较 where (instructor.ID , dept_name ) = (teaches. ID,'Biology');

```

### 集合运算

```sql
#交并差
#Find courses that ran in Fall 2017 or in Spring 2018
(select course_id from section where sem = 'Fall' and year = 2017)
union
(select course_id from section where sem = 'Spring' and year = 2018)

#Find courses that ran in Fall 2017 and in Spring 2018 
(select course_id from section where sem = 'Fall' and year = 2017)
intersect
(select course_id from section where sem = 'Spring' and year = 2018)

#Find courses that ran in Fall 2017 but not in Spring 2018
(select course_id from section where sem = 'Fall' and year = 2017)
except
(select course_id from section where sem = 'Spring' and year = 2018)

-- 集合操作默认去重，如果不需要应加all;union all, intersect all, except all
```

### 空值运算与集合函数

>```sql
>#null代表一个不知道或不存在的值
>5+null = null #所有涉及null的算数运算返回null
>select name from instructor where salary is null;#谓词 is(not) null 可作null判定
>```
>The predicate in a where clause can involve Boolean operations (and , or , not ); thus the definitions of the Boolean operations need to be extended to deal with the value unknown
>**and** : (true and unknown ) = unknown,
>		  (false and unknown ) = false,
>          (unknown and unknown )= unknown
>**or**: 	(unknown or true ) = true
>		  (unknown or false ) = unknown
>		  (unknown or unknown ) = unknown
>**Result of where clause predicate is treated as false if it evaluates to unknown**

```sql
#集合函数
avg: average value
min: minimum value
max: maximum value
sum: sum of values
count: number of values
-----------------------------------------------
select avg (salary)
from instructor
where dept _name = 'Comp.Sci';

select count (distinct ID)
from teaches
where semester = 'Spring' and year = 2018;

select count(*)
from couse;

#分组计算函数 group by
select dept_name , avg (salary ) as avg_salary
from instructor
group by dept_name
-- select后的属性也应该在group by后，否则会出错（现在不报错了，输出随意？）
select dept_name , ID , avg(salary)
from instructor
group by dept_name#错误示范

#having 语句：用在group by后，即在分组计算之后在通过一些条件进一步筛选；也包括函数计算的筛选
select dept_name , (avg salary ) as avg_salary
from instructor
group by dept_name
having avg (salary ) > 42000;

```

### 嵌套查询

>子查询：即每一条select-from-where 语句（处在另一条内部）
>
>(1)From clause: r i can be replaced by **any valid subquery**
>
>(2)Where clause: P can be replaced with an expression of the form:
>B<operation> (subquery)
>B is an attribute and <operation> to be defined later.
>(3)Select clause:
>Ai can be replaced be a subquery that generates **a single value**.

### in and not in

```sql
#in 可以用于选择在给定范围内存在的元组，筛掉不存在的元组；not in 反之
#(属性组)in (not in) (子查询或值表)

#Name all instructors whose name is neither “Mozart” nor Einstein”
select distinct name
from instructor 
where name not in ('mozart','Einstein');
#Find the total number of (distinct) students who have taken course sections taught by the instructor with ID 10101
select count(distinct ID)
from takes
where (course_id , sec_id , semester , year ) in
		   (select course_id , sec_id , semester , year
			from teaches
			where teaches ID ='10101');
```

### exists and not exists

```sql
#用于判断子查询是否为空
#exists r -> r <> Ø
#not exists r -> r = Ø

#Find all courses taught in both the Fall 2017 semester and in the Spring 2018 semester
select course_id from section as S
where semester = 'Fall' and year = 2017 and
	  exists (select * from section as T
	  		  where semester = 'Spring' and year = 2018
	  				and S course_id = T course_id);
#Find all students who have taken all courses offered in the Biology department.
select distinct S.ID,S.name
from student as S
where not exists ((select course_id
				  from course
				  where dept_name = 'Biology')
				  except
				 (select T.course_id
				  from takes as T
				  where S.ID = T.ID));
#Note that X - Y = Ø -> X 属于 Y
```

### some and all

>![image-20220323104316660](/image-20220323104316660.png)
>
>![image-20220323104347785](/image-20220323104347785.png)

























