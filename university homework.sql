-- יצירת טבלה של מרצים
CREATE TABLE Lecturers(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [int] NOT NULL,
 CONSTRAINT [PK_Lecturers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
	
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-- הוספת מפתח זר לטבלת קורסים
ALTER TABLE [dbo].[Courses]
	
 ADD CONSTRAINT [FK_Courses_LECTURER] FOREIGN KEY ([LecturerId]) 
 REFERENCES [dbo].[Lecturer] ([Id])
 GO

 --הוספת מרצים
 USE [HackerUs]
GO

INSERT INTO [dbo].[Lecturers]
           (FirstName,LastName)
     VALUES
	( 'moshe', 'ron'),
	( 'avi', 'neeman'),
	( 'ron', 'cohen')

	 
GO
-- ex2
select c.CourseName,l.FirstName + ' ' + l.LastName from dbo.Courses c
join Lecturers l on c.LecturerId= l.Id
order by c.Id, l.LastName

--


