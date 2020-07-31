USE [WebContactBook]
GO

/****** Object:  StoredProcedure [dbo].[Sp_Delete_ClassRoom]    Script Date: 7/30/2020 10:08:07 AM ******/
DROP PROCEDURE [dbo].[Sp_Delete_ClassRoom]
GO

/****** Object:  StoredProcedure [dbo].[Sp_Gets_ClassRoom]    Script Date: 7/30/2020 10:08:07 AM ******/
DROP PROCEDURE [dbo].[Sp_Gets_ClassRoom]
GO

/****** Object:  StoredProcedure [dbo].[Sp_Save_ClassRoom]    Script Date: 7/30/2020 10:08:07 AM ******/
DROP PROCEDURE [dbo].[Sp_Save_ClassRoom]
GO

/****** Object:  StoredProcedure [dbo].[Sp_Save_ClassRoom]    Script Date: 7/30/2020 10:08:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Hong An
-- Create date: 7/30/2020
-- Description:	Save ClassRoom
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Save_ClassRoom]
	@ClassId INT,
	@ClassName NVARCHAR(50),
	@GradeId INT,
	@CourseId INT,
	@TeacherId INT
AS
BEGIN
DECLARE @Message NVARCHAR(200) = 'Something went wrong, please try again!'
	BEGIN TRY
		--Create new ClassRoom
		IF(@ClassId IS NULL OR @ClassId = 0)
		BEGIN
			INSERT INTO [dbo].[ClassRoom]
					   ([ClassName]
					   ,[GradeId]
					   ,[CourseId]
					   ,[TeacherId])
				 VALUES
					   (@ClassName
					   ,@GradeId
					   ,@CourseId
					   ,@TeacherId)
			SET @ClassId = SCOPE_IDENTITY()
			SET @Message = 'ClassRoom has been created successfully!'

		END
		ELSE --Update ClassRoom by Id
		BEGIN
			UPDATE [dbo].[ClassRoom]
			   SET [ClassName] = @ClassName
				  ,[GradeId] = @GradeId
				  ,[CourseId] = @CourseId
				  ,[TeacherId] = @TeacherId
			 WHERE @ClassId = ClassId
			 SET @Message = 'ClassRoom has been updated successfully!'
		END

		SELECT @ClassId AS ClassId, @Message AS [Message]

	END TRY
	BEGIN CATCH
		SET @ClassId = 0
		SELECT @ClassId AS ClassId, @Message AS [Message]
	END CATCH
END
GO

/****** Object:  StoredProcedure [dbo].[Sp_Gets_ClassRoom]    Script Date: 7/30/2020 10:08:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Hong An
-- Create date: 7/30/2020
-- Description:	Get all ClassRoom
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Gets_ClassRoom]
AS
BEGIN
SELECT [ClassId]
      ,[ClassName]
      ,[GradeId]
      ,[CourseId]
      ,[TeacherId]
  FROM [dbo].[ClassRoom]
END
GO

/****** Object:  StoredProcedure [dbo].[Sp_Delete_ClassRoom]    Script Date: 7/30/2020 10:08:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Hong An
-- Create date: 7/30/2020
-- Description:	Delete ClassRoom
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Delete_ClassRoom]
	@ClassId INT
AS
BEGIN
DECLARE @Message NVARCHAR(200) = 'Something went wrong, please try again!'
	BEGIN TRY
		DELETE FROM [dbo].[ClassRoom]
			  WHERE ClassId = @ClassId
		SET @Message = 'ClassRoom has been deleted successfully!'
		SELECT @ClassId AS ClassId, @Message AS [Message]

	END TRY
	BEGIN CATCH
		SELECT @ClassId AS ClassId, @Message AS [Message]
	END CATCH
END
GO

