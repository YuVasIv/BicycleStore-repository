CREATE TABLE [Sales].[Store] (
  [StoreId] [int] IDENTITY,
  [StoreName] [varchar](255) NOT NULL,
  [Phone] [varchar](25) NULL,
  [Email] [varchar](255) NULL,
  [Street] [varchar](255) NULL,
  [City] [varchar](255) NULL,
  [State] [varchar](10) NULL,
  PRIMARY KEY CLUSTERED ([StoreId])
)
ON [PRIMARY]
GO