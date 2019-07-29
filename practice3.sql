#取得平均薪水最高的公司
#输出公司名称和平均薪水：companyName avgSalary

select c.companyName, avg(e.salary) as avgSalary
from employee e
inner join company c on e.companyId = c.id
group by c.id order by avgSalary desc limit 1;

tengxun  8000.0000
