USE [WebContactBook]
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_ClassRooms_ByCourseIdAndGradeId]    Script Date: 7/29/2020 10:14:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get ClassRooms by CoureseId and GradeId
-- =============================================
ALTER PROCEDURE [dbo].[sp_Get_ClassRooms_ByCourseIdAndGradeId]
@CourseId int,	
@GradeId int
AS
BEGIN
SELECT   [ClassId]
      ,[ClassName]
	  ,cr.[GradeId] as [GradeId]
	  ,cr.[CourseId] as [CourseId]
	  ,cr.[TeacherId] as [TeacherId]
FROM [dbo].Course c
  inner join ClassRoom cr on cr.CourseId=c.CourseId
  inner join Grade gr on gr.GradeId=cr.GradeId
  inner join Teacher t on t.TeacherId = cr.TeacherId
Where cr.CourseId=@CourseId and cr.GradeId=@GradeId
END
