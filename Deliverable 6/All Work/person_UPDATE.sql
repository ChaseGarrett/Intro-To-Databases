USE [Extracurricular]
GO

UPDATE [dbo].[Person]
   SET [PersonID] = <PersonID, int,>
      ,[FName] = <FName, varchar(30),>
      ,[MInit] = <MInit, varchar(1),>
      ,[LName] = <LName, varchar(30),>
      ,[Address] = <Address, varchar(45),>
      ,[City] = <City, varchar(45),>
      ,[State] = <State, varchar(2),>
      ,[Zip] = <Zip, int,>
      ,[Phone] = <Phone, varchar(15),>
      ,[Email] = <Email, varchar(45),>
      ,[DeptID] = <DeptID, int,>
      ,[Type] = <Type, varchar(1),>
 WHERE <Search Conditions,,>
GO


