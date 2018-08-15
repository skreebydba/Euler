USE Euler;

CREATE TABLE DivisorSums
(BaseNumber INT
,DivisorSum INT);

SELECT d1.BaseNumber, d1.DivisorSum
FROM DivisorSums d1
INNER JOIN DivisorSums d2
ON d2.BaseNumber = d1.DivisorSum
AND d2.DivisorSum = d1.BaseNumber
AND d1.BaseNumber <> d1.DivisorSum;

SELECT SUM(d1.BaseNumber) 
FROM DivisorSums d1
INNER JOIN DivisorSums d2
ON d2.BaseNumber = d1.DivisorSum
AND d2.DivisorSum = d1.BaseNumber
AND d1.BaseNumber <> d1.DivisorSum;

DELETE FROM DivisorSums