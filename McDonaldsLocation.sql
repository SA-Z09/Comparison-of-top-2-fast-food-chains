USE DB_McD

SELECT * FROM MCD_fin
SELECT * FROM dbo.mcd_countries$ 

-- Aim is to eliminate the extra characters present in the column Number of currently operating outlets
SELECT country, 
CASE
WHEN CHARINDEX('(', Country) = 0 THEN Country 
WHEN CHARINDEX('(', Country) <> 0 THEN LEFT(Country, CHARINDEX('(', Country)-1)
END AS Country_Name, [Number of currently operating outlets],
REPLACE((
CASE
WHEN CHARINDEX('[', [Number of currently operating outlets]) = 0 THEN [Number of currently operating outlets]
WHEN CHARINDEX('[', [Number of currently operating outlets]) <> 0 THEN LEFT([Number of currently operating outlets], CHARINDEX('[', [Number of currently operating outlets])-1)
END) , ',', '') AS Storecount,
[People per outlet] INTO MCD_fin
FROM dbo.mcd_countries$ 

select [Number of currently operating outlets],
case
when CHARINDEX('[', [Number of currently operating outlets]) = 0 THEN [Number of currently operating outlets]
WHEN CHARINDEX('[', [Number of currently operating outlets]) <> 0 THEN LEFT([Number of currently operating outlets], CHARINDEX('[', [Number of currently operating outlets])-1)
END AS [Number of stores]
FROM dbo.mcd_countries$ 

--Final table consisting of the main useful columns 
CREATE TABLE MCD 
AS (SELECT Country_Name, [Number of currently operating outlets], [People per outlet]
FROM mcd_countries$) ;
