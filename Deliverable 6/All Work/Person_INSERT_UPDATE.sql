USE [Extracurricular]
GO
/****** Object:  Trigger [dbo].[Person_INSERT_UPDATE]    Script Date: 11/16/2017 1:20:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[Person_INSERT_UPDATE]
	ON [dbo].[Person]
	AFTER INSERT, UPDATE
AS
	UPDATE Person
	SET State = UPPER(State)
	WHERE PersonID IN (SELECT PersonID FROM Inserted);