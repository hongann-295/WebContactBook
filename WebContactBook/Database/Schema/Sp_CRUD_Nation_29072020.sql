USE [WebContactBook]
GO

/****** Object:  StoredProcedure [dbo].[sp_Save_Nation]    Script Date: 7/29/2020 3:10:56 PM ******/
DROP PROCEDURE [dbo].[sp_Save_Nation]
GO

/****** Object:  StoredProcedure [dbo].[sp_Get_Nation]    Script Date: 7/29/2020 3:10:56 PM ******/
DROP PROCEDURE [dbo].[sp_Get_Nation]
GO

/****** Object:  StoredProcedure [dbo].[sp_Gets_Nation]    Script Date: 7/29/2020 3:10:56 PM ******/
DROP PROCEDURE [dbo].[sp_Gets_Nation]
GO

/****** Object:  StoredProcedure [dbo].[sp_Delete_Nation]    Script Date: 7/29/2020 3:10:56 PM ******/
DROP PROCEDURE [dbo].[sp_Delete_Nation]
GO

/****** Object:  StoredProcedure [dbo].[sp_Delete_Nation]    Script Date: 7/29/2020 3:10:56 PM ******/
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
	@NationId INT
AS
BEGIN
DECLARE @Message NVARCHAR(200) = 'Something went wrong, please try again'
	BEGIN TRY
		DELETE FROM [dbo].[Nation]
		WHERE NationId = @NationId

		SET @Message = 'Nation has been deleted successfully!'
		SELECT @NationId AS NationId, @Message AS [Message]

	END TRY
	BEGIN CATCH
		SELECT @NationId AS NationId, @Message AS [Message]
	END CATCH
	

END
GO

/****** Object:  StoredProcedure [dbo].[sp_Gets_Nation]    Script Date: 7/29/2020 3:10:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Duc Tran
-- Create date: 7/29/2020
-- Description: Get nations
-- =============================================
CREATE PROCEDURE [dbo].[sp_Gets_Nation]
AS
BEGIN
	
	SELECT n.[NationId]
      ,n.[NationName]
	  ,(SELECT COUNT(*) FROM Student s WHERE s.NationId = n.NationId) AS Students

	FROM [dbo].[Nation] n

END
GO

/****** Object:  StoredProcedure [dbo].[sp_Get_Nation]    Script Date: 7/29/2020 3:10:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Duc Tran
-- Create date: 7/29/2020
-- Description: Get nation by nation Id
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_Nation]
	@NationId INT
AS
BEGIN
	
	SELECT [NationId]
      ,[NationName]

	FROM [dbo].[Nation]
	WHERE NationId = @NationId

END
GO

/****** Object:  StoredProcedure [dbo].[sp_Save_Nation]    Script Date: 7/29/2020 3:10:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Duc Tran
-- Create date: 7/29/2020
-- Description:	create/update nation
-- =============================================
CREATE PROCEDURE [dbo].[sp_Save_Nation]
	@NationId INT,
	@NationName NVARCHAR(20)
AS
BEGIN
	DECLARE @Message NVARCHAR(200) = 'Something went wrong, please try again!'
	BEGIN TRY
		--Create new Nation
		IF(@NationId IS NULL OR @NationId = 0)
		BEGIN
			INSERT INTO [dbo].[Nation]
			   ([NationName])
			VALUES
			   (@NationName)
		
			SET @NationId = SCOPE_IDENTITY()
			SET @Message = 'Nation has been created successfully!'

		END
		ELSE --Update Nation by Id
		BEGIN
			UPDATE [dbo].[Nation]
			   SET [NationName] = @NationName
			 WHERE NationId = @NationId
			 SET @Message = 'Nation has been updated successfully!'
		END

		SELECT @NationId AS NationId, @Message AS [Message]

	END TRY
	BEGIN CATCH
		SET @NationId = 0
		SELECT @NationId AS NationId, @Message AS [Message]
	END CATCH
END
GO

