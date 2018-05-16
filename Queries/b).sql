#List all current supplier orders including the name of the supplier and the products and quantities on order

SELECT soc.supplierOrdersSupplierOrderID, c.productName ,soc.unitCost, s.supplierName, so.supplierOrderDate
FROM SupplierOrderContents soc
INNER JOIN `ItemCatalogue` c ON (soc.itemCatalogueCatalogueItemID = c.catalogueItemID)
INNER JOIN `Suppliers` s ON (soc.suppliersSupplierID = s.supplierID)
INNER JOIN `SupplierOrders` so ON (soc.supplierOrdersSupplierOrderID = so.supplierOrderID);