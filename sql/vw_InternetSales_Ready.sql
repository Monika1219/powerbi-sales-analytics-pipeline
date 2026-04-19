CREATE VIEW dbo.vw_InternetSales_Ready AS
SELECT
    fs.SalesOrderNumber,
    fs.OrderDateKey,
    d.FullDateAlternateKey AS OrderDate,
    fs.CustomerKey,
    c.FirstName + ' ' + c.LastName AS CustomerName,
    c.EmailAddress,
    fs.ProductKey,
    p.EnglishProductName AS ProductName,
    pc.EnglishProductCategoryName AS ProductCategory,
    fs.SalesTerritoryKey,
    st.SalesTerritoryRegion AS Region,
    fs.OrderQuantity,
    fs.UnitPrice,
    fs.ExtendedAmount,
    fs.TotalProductCost,
    fs.SalesAmount
FROM dbo.FactInternetSales fs
LEFT JOIN dbo.DimDate d 
    ON fs.OrderDateKey = d.DateKey
LEFT JOIN dbo.DimCustomer c 
    ON fs.CustomerKey = c.CustomerKey
LEFT JOIN dbo.DimProduct p 
    ON fs.ProductKey = p.ProductKey
LEFT JOIN dbo.DimProductSubcategory ps 
    ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
LEFT JOIN dbo.DimProductCategory pc 
    ON ps.ProductCategoryKey = pc.ProductCategoryKey
LEFT JOIN dbo.DimSalesTerritory st 
    ON fs.SalesTerritoryKey = st.SalesTerritoryKey;
