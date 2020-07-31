USE [WebContactBook]
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_ClassRoomsAll]    Script Date: 7/29/2020 11:28:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get Class All
-- =============================================
ALTER PROCEDURE [dbo].[sp_Get_ClassRoomsAll]
AS
BEGIN
SELECT [ClassId]
      ,[ClassName]
	  ,[GradeId]
	  ,[CourseId]
	  ,[TeacherId]
  FROM [dbo].ClassRoom

END
