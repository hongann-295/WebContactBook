USE [WebContactBook]
GO

/****** Object:  StoredProcedure [dbo].[Sp_Get_ReligionAll]    Script Date: 7/31/2020 10:52:20 AM ******/
DROP PROCEDURE [dbo].[Sp_Get_ReligionAll]
GO

/****** Object:  StoredProcedure [dbo].[Sp_Save_Religion]    Script Date: 7/31/2020 10:52:20 AM ******/
DROP PROCEDURE [dbo].[Sp_Save_Religion]
GO

/****** Object:  StoredProcedure [dbo].[Sp_Delete_Religion]    Script Date: 7/31/2020 10:52:20 AM ******/
DROP PROCEDURE [dbo].[Sp_Delete_Religion]
GO

/****** Object:  StoredProcedure [dbo].[Sp_Get_Religion_byId]    Script Date: 7/31/2020 10:52:20 AM ******/
DROP PROCEDURE [dbo].[Sp_Get_Religion_byId]
GO

/****** Object:  StoredProcedure [dbo].[Sp_Get_Religion_byId]    Script Date: 7/31/2020 10:52:20 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Hong An 
-- Create date: 7/30/2020
-- Description:	Get Religion by ReligionID
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Get_Religion_byId]
	@ReligionId INT
AS
BEGIN
SELECT [ReligionId]
      ,[ReligionName]
  FROM [dbo].[Religion]
  WHERE ReligionId = @ReligionId
END
GO

/****** Object:  StoredProcedure [dbo].[Sp_Delete_Religion]    Script Date: 7/31/2020 10:52:20 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Hong An
-- Create date: 7/30/2020
-- Description:	delete Religion
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Delete_Religion]
	@ReligionId INT
AS
BEGIN
	DECLARE @Message NVARCHAR(200) = 'Something went wrong, please try again'
	BEGIN TRY
		Update [dbo].[Religion]
		set [IsDelete] = 1
		WHERE ReligionId = @ReligionId

		SET @Message = 'Religion has been deleted successfully!'
		SELECT @ReligionId AS ReligionId, @Message AS [Message]

	END TRY
	BEGIN CATCH
		SELECT @ReligionId AS ReligionId, @Message AS [Message]
	END CATCH
	

END
GO

/****** Object:  StoredProcedure [dbo].[Sp_Save_Religion]    Script Date: 7/31/2020 10:52:20 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Hong An
-- Create date: 7/30/2020
-- Description:	create/update Religion
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Save_Religion]
	@ReligionId INT,
	@ReligionName NVARCHAR(50)
AS
BEGIN
	DECLARE @Message NVARCHAR(200) = 'Something went wrong, please try again!'
	BEGIN TRY
		--Create new Religion
		IF(@ReligionId IS NULL OR @ReligionId = 0)
		BEGIN
			INSERT INTO [dbo].[Religion]
					   ([ReligionName]
					   ,[IsDelete])
				 VALUES
					   (@ReligionName
					   ,0)
			SET @ReligionId = SCOPE_IDENTITY()
			SET @Message = 'Religion has been created successfully!'

		END
		ELSE --Update Religion by Id
		BEGIN
			UPDATE [dbo].[Religion]
			   SET [ReligionName] = @ReligionName
			 WHERE ReligionId = @ReligionId
			 SET @Message = 'Religion has been updated successfully!'
		END

		SELECT @ReligionId AS ReligionId, @Message AS [Message]

	END TRY
	BEGIN CATCH
		SET @ReligionId = 0
		SELECT @ReligionId AS ReligionId, @Message AS [Message]
	END CATCH
END
GO

/****** Object:  StoredProcedure [dbo].[Sp_Get_ReligionAll]    Script Date: 7/31/2020 10:52:20 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Hong An
-- Create date: 7/30/2020
-- Description:	Get all Religion
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Get_ReligionAll]
AS
BEGIN
SELECT [ReligionId]
      ,[ReligionName]
      ,[IsDelete]
  FROM [dbo].[Religion]
  WHERE IsDelete = 0
END
GO

