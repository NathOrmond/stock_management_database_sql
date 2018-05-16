# List all customer orders with a total value of over £1000 and which branch made the sale, the output should be ordered by sale value

Select payments.ordersOrderID, payments.orderValue, sites.location
FROM `Payments` payments 
INNER JOIN `Orders` orders ON (payments.ordersOrderID = orders.orderID) 
INNER JOIN `Employees` employees ON (orders.employeesEmployeeID = employees.employeeID) 
INNER JOIN `Sites` sites ON (employees.sitesSiteID = sites.siteID) 
WHERE payments.orderValue > 1000
ORDER BY payments.orderValue;
