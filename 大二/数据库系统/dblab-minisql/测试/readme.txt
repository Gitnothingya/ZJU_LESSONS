accounts.txt, accounts1.txt, accounts2.txt 各有10000个数据
basic.txt 包含建库的基本操作，可以直接execfile
cselect.txt 包含查询的基本测试，需要手动输入
dreopen.txt 用于测试数据持久性，需要手动输入

测试流程
1.execfile "basic.txt"; //此时建立五个数据库并在db0中建立account
2.execfile "accounts.txt"; 
3.execfile "accounts1.txt";
4.execfile "accounts2.txt"; //分三次插入30000条数据
5.手动输入cselect.txt中的测试
6.手动输入dreopen.txt中的测试检验数据持久性




insert into account values(1250, "name9999", 86.27);