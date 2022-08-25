CREATE TABLE [Production].[Brand] (
  [BrandId] [int] IDENTITY,
  [BrandName] [varchar](255) NOT NULL,
  [URL] [varchar](max) NULL,
  [Picture] [varbinary](max) NULL,
  PRIMARY KEY CLUSTERED ([BrandId])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO