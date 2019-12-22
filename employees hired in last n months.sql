--SQL query to find employees hired in last n months

select *, DATEDIFF(MONTH, HireDate, GETDATE()) as DIFF
from Employees
where DATEDIFF(MONTH, HireDate, GETDATE()) Between 1 and 3
order by HireDate
