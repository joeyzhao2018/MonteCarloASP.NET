BULK INSERT MSFT FROM 'C:\Users\Joey\Documents\Visual Studio 2013\Projects\MonteCarlo2\MonteCarlo2\MSFT.csv'
WITH 
(
FIRSTROW=1,
FIELDTERMINATOR=',',
ROWTERMINATOR='0x0a'
);