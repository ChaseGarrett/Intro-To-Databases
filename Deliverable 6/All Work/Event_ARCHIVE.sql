USE [Extracurricular]
GO
/****** Object:  Trigger [dbo].[Event_DELETE]    Script Date: 11/16/2017 1:14:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[Event_DELETE]
    ON [dbo].[Event]
	AFTER DELETE
AS
INSERT INTO dbo.EventArchive
    (EventID, SponsorID, Title, Description, Event_Time, 
	    Length_Minutes, Location_Description, Ticket_Cost, Type)
    SELECT EventID, SponsorID, Title, Description, Event_Time, 
	    Length_Minutes, Location_Description, Ticket_Cost, Type
	FROM deleted;