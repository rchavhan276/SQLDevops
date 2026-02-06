/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
PRINT 'Seeding EmployMaster data';

MERGE dbo.EmployMaster AS T
USING (VALUES
    (101, N'Martin', N'warner', NULL, 513661666, NULL, NULL),
    (102, N'Rohit', N'sharma', NULL, NULL, NULL, NULL),
    (103, N'cris', N'gayle', NULL, NULL, NULL, NULL)
) AS S (EmployID, FirstName, LastName, City, mobile, age, Mobile_Number)

ON T.EmployID = S.EmployID

WHEN MATCHED THEN
    UPDATE SET
        FirstName     = S.FirstName,
        LastName      = S.LastName,
        City          = S.City,
        mobile        = S.mobile,
        age           = S.age,
        Mobile_Number = S.Mobile_Number

WHEN NOT MATCHED THEN
    INSERT (EmployID, FirstName, LastName, City, mobile, age, Mobile_Number)
    VALUES (S.EmployID, S.FirstName, S.LastName, S.City, S.mobile, S.age, S.Mobile_Number);


GO
