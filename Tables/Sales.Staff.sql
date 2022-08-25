CREATE TABLE [Sales].[Staff] (
  [StaffId] [int] IDENTITY,
  [FirstName] [varchar](50) NOT NULL,
  [LastName] [varchar](50) NOT NULL,
  [DOB] [date] NOT NULL,
  [Email] [varchar](255) NOT NULL,
  [Phone] [varchar](25) NULL,
  [Active] [tinyint] NOT NULL,
  [StoreId] [int] NOT NULL,
  [ManagerId] [int] NULL,
  [ShiftId] [tinyint] NULL,
  PRIMARY KEY CLUSTERED ([StaffId]),
  UNIQUE ([Email])
)
ON [PRIMARY]
GO

ALTER TABLE [Sales].[Staff]
  ADD FOREIGN KEY ([ManagerId]) REFERENCES [Sales].[Staff] ([StaffId])
GO

ALTER TABLE [Sales].[Staff]
  ADD FOREIGN KEY ([StoreId]) REFERENCES [Sales].[Store] ([StoreId])
GO

ALTER TABLE [Sales].[Staff]
  ADD CONSTRAINT [FK_Staff_ShiftId] FOREIGN KEY ([ShiftId]) REFERENCES [Sales].[Shift] ([ShiftID])
GO