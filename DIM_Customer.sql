-- Cleansed Customer table and Joined Geography table
SELECT 
  c.[CustomerKey] AS Customerkey,
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title] 
  c.[FirstName] AS Firstname,  
  --,[MiddleName]
  c.[LastName] AS Lastname,
  c.[FirstName]+' '+[LastName] AS FullName,
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  CASE c.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,  
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  c.[DateFirstPurchase] AS DateFirstPurchace,
  --,[CommuteDistance]
  g.city AS [Cusstomer City]
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c
  LEFT JOIN
[dbo].[DimGeography] AS g ON g.GeographyKey = c.GeographyKey
ORDER BY CustomerKey ASC

