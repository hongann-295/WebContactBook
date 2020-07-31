USE [WebContactBook]
GO

/****** Object:  StoredProcedure [dbo].[sp_Delete_Nation]    Script Date: 7/30/2020 4:57:25 PM ******/
DROP PROCEDURE [dbo].[sp_Delete_Nation]
GO

/****** Object:  StoredProcedure [dbo].[sp_Delete_Nation]    Script Date: 7/30/2020 4:57:25 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Duc Tran
-- Create date: 7/29/2020
-- Description: Delete nation
-- =============================================
CREATE PROCEDURE [dbo].[sp_Delete_Nation]
	@NationIds NVARCHAR(200)
AS
BEGIN
DECLARE @Message NVARCHAR(200) = 'Something went wrong, please try again'
	BEGIN TRY
		DECLARE @tbId TABLE(Id INT)
		DECLARE @Id INT
		INSERT INTO @tbId SELECT value from string_split(@NationIds, ',')
		WHILE(EXISTS(SELECT TOP(1) * FROM @tbId))
		BEGIN
			SET @Id = (SELECT TOP(1) * FROM @tbId)
			UPDATE [dbo].[Nation]
			SET [IsDelete] = 1
			WHERE NationId = @Id

			DELETE FROM @tbId WHERE Id = @Id
		END
		SET @Message = 'Nation has been deleted successfully!'
		SELECT @Message AS [Message]

	END TRY
	BEGIN CATCH
		SELECT @Message AS [Message]
	END CATCH
END
GO

