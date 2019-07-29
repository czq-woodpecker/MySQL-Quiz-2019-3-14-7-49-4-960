# 取得每个company中最高薪水的人员名字
# 输出结果包含公司名称和人员名称：companyName name

select e1.name, c.companyName
from employee e1
inner join company c on e1.companyId = c.id,
(select name, max(salary) from employee group by companyId) e2
where e1.name = e2.name;

xiaoming  baidu
xiaohong  alibaba
xiaozhi   tengxun