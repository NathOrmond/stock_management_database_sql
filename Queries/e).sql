#calculate and show the average order value, maximum order value and minimum order value of all orders placed at the York branch, 
#set appropriate column heading names.

		
SELECT sites.location, ROUND(AVG(payments.orderValue) , 2) AS mean_average, MAX(payments.orderValue) AS maximum_order_value, MIN(payments.orderValue) AS minimum_order_value
FROM `Sites` sites
INNER JOIN `Employees` employees ON (sites.siteID = employees.sitesSiteID) 
INNER JOIN `Orders` orders ON (employees.employeeID= orders.employeesEmployeeID) 
INNER JOIN `Payments` payments ON (orders.orderID = payments.ordersOrderID)	

WHERE sites.location LIKE 'york'
GROUP BY sites.location;
