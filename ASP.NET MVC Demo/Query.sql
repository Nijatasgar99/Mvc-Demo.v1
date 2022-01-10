CREATE TABLE [dbo].[Department] (
   [DepartmentID] INT IDENTITY (1, 1) NOT NULL,
   [Name] NVARCHAR (200) NULL,

   CONSTRAINT [PK_dbo.Department] PRIMARY KEY CLUSTERED ([DepartmentID] ASC)
)

CREATE TABLE [dbo].[Employee] (
   [EmployeeID] INT IDENTITY (1, 1) NOT NULL,
   [FullName] NVARCHAR (200) NOT NULL,
   [DateOfBirth] DATETIME NOT NULL,
   [Gender] INT NOT NULL,
   [Address] NVARCHAR (1000) NOT NULL,
   [Email] NVARCHAR (200) NOT NULL,
   [PhoneNumber] NVARCHAR (20) NOT NULL,
   [Salary] DECIMAL NOT NULL,
   [DepartmentID] INT NOT NULL,

   CONSTRAINT [PK_dbo.Employee] PRIMARY KEY CLUSTERED ([EmployeeID] ASC),
   CONSTRAINT [FK_dbo.Employee_dbo.Department_DepartmentID] FOREIGN KEY ([DepartmentID])
   REFERENCES [dbo].[Department] ([DepartmentID]) ON DELETE CASCADE
)
