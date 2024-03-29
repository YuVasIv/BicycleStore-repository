﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE PROCEDURE [tSQLt].[Private_GetCursorForRunNew]
  @TestClassCursor CURSOR VARYING OUTPUT
AS
BEGIN
  SET @TestClassCursor = CURSOR LOCAL FAST_FORWARD FOR
   SELECT TC.Name
     FROM tSQLt.TestClasses AS TC
     JOIN tSQLt.Private_NewTestClassList AS PNTCL
       ON PNTCL.ClassName = TC.Name COLLATE database_default;

  OPEN @TestClassCursor;
END;
GO