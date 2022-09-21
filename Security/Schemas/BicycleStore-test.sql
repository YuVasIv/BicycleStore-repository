CREATE SCHEMA [BicycleStore-test] AUTHORIZATION [dbo]
GO

EXEC sys.sp_addextendedproperty N'tSQLt.TestClass', 1, 'SCHEMA', N'BicycleStore-test'
GO