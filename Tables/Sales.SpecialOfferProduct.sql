﻿CREATE TABLE [Sales].[SpecialOfferProduct] (
  [SpecialOfferID] [int] NOT NULL,
  [ProductID] [int] NOT NULL,
  [rowguid] [uniqueidentifier] NOT NULL CONSTRAINT [DF_SpecialOfferProduct_rowguid] DEFAULT (newid()) ROWGUIDCOL,
  [ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_SpecialOfferProduct_ModifiedDate] DEFAULT (getdate()),
  CONSTRAINT [PK_SpecialOfferProduct_SpecialOfferID_ProductID] PRIMARY KEY CLUSTERED ([SpecialOfferID], [ProductID])
)
ON [PRIMARY]
GO

ALTER TABLE [Sales].[SpecialOfferProduct]
  ADD CONSTRAINT [FK_SpecialOfferProduct_Product_ProductID] FOREIGN KEY ([ProductID]) REFERENCES [Production].[Product] ([ProductId])
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Product.ProductID.', 'SCHEMA', N'Sales', 'TABLE', N'SpecialOfferProduct', 'CONSTRAINT', N'FK_SpecialOfferProduct_Product_ProductID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Cross-reference table mapping products to special offer discounts.', 'SCHEMA', N'Sales', 'TABLE', N'SpecialOfferProduct'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Primary key for SpecialOfferProduct records.', 'SCHEMA', N'Sales', 'TABLE', N'SpecialOfferProduct', 'COLUMN', N'SpecialOfferID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Product identification number. Foreign key to Product.ProductID.', 'SCHEMA', N'Sales', 'TABLE', N'SpecialOfferProduct', 'COLUMN', N'ProductID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', 'SCHEMA', N'Sales', 'TABLE', N'SpecialOfferProduct', 'COLUMN', N'rowguid'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Sales', 'TABLE', N'SpecialOfferProduct', 'COLUMN', N'ModifiedDate'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Sales', 'TABLE', N'SpecialOfferProduct', 'CONSTRAINT', N'PK_SpecialOfferProduct_SpecialOfferID_ProductID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Sales', 'TABLE', N'SpecialOfferProduct', 'CONSTRAINT', N'DF_SpecialOfferProduct_ModifiedDate'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()', 'SCHEMA', N'Sales', 'TABLE', N'SpecialOfferProduct', 'CONSTRAINT', N'DF_SpecialOfferProduct_rowguid'
GO