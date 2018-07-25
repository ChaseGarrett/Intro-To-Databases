BEGIN TRAN
DELETE Department
WHERE DeptName = 'Donuts' /*Replace with 'Fries' to see the table value get deleted*/
IF @@ROWCOUNT > 1
	BEGIN
		ROLLBACK TRAN
		PRINT 'More departments than expected. Deletions rolled back.'
	END
ELSE
	BEGIN 
		COMMIT TRAN
		PRINT 'Deletions committed to the database'
	END