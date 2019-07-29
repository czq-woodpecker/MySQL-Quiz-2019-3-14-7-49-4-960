# 找出薪水在公司的平均薪水之上的人员名字
# 输出标准中包含Employee中所有字段和该employee所在公司名称以及该公司平均薪资：
# id | name | age | gender | companyId | salary | companyName | avgsal

select e.id, e.name, e.age, e.gender, e.companyId, e.salary, c.companyName, t.avgsal
from employee e inner join company c on e.companyId = c.id
join
(select e.companyId, avg(e.salary) as avgsal from employee e group by e.companyId) t
where e.salary > t.avgsal and e.companyId = t.companyId;

0 | xiaoming |   20 | male   | 0         |   6000 | baidu       | 5000.0000 |
1 | xiaohong |   19 | female | 1         |   7000 | alibaba     | 6500.0000 |

