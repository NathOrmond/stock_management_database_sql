# list all staff members at London whose name begins with B

SELECT s.location, e.firstName,e.secondName
FROM `Employees` e 
INNER JOIN `Sites` s ON (e.sitesSiteID = s.siteID)
WHERE s.location  like 'london'
AND `firstName` like 'B%'
ORDER BY `firstName`;