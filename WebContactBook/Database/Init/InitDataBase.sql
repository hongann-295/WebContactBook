USE [WebContactBook]
GO
/****** Object:  Table [dbo].[ClassRoom]    Script Date: 7/29/2020 8:56:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassRoom](
	[ClassId] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [nvarchar](50) NOT NULL,
	[GradeId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[TeacherId] [int] NULL,
 CONSTRAINT [PK_ClassRoom] PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassStudent]    Script Date: 7/29/2020 8:56:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassStudent](
	[ClassStudentId] [int] IDENTITY(1,1) NOT NULL,
	[ClassId] [int] NOT NULL,
	[StudenId] [int] NOT NULL,
 CONSTRAINT [PK_ClassStudent] PRIMARY KEY CLUSTERED 
(
	[ClassStudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassSubject]    Script Date: 7/29/2020 8:56:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassSubject](
	[ClassSubjectId] [int] IDENTITY(1,1) NOT NULL,
	[SubjectId] [int] NOT NULL,
	[ClassId] [int] NOT NULL,
 CONSTRAINT [PK_ClassSubject] PRIMARY KEY CLUSTERED 
(
	[ClassSubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 7/29/2020 8:56:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](50) NOT NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Degree]    Script Date: 7/29/2020 8:56:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Degree](
	[DegreeId] [int] IDENTITY(1,1) NOT NULL,
	[DegreeName] [nvarchar](50) NOT NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Degree] PRIMARY KEY CLUSTERED 
(
	[DegreeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 7/29/2020 8:56:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[GradeId] [int] IDENTITY(1,1) NOT NULL,
	[GradeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED 
(
	[GradeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job]    Script Date: 7/29/2020 8:56:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[JobId] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [nchar](50) NOT NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nation]    Script Date: 7/29/2020 8:56:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nation](
	[NationId] [int] IDENTITY(1,1) NOT NULL,
	[NationName] [nchar](20) NOT NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Nation] PRIMARY KEY CLUSTERED 
(
	[NationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Point]    Script Date: 7/29/2020 8:56:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Point](
	[PointId] [int] IDENTITY(1,1) NOT NULL,
	[SubjectResultId] [int] NOT NULL,
	[Point] [int] NULL,
	[CountEdit] [int] NULL,
 CONSTRAINT [PK_Point] PRIMARY KEY CLUSTERED 
(
	[PointId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Religion]    Script Date: 7/29/2020 8:56:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Religion](
	[ReligionId] [int] IDENTITY(1,1) NOT NULL,
	[ReligionName] [nvarchar](50) NOT NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Religion] PRIMARY KEY CLUSTERED 
(
	[ReligionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semester]    Script Date: 7/29/2020 8:56:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semester](
	[SemesterId] [int] IDENTITY(1,1) NOT NULL,
	[SemesterName] [nvarchar](50) NOT NULL,
	[CoefficientSemester] [int] NOT NULL,
 CONSTRAINT [PK_Semester] PRIMARY KEY CLUSTERED 
(
	[SemesterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 7/29/2020 8:56:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Gender] [bit] NOT NULL,
	[DayOfBirth] [datetime] NOT NULL,
	[PlaceOfBirth] [nvarchar](200) NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[NationId] [int] NOT NULL,
	[ReligionId] [int] NOT NULL,
	[FartherName] [nvarchar](50) NULL,
	[MortherName] [nvarchar](50) NULL,
	[JobId] [int] NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[AvatarPath] [nvarchar](max) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 7/29/2020 8:56:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [nvarchar](50) NOT NULL,
	[Coefficient] [int] NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubjectResult]    Script Date: 7/29/2020 8:56:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubjectResult](
	[SubjectResultId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[SemesterId] [int] NOT NULL,
	[TypePointId] [int] NOT NULL,
	[SubjectId] [int] NOT NULL,
 CONSTRAINT [PK_SubjectResult] PRIMARY KEY CLUSTERED 
(
	[SubjectResultId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 7/29/2020 8:56:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[TeacherId] [int] IDENTITY(1,1) NOT NULL,
	[TeacherName] [nvarchar](50) NOT NULL,
	[DayOfBirth] [datetime] NULL,
	[PlaceOfBirth] [nvarchar](50) NULL,
	[Gender] [bit] NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[SubjectId] [int] NOT NULL,
	[AvatarPath] [nvarchar](50) NULL,
	[DegreeId] [int] NOT NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypePoint]    Script Date: 7/29/2020 8:56:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypePoint](
	[TypePointId] [int] IDENTITY(1,1) NOT NULL,
	[PoinName] [nvarchar](50) NOT NULL,
	[CoefficientType] [int] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_TypePoint] PRIMARY KEY CLUSTERED 
(
	[TypePointId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ClassRoom] ON 

INSERT [dbo].[ClassRoom] ([ClassId], [ClassName], [GradeId], [CourseId], [TeacherId]) VALUES (14, N'10A1', 1, 1, 1)
INSERT [dbo].[ClassRoom] ([ClassId], [ClassName], [GradeId], [CourseId], [TeacherId]) VALUES (15, N'11A1', 2, 1, 1)
SET IDENTITY_INSERT [dbo].[ClassRoom] OFF
GO
SET IDENTITY_INSERT [dbo].[ClassStudent] ON 

INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudenId]) VALUES (2, 14, 2)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudenId]) VALUES (4, 15, 3)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudenId]) VALUES (5, 14, 4)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudenId]) VALUES (6, 14, 5)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudenId]) VALUES (7, 14, 10)
SET IDENTITY_INSERT [dbo].[ClassStudent] OFF
GO
SET IDENTITY_INSERT [dbo].[ClassSubject] ON 

INSERT [dbo].[ClassSubject] ([ClassSubjectId], [SubjectId], [ClassId]) VALUES (1, 1, 14)
INSERT [dbo].[ClassSubject] ([ClassSubjectId], [SubjectId], [ClassId]) VALUES (2, 2, 14)
INSERT [dbo].[ClassSubject] ([ClassSubjectId], [SubjectId], [ClassId]) VALUES (3, 3, 14)
INSERT [dbo].[ClassSubject] ([ClassSubjectId], [SubjectId], [ClassId]) VALUES (4, 4, 14)
INSERT [dbo].[ClassSubject] ([ClassSubjectId], [SubjectId], [ClassId]) VALUES (5, 5, 14)
INSERT [dbo].[ClassSubject] ([ClassSubjectId], [SubjectId], [ClassId]) VALUES (6, 6, 14)
INSERT [dbo].[ClassSubject] ([ClassSubjectId], [SubjectId], [ClassId]) VALUES (7, 7, 14)
INSERT [dbo].[ClassSubject] ([ClassSubjectId], [SubjectId], [ClassId]) VALUES (8, 8, 14)
INSERT [dbo].[ClassSubject] ([ClassSubjectId], [SubjectId], [ClassId]) VALUES (9, 1, 15)
INSERT [dbo].[ClassSubject] ([ClassSubjectId], [SubjectId], [ClassId]) VALUES (10, 2, 15)
INSERT [dbo].[ClassSubject] ([ClassSubjectId], [SubjectId], [ClassId]) VALUES (11, 3, 15)
INSERT [dbo].[ClassSubject] ([ClassSubjectId], [SubjectId], [ClassId]) VALUES (12, 4, 15)
INSERT [dbo].[ClassSubject] ([ClassSubjectId], [SubjectId], [ClassId]) VALUES (13, 5, 15)
SET IDENTITY_INSERT [dbo].[ClassSubject] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([CourseId], [CourseName], [IsDelete]) VALUES (1, N'Năm 2019-2020', NULL)
INSERT [dbo].[Course] ([CourseId], [CourseName], [IsDelete]) VALUES (2, N'Năm 2020-2021', NULL)
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Degree] ON 

INSERT [dbo].[Degree] ([DegreeId], [DegreeName], [IsDelete]) VALUES (1, N'Cử Nhân', NULL)
SET IDENTITY_INSERT [dbo].[Degree] OFF
GO
SET IDENTITY_INSERT [dbo].[Grade] ON 

INSERT [dbo].[Grade] ([GradeId], [GradeName]) VALUES (1, N'Khối 10')
INSERT [dbo].[Grade] ([GradeId], [GradeName]) VALUES (2, N'Khối 11')
INSERT [dbo].[Grade] ([GradeId], [GradeName]) VALUES (3, N'Khối 12')
SET IDENTITY_INSERT [dbo].[Grade] OFF
GO
SET IDENTITY_INSERT [dbo].[Job] ON 

INSERT [dbo].[Job] ([JobId], [JobName], [IsDelete]) VALUES (1, N'Kinh doanh                                        ', NULL)
INSERT [dbo].[Job] ([JobId], [JobName], [IsDelete]) VALUES (2, N'Cong nhan                                         ', NULL)
SET IDENTITY_INSERT [dbo].[Job] OFF
GO
SET IDENTITY_INSERT [dbo].[Nation] ON 

INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (1, N'Kinh                ', NULL)
SET IDENTITY_INSERT [dbo].[Nation] OFF
GO
SET IDENTITY_INSERT [dbo].[Point] ON 

INSERT [dbo].[Point] ([PointId], [SubjectResultId], [Point], [CountEdit]) VALUES (1, 3, 10, NULL)
INSERT [dbo].[Point] ([PointId], [SubjectResultId], [Point], [CountEdit]) VALUES (2, 3, 8, NULL)
INSERT [dbo].[Point] ([PointId], [SubjectResultId], [Point], [CountEdit]) VALUES (3, 4, 7, NULL)
INSERT [dbo].[Point] ([PointId], [SubjectResultId], [Point], [CountEdit]) VALUES (4, 4, 8, NULL)
SET IDENTITY_INSERT [dbo].[Point] OFF
GO
SET IDENTITY_INSERT [dbo].[Religion] ON 

INSERT [dbo].[Religion] ([ReligionId], [ReligionName], [IsDelete]) VALUES (1, N'Phat Giao                                         ', NULL)
INSERT [dbo].[Religion] ([ReligionId], [ReligionName], [IsDelete]) VALUES (2, N'Thien Chua Giao                                   ', NULL)
SET IDENTITY_INSERT [dbo].[Religion] OFF
GO
SET IDENTITY_INSERT [dbo].[Semester] ON 

INSERT [dbo].[Semester] ([SemesterId], [SemesterName], [CoefficientSemester]) VALUES (1, N'Học kì 1', 1)
INSERT [dbo].[Semester] ([SemesterId], [SemesterName], [CoefficientSemester]) VALUES (2, N'Học kì 2', 2)
SET IDENTITY_INSERT [dbo].[Semester] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobId], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (2, N'Xạo ', N'Duy', 1, CAST(N'2020-02-02T00:00:00.000' AS DateTime), N'Tp Hue', N'28 Nguyen Tri Phuong', 1, 1, N'Le Duy', N'Duy le', 1, N'0909898789', N'abc', 1)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobId], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (3, N'Duc', N'Cong', 0, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'Tp Hue', N'29 Nguyenx Hue', 1, 1, N'Duc Cap', N'Cap Duc', 1, N'0989876546', N'cdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobId], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (4, N'Ân ', N'Ngáo', 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'Huệ', N'30 NTP', 1, 1, N'Phương Hà', N'Phương Hà', 1, N'0000000000', N'xyz', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobId], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (5, N'Ân ', N'Ngơ', 0, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'Huệ', N'31 NTP', 1, 1, N'Phương Hà', N'Phương Hà ', 1, N'1111111111', N'xyz', NULL)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobId], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (10, N'Ân', N'Lắc', 0, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'Huệ', N'32 NTP ', 1, 1, N'Phương Hà', N'Phương Hà', 1, N'2222222222', N'asd', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobId], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (11, N'Le', N'Duy', 1, CAST(N'2020-02-02T00:00:00.000' AS DateTime), N'BV Hue', N'CodeGym', 1, 1, N'Ba Le Duy', N'Me Le Duy', 1, N'0363457343', N'Duy dep trai', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobId], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (12, N'Hồng', N'Ân', 1, CAST(N'2020-02-02T00:00:00.000' AS DateTime), N'BV Hue', N'CodeGym', 1, 1, N'Mẹ Hồng Ân', N'Ba Hồng Ân', 1, N'0123456789', N'Ân Đẹp Gái Dệ Sợ', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobId], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (13, N'Hồng', N'Ân', 1, CAST(N'2020-02-02T00:00:00.000' AS DateTime), N'BV Hue', N'CodeGym', 1, 1, N'Mẹ Hồng Ân', N'Ba Hồng Ân', 1, N'0321654987', N'Ân Xấu Gái Dệ Sợ', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobId], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (14, N'Hữu', N'Đức', 1, CAST(N'2020-02-02T00:00:00.000' AS DateTime), N'BV Huế', N'CodeGym', 1, 1, N'Mẹ Duy', N'Ba Duy', 1, N'0321654987', N'Duy đẹp trai', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobId], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (15, N'Lê', N'Vũ', 1, CAST(N'2020-02-02T00:00:00.000' AS DateTime), N'BV Huế', N'CodeGym', 1, 1, N'Mẹ Duy', N'Ba Duy', 1, N'0321654987', N'Duy đẹp trai', 0)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([SubjectID], [SubjectName], [Coefficient]) VALUES (1, N'Toán', 2)
INSERT [dbo].[Subject] ([SubjectID], [SubjectName], [Coefficient]) VALUES (2, N'Văn', 2)
INSERT [dbo].[Subject] ([SubjectID], [SubjectName], [Coefficient]) VALUES (3, N'Anh', 1)
INSERT [dbo].[Subject] ([SubjectID], [SubjectName], [Coefficient]) VALUES (4, N'Lý', 1)
INSERT [dbo].[Subject] ([SubjectID], [SubjectName], [Coefficient]) VALUES (5, N'Hóa', 1)
INSERT [dbo].[Subject] ([SubjectID], [SubjectName], [Coefficient]) VALUES (6, N'Sinh', 1)
INSERT [dbo].[Subject] ([SubjectID], [SubjectName], [Coefficient]) VALUES (7, N'Sử', 1)
INSERT [dbo].[Subject] ([SubjectID], [SubjectName], [Coefficient]) VALUES (8, N'Địa', 1)
INSERT [dbo].[Subject] ([SubjectID], [SubjectName], [Coefficient]) VALUES (13, N'GDCD', 1)
SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
SET IDENTITY_INSERT [dbo].[SubjectResult] ON 

INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [TypePointId], [SubjectId]) VALUES (3, 2, 1, 1, 1)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [TypePointId], [SubjectId]) VALUES (4, 3, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[SubjectResult] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [DayOfBirth], [PlaceOfBirth], [Gender], [Phone], [Address], [SubjectId], [AvatarPath], [DegreeId], [IsDelete]) VALUES (1, N'Hong An', CAST(N'2020-03-03T00:00:00.000' AS DateTime), N'Tp Hue', 1, N'0989878987', N'29/81 Nguyen Hue', 1, N'ghj', 1, 0)
SET IDENTITY_INSERT [dbo].[Teacher] OFF
GO
SET IDENTITY_INSERT [dbo].[TypePoint] ON 

INSERT [dbo].[TypePoint] ([TypePointId], [PoinName], [CoefficientType], [IsDelete]) VALUES (1, N'Điểm Miệng', 1, 0)
INSERT [dbo].[TypePoint] ([TypePointId], [PoinName], [CoefficientType], [IsDelete]) VALUES (2, N'15 Phút', 1, 0)
INSERT [dbo].[TypePoint] ([TypePointId], [PoinName], [CoefficientType], [IsDelete]) VALUES (3, N'1 tiết', 2, 0)
INSERT [dbo].[TypePoint] ([TypePointId], [PoinName], [CoefficientType], [IsDelete]) VALUES (4, N'Học Kỳ', 3, 0)
SET IDENTITY_INSERT [dbo].[TypePoint] OFF
GO
ALTER TABLE [dbo].[ClassRoom]  WITH CHECK ADD  CONSTRAINT [FK_ClassRoom_Course1] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
ALTER TABLE [dbo].[ClassRoom] CHECK CONSTRAINT [FK_ClassRoom_Course1]
GO
ALTER TABLE [dbo].[ClassRoom]  WITH CHECK ADD  CONSTRAINT [FK_ClassRoom_Grade] FOREIGN KEY([GradeId])
REFERENCES [dbo].[Grade] ([GradeId])
GO
ALTER TABLE [dbo].[ClassRoom] CHECK CONSTRAINT [FK_ClassRoom_Grade]
GO
ALTER TABLE [dbo].[ClassRoom]  WITH CHECK ADD  CONSTRAINT [FK_ClassRoom_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teacher] ([TeacherId])
GO
ALTER TABLE [dbo].[ClassRoom] CHECK CONSTRAINT [FK_ClassRoom_Teacher]
GO
ALTER TABLE [dbo].[ClassStudent]  WITH CHECK ADD  CONSTRAINT [FK_ClassStudent_ClassRoom] FOREIGN KEY([ClassId])
REFERENCES [dbo].[ClassRoom] ([ClassId])
GO
ALTER TABLE [dbo].[ClassStudent] CHECK CONSTRAINT [FK_ClassStudent_ClassRoom]
GO
ALTER TABLE [dbo].[ClassStudent]  WITH CHECK ADD  CONSTRAINT [FK_ClassStudent_Student] FOREIGN KEY([StudenId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[ClassStudent] CHECK CONSTRAINT [FK_ClassStudent_Student]
GO
ALTER TABLE [dbo].[ClassSubject]  WITH CHECK ADD  CONSTRAINT [FK_ClassSubject_ClassRoom] FOREIGN KEY([ClassId])
REFERENCES [dbo].[ClassRoom] ([ClassId])
GO
ALTER TABLE [dbo].[ClassSubject] CHECK CONSTRAINT [FK_ClassSubject_ClassRoom]
GO
ALTER TABLE [dbo].[ClassSubject]  WITH CHECK ADD  CONSTRAINT [FK_ClassSubject_Subject] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([SubjectID])
GO
ALTER TABLE [dbo].[ClassSubject] CHECK CONSTRAINT [FK_ClassSubject_Subject]
GO
ALTER TABLE [dbo].[Point]  WITH CHECK ADD  CONSTRAINT [FK_Point_SubjectResult] FOREIGN KEY([SubjectResultId])
REFERENCES [dbo].[SubjectResult] ([SubjectResultId])
GO
ALTER TABLE [dbo].[Point] CHECK CONSTRAINT [FK_Point_SubjectResult]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Job] FOREIGN KEY([JobId])
REFERENCES [dbo].[Job] ([JobId])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Job]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Nation] FOREIGN KEY([NationId])
REFERENCES [dbo].[Nation] ([NationId])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Nation]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Religion] FOREIGN KEY([ReligionId])
REFERENCES [dbo].[Religion] ([ReligionId])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Religion]
GO
ALTER TABLE [dbo].[SubjectResult]  WITH CHECK ADD  CONSTRAINT [FK_SubjectResult_Semester] FOREIGN KEY([SemesterId])
REFERENCES [dbo].[Semester] ([SemesterId])
GO
ALTER TABLE [dbo].[SubjectResult] CHECK CONSTRAINT [FK_SubjectResult_Semester]
GO
ALTER TABLE [dbo].[SubjectResult]  WITH CHECK ADD  CONSTRAINT [FK_SubjectResult_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[SubjectResult] CHECK CONSTRAINT [FK_SubjectResult_Student]
GO
ALTER TABLE [dbo].[SubjectResult]  WITH CHECK ADD  CONSTRAINT [FK_SubjectResult_Subject] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([SubjectID])
GO
ALTER TABLE [dbo].[SubjectResult] CHECK CONSTRAINT [FK_SubjectResult_Subject]
GO
ALTER TABLE [dbo].[SubjectResult]  WITH CHECK ADD  CONSTRAINT [FK_SubjectResult_TypePoint1] FOREIGN KEY([TypePointId])
REFERENCES [dbo].[TypePoint] ([TypePointId])
GO
ALTER TABLE [dbo].[SubjectResult] CHECK CONSTRAINT [FK_SubjectResult_TypePoint1]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Degree] FOREIGN KEY([DegreeId])
REFERENCES [dbo].[Degree] ([DegreeId])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Degree]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Subject] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([SubjectID])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Subject]
GO
/****** Object:  StoredProcedure [dbo].[sp_Delete_Student]    Script Date: 7/29/2020 8:56:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Duy Le
-- Create date: 7/27/2020
-- Description:	delete Student by StudentId
-- =============================================
Create PROCEDURE [dbo].[sp_Delete_Student]
	@StudentId INT
AS
BEGIN
	DECLARE @Message NVARCHAR(200) = 'Something went wrong, please try again'
	BEGIN TRY
		UPDATE [dbo].[Student]
		 SET [IsDelete] = 1
		WHERE StudentId = @StudentId

		SET @Message = 'Employee has been deleted successfully!'
		SELECT @StudentId AS EmployeeId, @Message AS [Message]

	END TRY
	BEGIN CATCH
		SELECT @StudentId AS EmployeeId, @Message AS [Message]
	END CATCH
	

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_ClassRooms_ByCourseIdAndGradeId]    Script Date: 7/29/2020 8:56:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get ClassRooms by CoureseId and GradeId
-- =============================================
Create PROCEDURE [dbo].[sp_Get_ClassRooms_ByCourseIdAndGradeId]
@CourseId int,	
@GradeId int
AS
BEGIN
SELECT [ClassId]
      ,[ClassName]
	  ,t.TeacherName
FROM [dbo].Course c
  inner join ClassRoom cr on cr.CourseId=c.CourseId
  inner join Grade gr on gr.GradeId=cr.GradeId
  inner join Teacher t on t.TeacherId = cr.TeacherId
Where cr.CourseId=@CourseId and cr.GradeId=@GradeId
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_ClassRoomsAll]    Script Date: 7/29/2020 8:56:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get Class All
-- =============================================
Create PROCEDURE [dbo].[sp_Get_ClassRoomsAll]
AS
BEGIN
SELECT [ClassId]
      ,[ClassName]
	  ,[GradeId]
	  ,[CourseId]
	  ,[TeacherId]
  FROM [dbo].ClassRoom

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_CoursesAll]    Script Date: 7/29/2020 8:56:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get Courses All
-- =============================================
Create PROCEDURE [dbo].[sp_Get_CoursesAll]
AS
BEGIN
SELECT [CourseId]
      ,[CourseName]
  FROM [dbo].Course

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_GradesAll]    Script Date: 7/29/2020 8:56:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get Grades
-- =============================================
create PROCEDURE [dbo].[sp_Get_GradesAll]
AS
BEGIN
SELECT [GradeId]
      ,[GradeName]
  FROM [dbo].[Grade]

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_Student_byClassId]    Script Date: 7/29/2020 8:56:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get employee by ClassId
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_Student_byClassId]
	@ClassId INT
AS
BEGIN
SELECT [StudentId]
      ,[FirstName]
	  ,[LastName]
  FROM [dbo].[Student] st
  inner join ClassStudent cs on cs.ClassStudentId=st.StudentId
  inner join ClassRoom cr on cr.ClassId=cs.ClassId
  WHERE cr.ClassId = @ClassId

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_Student_byStudentId]    Script Date: 7/29/2020 8:56:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Duy Le
-- Create date: 7/22/2020
-- Description:	Get employee by StudentID
-- =============================================
create PROCEDURE [dbo].[sp_Get_Student_byStudentId]
	@StudentId INT
AS
BEGIN
SELECT 
      [FirstName]
	  ,[LastName]
      ,(CASE WHEN [Gender] = 1 THEN 'Male' ELSE 'Female' END) AS Gender
	  ,FORMAT([DayOfBirth], 'yyyy-MM-dd') AS [DayOfBirth]
      ,[PlaceOfBirth]
	  ,[Address]
	  ,[PhoneNumber]
	  ,[FartherName]
	  ,[MortherName]
      ,[AvatarPath]
	  ,na.NationName as NationName
	  ,re.ReligionName as ReligionName
	  ,jo.JobName as JobName
  FROM [dbo].[Student] st
  inner join Nation na on na.NationId = st.NationId
  inner join Religion re on re.ReligionId = st.ReligionId
  inner join Job jo on jo.JobId=st.JobId
  WHERE StudentId = @StudentId

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Save_Student]    Script Date: 7/29/2020 8:56:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[sp_SaveDepartment]    Script Date: 7/22/2020 10:52:18 AM ******/


-- =============================================
-- Author:		Duy Le
-- Create date: 7/14/2020
-- Description:	create/update Student
-- =============================================
Create PROCEDURE [dbo].[sp_Save_Student]
		@StudentId int,
		@FirstName nvarchar(50),
		@LastName nvarchar(50),
		@Gender bit,
        @DayOfBirth datetime,
        @PlaceOfBirth nvarchar(200),
		@Address nvarchar(200),
		@NationId int,
		@ReligionId int,
		@FartherName nvarchar(50),
		@MortherName nvarchar(50),
		@JobId int,
		@PhoneNumber nvarchar(50),
		@AvatarPath nvarchar(MAX)
		
AS
BEGIN
	DECLARE @Message NVARCHAR(200) = 'Something went wrong, please try again!'
	BEGIN TRY
		--Create new Department
		IF(CONVERT(INT, @StudentId) IS NULL OR CONVERT(INT, @StudentId) = 0)
		BEGIN
INSERT INTO [dbo].[Student]
           ([FirstName]
           ,[LastName]
           ,[Gender]
           ,[DayOfBirth]
           ,[PlaceOfBirth]
           ,[Address]
           ,[NationId]
           ,[ReligionId]
           ,[FartherName]
           ,[MortherName]
           ,[JobId]
           ,[PhoneNumber]
           ,[AvatarPath]
           ,[IsDelete])
     VALUES
           (@FirstName
           ,@LastName
           ,@Gender
           ,@DayOfBirth
           ,@PlaceOfBirth
           ,@Address
           ,@NationId
           ,@ReligionId
           ,@FartherName
           ,@MortherName
           ,@JobId
           ,@PhoneNumber
           ,@AvatarPath
           ,0)
			SET @StudentId = SCOPE_IDENTITY()
			SET @Message = 'Student has been created successfully!'
			END
		ELSE --Update Employee by Id
		BEGIN


UPDATE [dbo].[Student]
   SET [FirstName] = @FirstName
      ,[LastName] = @LastName
      ,[Gender] = @Gender
      ,[DayOfBirth] = @DayOfBirth
      ,[PlaceOfBirth] = @PlaceOfBirth
      ,[Address] = @Address
      ,[NationId] = @NationId
      ,[ReligionId] = @ReligionId
      ,[FartherName] = @FartherName
      ,[MortherName] = @MortherName
      ,[JobId] = @JobId
      ,[PhoneNumber] = @PhoneNumber
      ,[AvatarPath] = @AvatarPath
	 WHERE StudentId = @StudentId
			 SET @Message = 'Student has been updated successfully!'
		END

		SELECT @StudentId AS StudentId, @Message AS [Message]

	END TRY
	BEGIN CATCH
		SET @StudentId = 0
		SELECT @StudentId AS StudentId, @Message AS [Message]
	END CATCH
END
GO
