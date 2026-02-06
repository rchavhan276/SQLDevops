CREATE TABLE [dbo].[EmployMaster] (
    [EmployID]      INT          NOT NULL,
    [FirstName]     VARCHAR (50) NOT NULL,
    [LastName]      VARCHAR (50) NOT NULL,
    [City]          VARCHAR (50) NULL,
    [mobile]        INT          NULL,
    [age]           INT          NULL,
    [Mobile_Number] INT          NULL,
    [region]        VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([EmployID] ASC)
);

