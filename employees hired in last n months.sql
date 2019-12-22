--SQL query to find employees hired in last n months

select *, DATEDIFF(MONTH, HireDate, GETDATE()) as DIFF
from Employees
where DATEDIFF(MONTH, HireDate, GETDATE()) Between 1 and 3
order by HireDate


--All Employees hired in Last 30 days
select *, DATEDIFF(DAY, HireDate, GETDATE()) as DIFF
from Employees
where DATEDIFF(DAY, HireDate, GETDATE()) Between 1 and 30
order by HireDate

--All Employees hired in last 1 Years
select *, DATEDIFF(YEAR, HireDate, GETDATE()) as DIFF
from Employees
where DATEDIFF(YEAR, HireDate, GETDATE()) Between 1 and 1
order by HireDate
