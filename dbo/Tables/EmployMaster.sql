CREATE TABLE [dbo].[EmployMaster] (
    [EmployID]  INT          NOT NULL,
    [FirstName] VARCHAR (50) NOT NULL,
    [LastName]  VARCHAR (50) NOT NULL,
    [City]      VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([EmployID] ASC)
);

