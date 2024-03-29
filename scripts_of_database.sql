USE [ProjectTracking]
GO
/****** Object:  Table [dbo].[Project_logs]    Script Date: 23.11.2019 19:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project_logs](
	[id] [int] NOT NULL,
	[log_name] [nvarchar](30) NULL,
	[project_id] [int] NOT NULL,
	[log_date] [date] NULL,
	[log_description] [nvarchar](100) NULL,
 CONSTRAINT [PK_Project_logs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project_tasks]    Script Date: 23.11.2019 19:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project_tasks](
	[id] [int] NOT NULL,
	[project_id] [int] NOT NULL,
	[task_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project_users]    Script Date: 23.11.2019 19:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project_users](
	[id] [int] NOT NULL,
	[project_id] [int] NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_Project_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 23.11.2019 19:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[project_id] [int] NOT NULL,
	[project_name] [nvarchar](30) NULL,
	[project_sections] [int] NULL,
	[project_assigned_date] [date] NOT NULL,
	[project_description] [nvarchar](60) NULL,
	[project_due_date] [date] NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[section_tasks]    Script Date: 23.11.2019 19:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[section_tasks](
	[section_id] [int] NOT NULL,
	[section_name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_section_tasks] PRIMARY KEY CLUSTERED 
(
	[section_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 23.11.2019 19:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[task_id] [int] NOT NULL,
	[task_name] [nvarchar](30) NULL,
	[task_due_date] [date] NULL,
	[task_description] [nvarchar](100) NULL,
	[task_section] [int] NULL,
	[task_channel] [nvarchar](30) NULL,
	[task_priority] [nvarchar](30) NULL,
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[task_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Team_users]    Script Date: 23.11.2019 19:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team_users](
	[id] [int] NOT NULL,
	[team_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [PK_Team_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 23.11.2019 19:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[team_id] [int] NOT NULL,
	[team_name] [nvarchar](30) NULL,
	[team_users] [int] NULL,
	[team_assigned_date] [date] NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[team_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_tasks]    Script Date: 23.11.2019 19:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_tasks](
	[id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[task_id] [int] NOT NULL,
 CONSTRAINT [PK_User_tasks] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 23.11.2019 19:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [int] NOT NULL,
	[user_fullname] [nvarchar](30) NOT NULL,
	[user_role] [nvarchar](30) NULL,
	[user_pronouns] [nvarchar](30) NULL,
	[user_department_or_team] [nvarchar](30) NULL,
	[user_about] [nvarchar](100) NULL,
	[user_email] [nvarchar](20) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Project_logs]  WITH CHECK ADD  CONSTRAINT [FK_Project_logs_Projects] FOREIGN KEY([project_id])
REFERENCES [dbo].[Projects] ([project_id])
GO
ALTER TABLE [dbo].[Project_logs] CHECK CONSTRAINT [FK_Project_logs_Projects]
GO
ALTER TABLE [dbo].[Project_tasks]  WITH CHECK ADD  CONSTRAINT [FK_Project_tasks_Projects] FOREIGN KEY([project_id])
REFERENCES [dbo].[Projects] ([project_id])
GO
ALTER TABLE [dbo].[Project_tasks] CHECK CONSTRAINT [FK_Project_tasks_Projects]
GO
ALTER TABLE [dbo].[Project_tasks]  WITH CHECK ADD  CONSTRAINT [FK_Project_tasks_Tasks] FOREIGN KEY([task_id])
REFERENCES [dbo].[Tasks] ([task_id])
GO
ALTER TABLE [dbo].[Project_tasks] CHECK CONSTRAINT [FK_Project_tasks_Tasks]
GO
ALTER TABLE [dbo].[Project_users]  WITH CHECK ADD  CONSTRAINT [FK_Project_users_Projects] FOREIGN KEY([project_id])
REFERENCES [dbo].[Projects] ([project_id])
GO
ALTER TABLE [dbo].[Project_users] CHECK CONSTRAINT [FK_Project_users_Projects]
GO
ALTER TABLE [dbo].[Project_users]  WITH CHECK ADD  CONSTRAINT [FK_Project_users_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Project_users] CHECK CONSTRAINT [FK_Project_users_Users]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_section_tasks] FOREIGN KEY([task_section])
REFERENCES [dbo].[section_tasks] ([section_id])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_section_tasks]
GO
ALTER TABLE [dbo].[Team_users]  WITH CHECK ADD  CONSTRAINT [FK_Team_users_Teams] FOREIGN KEY([team_id])
REFERENCES [dbo].[Teams] ([team_id])
GO
ALTER TABLE [dbo].[Team_users] CHECK CONSTRAINT [FK_Team_users_Teams]
GO
ALTER TABLE [dbo].[Team_users]  WITH CHECK ADD  CONSTRAINT [FK_Team_users_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Team_users] CHECK CONSTRAINT [FK_Team_users_Users]
GO
ALTER TABLE [dbo].[User_tasks]  WITH CHECK ADD  CONSTRAINT [FK_User_tasks_Tasks] FOREIGN KEY([task_id])
REFERENCES [dbo].[Tasks] ([task_id])
GO
ALTER TABLE [dbo].[User_tasks] CHECK CONSTRAINT [FK_User_tasks_Tasks]
GO
ALTER TABLE [dbo].[User_tasks]  WITH CHECK ADD  CONSTRAINT [FK_User_tasks_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[User_tasks] CHECK CONSTRAINT [FK_User_tasks_Users]
GO
