--The List of Banks in Canada

--The Biggest five banks in Canada
--This is to remove null columns in the table
SELECT *
FROM [Big Five]
DELETE FROM [Big Five]
WHERE [Bank name] IS NULL 


--Credit banks in Canada
--This is to change the column name 'Assets*\--

SELECT *
FROM [Credit_Union]

EXECUTE sp_rename N'[Credit_Union].[[Assets($)]]]', N'Assets($)', 'COLUMN'


--THe Defunct Banks in Canada
SELECT *
FROM [Defunct_Banks]


--THe Schedule I Bank in Canada
SELECT *
FROM [Sch I Bank]

--Replace the NULL values with N/A
UPDATE [Sch I Bank]
SET
    [Ownership] = ISNULL([Ownership], 'N/A'),
    [Notes] = ISNULL([Notes], 'N/A')


--THe Schedule II Bank in Canada
SELECT *
FROM [Sch II Bank]

--Replace the NULL values with N/A
UPDATE [Sch II Bank]
SET
    [Notes] = ISNULL([Notes], 'N/A')


--THe Schedule III Bank in Canada
SELECT *
FROM [Sch III Bank]
--Delete empty column in the table with NULLs
ALTER TABLE [Sch III Bank]
DROP COLUMN [Notes]
