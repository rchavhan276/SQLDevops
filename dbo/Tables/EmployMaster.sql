CREATE TABLE [dbo].[EmployMaster](
	[EmployID] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[City] [varchar](50) NULL,
	[mobile] [int] NULL,
	[age] [int] NULL,
	[Mobile_Number] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployID] ASC
));