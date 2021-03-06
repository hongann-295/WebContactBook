USE [WebContactBook]
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_Student_byClassId]    Script Date: 7/29/2020 10:41:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get Student by Subjects
-- =============================================
alter PROCEDURE [dbo].[sp_Subjects_byClassId]
	@ClassId INT
AS
BEGIN
SELECT s.[SubjectId]
      ,[SubjectName]
	  
  FROM [dbo].[Subject] s
  inner join [dbo].[ClassSubject] cs on s.SubjectId=cs.SubjectId
  WHERE cs.ClassId = @ClassId
END
