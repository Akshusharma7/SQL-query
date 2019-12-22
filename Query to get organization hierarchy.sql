Here is the problem definition:
1. Employees table contains the following columns 
    a) EmployeeId, 
    b) EmployeeName 
    c) ManagerId 
2. If an EmployeeId is passed, the query should list down the entire organization hierarchy i.e who is the manager of the EmployeeId passed and who is managers manager and so on till full hierarchy is listed.


For example, 
Scenario 1: If we pass David's EmployeeId to the query, then it should display the organization hierarchy starting from David.
Scenario 2: If we pass Lara's EmployeeId to the query, then it should display the organization hierarchy starting from Lara.


--QUERY  : 

Declare @ID int;
Set @ID = 7;

With EmployeeCTE AS
(
	Select EmployeeID, EmployeeName, ManagerID
	From Employees
	Where EmployeeID = @ID

	UNION ALL
	
	Select Employees.EmployeeID, Employees.EmployeeName, Employees.ManagerID
	From Employees
	Join EmployeeCTE
	ON Employees.EmployeeID =EmployeeCTE.ManagerID
)

select E1.EmployeeName, ISNULL(E2.EmployeeName, 'No Boss') as ManagerName
from EmployeeCTE E1
Left Join EmployeeCTE E2
ON E1.ManagerID = E2.EmployeeID
