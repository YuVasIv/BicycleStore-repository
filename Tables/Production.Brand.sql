CREATE TABLE [Production].[Brand] (
  [BrandId] [int] IDENTITY,
  [BrandName] [varchar](255) NOT NULL,
  [URL] [varchar](max) NULL,
  [Image] [varbinary](max) NULL,
  [ProductCategory] [varchar](50) NULL,
  [Revenue] [int] NULL,
  PRIMARY KEY CLUSTERED ([BrandId])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO