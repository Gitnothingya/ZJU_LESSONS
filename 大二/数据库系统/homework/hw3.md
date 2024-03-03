**3-8**

```sql
#a.找到所有无贷款顾客的ID，即存款人与借款人的差集
(select ID from depositor)
except
(select ID from borrower);

#b.与ID为12345的顾客同在一个街道和城市的顾客ID
select `F.ID
from	customer as A,customer as B
where	A.customer_street = B.customer_street
		and A.customer_city = B.customer_city
		and S.ID = '12345';

#c.拥有至少一个住在“Harrison”的有账户的顾客的支行
select 	distinct branch_name
from 	account,depositor,customer
where 	customer.ID=depositor.ID
		and depositor.account_number=account.account_number
		and customer.customer_city='Harrison';
```

**3-9**

```sql
#a.为公司工作的雇员ID，姓名，城市
select 	ID,person_name,city
from	employee,works
where	employee.ID=works.ID
		and works.company_name='First Bank Corporation';
		
#b.添加薪水要求
select 	ID,person_name,city
from	employee,works
where	employee.ID=works.ID
		and works.company_name='First Bank Corporation'
		and works.salary>10000;

#c.不在公司工作的雇员ID
select 	ID
from 	works
where 	company_name<>'First Bank Corporation';

#d.薪水大于某公司所有员工的员工ID
select 	ID
from 	works
where 	salary > 
		all(select 	salary
			from 	works
			where 	company_name='Small Bank Corporation');
			
#e.在某公司所在城市都有分公司的公司，公司城市之间作差集后无元素的公司名。
select  A.company_name
from 	company as A
where 	not exists (
    	(select city
		from company
		where company_name = 'Small Bank Corporation')
		except
		(select city
		from company as B
		where A.company_name = B.company_name));

#f.最多员工
select 	company_name
from 	works
group by company_name
having 	count(ID) >= 
		all(select ID
            from works
            group by company_name);

#g.比某公司平均薪水高的公司
select 	company_name
from 	works
group by company_name
having avg(salary) > 
		(select avg(salary)
         from works
         where company_name = 'First Bank Corporation');

```

**3-10**

```sql
#a.
update 	employee
set 	city = 'Newtown'
where	ID = '12345';

#b.顺序执行下列语句
update works as A
set A.salary=
	(case 
    	when A.salary*1.1>100000 then A.salary*1.03
    	else A.salary*1.1
     end)
where A.ID in(select B.ID
              from manages as B)
      and A.company_name = 'First Bank Corporation';

```

**3-11**

```sql
#a.
select ID,name
from student natural join takes natural join course
where course.dept_name = 'Comp.Sci.';

#b.
(select ID,name from student)
except 
(select ID,name from student natural join takes where year <2017);

#c.
select dept_name,max(salary)
from instructor
group by dept_name;

#d.
select min(maxsalary)
from (select dept_name,max(salary) as maxsalary
	  from instructor
	  group by dept_name);

```

**3-15**

```sql
#a.
select ID,name
from customer as A
where (select count(*) from branch where branch_city = 'Brooklyn')
		=
	  (select count(distinct branch_name) from 
       (customer natural join depositor natural join account natural join branch) as B
       where B.ID = A.ID and B.branch_city = 'Brooklyn');

#b.
select sum(amount) from loan;

#c.
select branch_name
from branch 
where assets> 
	some(select assets
         from branch
         where branch_city = 'Brooklyn');

```

