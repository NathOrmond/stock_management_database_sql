# show total turnover (amount from sales) for each branch since the beginning of the current year

Select sites.location, SUM(payments.orderValue) AS turnover

FROM `Sites` sites
INNER JOIN `Employees` employees ON (sites.siteID = employees.sitesSiteID) 
INNER JOIN `Orders` orders ON (employees.employeeID= orders.employeesEmployeeID) 
INNER JOIN `Payments` payments ON (orders.orderID = payments.ordersOrderID)

WHERE YEAR(payments.transactionDate) = YEAR(CURDATE())
GROUP BY sites.location;