USE [master]
GO
/****** Object:  Database [emsDb]    Script Date: 11.01.2023 12:46:29 ******/
CREATE DATABASE [emsDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'emsDb', FILENAME = N'C:\Users\mnovo\emsDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'emsDb_log', FILENAME = N'C:\Users\mnovo\emsDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [emsDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [emsDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [emsDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [emsDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [emsDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [emsDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [emsDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [emsDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [emsDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [emsDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [emsDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [emsDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [emsDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [emsDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [emsDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [emsDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [emsDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [emsDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [emsDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [emsDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [emsDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [emsDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [emsDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [emsDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [emsDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [emsDb] SET  MULTI_USER 
GO
ALTER DATABASE [emsDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [emsDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [emsDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [emsDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [emsDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [emsDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [emsDb] SET QUERY_STORE = OFF
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [shopLogin]    Script Date: 11.01.2023 12:46:29 ******/
CREATE LOGIN [shopLogin] WITH PASSWORD=N'5NBHXHjJAwPiY0yubDY/rUwz52OOaWsHonSiEBIJa00=', DEFAULT_DATABASE=[shopAdminDb], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [shopLogin] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [ServerApp]    Script Date: 11.01.2023 12:46:29 ******/
CREATE LOGIN [ServerApp] WITH PASSWORD=N'kf+M+h7knIZ9i3j2tCCCPmJYu3nvT3l7jnQce9zMjkU=', DEFAULT_DATABASE=[AppCodes], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [ServerApp] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [PostAppLogin]    Script Date: 11.01.2023 12:46:29 ******/
CREATE LOGIN [PostAppLogin] WITH PASSWORD=N'Jxvzj1zrFHGo4eYqYk/kp3aE4cQrVuCKH0secHGWnY0=', DEFAULT_DATABASE=[PostAppDb], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [PostAppLogin] DISABLE
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 11.01.2023 12:46:29 ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [emsLogin]    Script Date: 11.01.2023 12:46:29 ******/
CREATE LOGIN [emsLogin] WITH PASSWORD=N'/CmEv8gJ04Z0ZNPqann9gXBpLNhR9B4NDTYzmmrp+kA=', DEFAULT_DATABASE=[emsDb], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [emsLogin] DISABLE
GO
/****** Object:  Login [DESKTOP-OB90K25\mnovo]    Script Date: 11.01.2023 12:46:29 ******/
CREATE LOGIN [DESKTOP-OB90K25\mnovo] FROM WINDOWS WITH DEFAULT_DATABASE=[master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Admin]    Script Date: 11.01.2023 12:46:29 ******/
CREATE LOGIN [Admin] WITH PASSWORD=N'QiDMd3vdpNC/2f8lDTshX33P37e9KWHA6xWc83wxU2s=', DEFAULT_DATABASE=[shopAdminDb], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [Admin] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 11.01.2023 12:46:29 ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'pRnPw17b6o3BhCa2wLBD32XPX/P6TqsktkucNwf9MwE=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 11.01.2023 12:46:29 ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'xL7fBC4C6iLiZ+xCtpMqeROCrjZCodEWkVAGCCYoaUg=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER AUTHORIZATION ON DATABASE::[emsDb] TO [DESKTOP-OB90K25\mnovo]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [DESKTOP-OB90K25\mnovo]
GO
USE [emsDb]
GO
/****** Object:  User [emsUser]    Script Date: 11.01.2023 12:46:29 ******/
CREATE USER [emsUser] FOR LOGIN [emsLogin] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [emsUser]
GO
GRANT CONNECT TO [emsUser] AS [dbo]
GO
GRANT VIEW ANY COLUMN ENCRYPTION KEY DEFINITION TO [public] AS [dbo]
GO
GRANT VIEW ANY COLUMN MASTER KEY DEFINITION TO [public] AS [dbo]
GO
/****** Object:  Table [dbo].[Car]    Script Date: 11.01.2023 12:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car](
	[car_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[plate] [nvarchar](10) NULL,
 CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED 
(
	[car_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Car] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 11.01.2023 12:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[doctor_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[surname] [nvarchar](50) NULL,
	[sex] [nvarchar](10) NULL,
	[rank] [nvarchar](50) NULL,
	[phone_number] [int] NULL,
	[hospital_id] [int] NULL,
	[password] [nvarchar](max) NULL,
	[call_sign] [nvarchar](50) NULL,
	[birthday] [datetime] NULL,
	[reputation] [int] NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[doctor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Doctor] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Hospital]    Script Date: 11.01.2023 12:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hospital](
	[hospital_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[street] [nvarchar](50) NULL,
 CONSTRAINT [PK_Hospital] PRIMARY KEY CLUSTERED 
(
	[hospital_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Hospital] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 11.01.2023 12:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[patient_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[surname] [nvarchar](50) NULL,
	[birthday] [smalldatetime] NULL,
	[sex] [nvarchar](50) NULL,
	[street] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[zip] [nvarchar](50) NULL,
	[phone_number] [int] NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[patient_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Patient] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Respond]    Script Date: 11.01.2023 12:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Respond](
	[respond_id] [int] IDENTITY(1,1) NOT NULL,
	[doctor_id] [int] NULL,
	[date] [smalldatetime] NULL,
	[price] [int] NULL,
	[car_id] [int] NULL,
	[patient_id] [int] NULL,
 CONSTRAINT [PK_Respond] PRIMARY KEY CLUSTERED 
(
	[respond_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Respond] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[Car] ON 

INSERT [dbo].[Car] ([car_id], [name], [plate]) VALUES (1, N'Trackhawk', N'TRACKEMS')
INSERT [dbo].[Car] ([car_id], [name], [plate]) VALUES (4, N'16fpi', N'BBB12345')
INSERT [dbo].[Car] ([car_id], [name], [plate]) VALUES (7, N'Tundra', N'ABBC11')
INSERT [dbo].[Car] ([car_id], [name], [plate]) VALUES (1002, N'Audi RS6', N'2B6G24')
INSERT [dbo].[Car] ([car_id], [name], [plate]) VALUES (1003, N'Dodge', N'3B6AGB7')
INSERT [dbo].[Car] ([car_id], [name], [plate]) VALUES (2002, N'Ambo', N'5TZU7A')
SET IDENTITY_INSERT [dbo].[Car] OFF
GO
SET IDENTITY_INSERT [dbo].[Doctor] ON 

INSERT [dbo].[Doctor] ([doctor_id], [name], [surname], [sex], [rank], [phone_number], [hospital_id], [password], [call_sign], [birthday], [reputation]) VALUES (1, N'Nathan', N'Kane', N'Male', N'Head', 123456789, 1, N'a', N'Head-3', CAST(N'1992-10-02T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Doctor] ([doctor_id], [name], [surname], [sex], [rank], [phone_number], [hospital_id], [password], [call_sign], [birthday], [reputation]) VALUES (4, N'Pepa', N'Kláda', N'Male', N'Dean', 123456789, 1, N'a', N'Dean-1', CAST(N'1990-02-10T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Doctor] ([doctor_id], [name], [surname], [sex], [rank], [phone_number], [hospital_id], [password], [call_sign], [birthday], [reputation]) VALUES (5, N'Alfred', N'Fox', N'Male', N'Head', 123456789, 1, N'a', N'Head-1', CAST(N'1998-07-11T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Doctor] ([doctor_id], [name], [surname], [sex], [rank], [phone_number], [hospital_id], [password], [call_sign], [birthday], [reputation]) VALUES (1007, N'Karel', N'Cerny', N'Male', N'Prim', 147369258, 1, N'a', N'Prim-6', CAST(N'1988-01-05T09:36:37.000' AS DateTime), 0)
INSERT [dbo].[Doctor] ([doctor_id], [name], [surname], [sex], [rank], [phone_number], [hospital_id], [password], [call_sign], [birthday], [reputation]) VALUES (1008, N'Blue', N'Change', N'Male', N'Prim', 123147258, 1, N'a', N'Prim-3', CAST(N'1999-09-03T09:37:13.000' AS DateTime), 0)
INSERT [dbo].[Doctor] ([doctor_id], [name], [surname], [sex], [rank], [phone_number], [hospital_id], [password], [call_sign], [birthday], [reputation]) VALUES (3003, N'Sara', N'Rossi', N'Female', N'Dean', 12321145, 1, N'a', N'Dean-3', CAST(N'1992-01-11T10:48:34.000' AS DateTime), 0)
INSERT [dbo].[Doctor] ([doctor_id], [name], [surname], [sex], [rank], [phone_number], [hospital_id], [password], [call_sign], [birthday], [reputation]) VALUES (3006, N'Angel Jose', N'Diaz', N'Male', N'Dean', 965987412, 1, N'a', N'Dean-3', CAST(N'1995-12-05T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Doctor] ([doctor_id], [name], [surname], [sex], [rank], [phone_number], [hospital_id], [password], [call_sign], [birthday], [reputation]) VALUES (3007, N'Jago', N'Andor', N'Male', N'AC', 789654123, 1, N'a', N'AC-3', CAST(N'1994-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Doctor] ([doctor_id], [name], [surname], [sex], [rank], [phone_number], [hospital_id], [password], [call_sign], [birthday], [reputation]) VALUES (3008, N'Jonas', N'Wilson', N'Male', N'Doctor', 987412521, 1, N'a', N'Doc-4', CAST(N'1988-12-11T00:00:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Doctor] OFF
GO
SET IDENTITY_INSERT [dbo].[Hospital] ON 

INSERT [dbo].[Hospital] ([hospital_id], [name], [street]) VALUES (1, N'Mount Zonah', N'Rockford Hills')
INSERT [dbo].[Hospital] ([hospital_id], [name], [street]) VALUES (2, N'Pillbox Hill', N'Strawberry Avenue')
INSERT [dbo].[Hospital] ([hospital_id], [name], [street]) VALUES (3, N'Central LS', N'Capital Boulevard')
SET IDENTITY_INSERT [dbo].[Hospital] OFF
GO
SET IDENTITY_INSERT [dbo].[Patient] ON 

INSERT [dbo].[Patient] ([patient_id], [name], [surname], [birthday], [sex], [street], [city], [country], [zip], [phone_number]) VALUES (3, N'Mike', N'Williams', CAST(N'1995-01-02T13:28:00' AS SmallDateTime), N'Male', N'asd', N'dgasa', N'sdaf', N'asdf', 123564879)
INSERT [dbo].[Patient] ([patient_id], [name], [surname], [birthday], [sex], [street], [city], [country], [zip], [phone_number]) VALUES (4, N'Jacob', N'Scott', CAST(N'1994-01-02T13:29:00' AS SmallDateTime), N'Male', N'Vinewood Hills', N'Los Santos', N'United States', N'628', 123654888)
INSERT [dbo].[Patient] ([patient_id], [name], [surname], [birthday], [sex], [street], [city], [country], [zip], [phone_number]) VALUES (1006, N'Luca', N'Ferrari', CAST(N'1995-10-01T12:05:00' AS SmallDateTime), N'Male', N'tba', N'tba', N'tba', N'tba', 258147369)
INSERT [dbo].[Patient] ([patient_id], [name], [surname], [birthday], [sex], [street], [city], [country], [zip], [phone_number]) VALUES (1007, N'Samantha', N'Black', CAST(N'1995-05-05T12:06:00' AS SmallDateTime), N'Female', N'tba', N'tba', N'tba', N'tba', 147369258)
INSERT [dbo].[Patient] ([patient_id], [name], [surname], [birthday], [sex], [street], [city], [country], [zip], [phone_number]) VALUES (1008, N'Yasmina', N'Stone', CAST(N'2000-07-20T12:06:00' AS SmallDateTime), N'Female', N'tba', N'tba', N'tba', N'tba', 123147258)
INSERT [dbo].[Patient] ([patient_id], [name], [surname], [birthday], [sex], [street], [city], [country], [zip], [phone_number]) VALUES (1009, N'Becky', N'Miller', CAST(N'1994-01-12T12:07:00' AS SmallDateTime), N'Female', N'tba', N'tba', N'tba', N'tba', 123258852)
INSERT [dbo].[Patient] ([patient_id], [name], [surname], [birthday], [sex], [street], [city], [country], [zip], [phone_number]) VALUES (1010, N'John', N'Miller', CAST(N'1980-07-27T12:11:00' AS SmallDateTime), N'Male', N'tba', N'tba', N'tba', N'tba', 147123569)
INSERT [dbo].[Patient] ([patient_id], [name], [surname], [birthday], [sex], [street], [city], [country], [zip], [phone_number]) VALUES (1011, N'Lucas', N'Miller', CAST(N'1999-01-06T12:11:00' AS SmallDateTime), N'Male', N'tba', N'tba', N'tba', N'tba', 145789632)
INSERT [dbo].[Patient] ([patient_id], [name], [surname], [birthday], [sex], [street], [city], [country], [zip], [phone_number]) VALUES (1012, N'Karel', N'Cerny', CAST(N'1990-11-20T12:12:00' AS SmallDateTime), N'Male', N'tba', N'tba', N'tba', N'tba', 123365478)
INSERT [dbo].[Patient] ([patient_id], [name], [surname], [birthday], [sex], [street], [city], [country], [zip], [phone_number]) VALUES (1013, N'Layla', N'Queen', CAST(N'2000-01-06T12:13:00' AS SmallDateTime), N'Female', N'tba', N'tba', N'tba', N'tba', 123654478)
INSERT [dbo].[Patient] ([patient_id], [name], [surname], [birthday], [sex], [street], [city], [country], [zip], [phone_number]) VALUES (2004, N'Erik', N'Rin', CAST(N'1999-07-14T08:18:00' AS SmallDateTime), N'Male', N'tba', N'tba', N'tba', N'tba', 741159357)
INSERT [dbo].[Patient] ([patient_id], [name], [surname], [birthday], [sex], [street], [city], [country], [zip], [phone_number]) VALUES (3003, N'Marcus', N'Scott', CAST(N'1998-09-12T12:25:00' AS SmallDateTime), N'Male', N'tba', N'tba', N'tba', N'tba', 987582147)
INSERT [dbo].[Patient] ([patient_id], [name], [surname], [birthday], [sex], [street], [city], [country], [zip], [phone_number]) VALUES (4004, N'test', N'test', CAST(N'1995-11-01T09:44:00' AS SmallDateTime), N'Male', N'tba', N'tba', N'tba', N'tba', 123123)
INSERT [dbo].[Patient] ([patient_id], [name], [surname], [birthday], [sex], [street], [city], [country], [zip], [phone_number]) VALUES (4005, N'Luca', N'Mori', CAST(N'1994-01-11T10:47:00' AS SmallDateTime), N'Male', N'tba', N'tba', N'tba', N'tba', 256365214)
INSERT [dbo].[Patient] ([patient_id], [name], [surname], [birthday], [sex], [street], [city], [country], [zip], [phone_number]) VALUES (4007, N'Vito', N'Pavarotti', CAST(N'1992-07-20T00:00:00' AS SmallDateTime), N'Male', N'tba', N'tba', N'tba', N'tba', 132852147)
INSERT [dbo].[Patient] ([patient_id], [name], [surname], [birthday], [sex], [street], [city], [country], [zip], [phone_number]) VALUES (4008, N'Michael', N'Scott', CAST(N'1989-07-11T00:00:00' AS SmallDateTime), N'Male', N'tba', N'tba', N'tba', N'tba', 987412632)
SET IDENTITY_INSERT [dbo].[Patient] OFF
GO
SET IDENTITY_INSERT [dbo].[Respond] ON 

INSERT [dbo].[Respond] ([respond_id], [doctor_id], [date], [price], [car_id], [patient_id]) VALUES (1003, 1, CAST(N'2023-01-02T00:00:00' AS SmallDateTime), 7000, 1, 3)
INSERT [dbo].[Respond] ([respond_id], [doctor_id], [date], [price], [car_id], [patient_id]) VALUES (1008, 1, CAST(N'2023-01-06T00:00:00' AS SmallDateTime), 0, 1, 1013)
INSERT [dbo].[Respond] ([respond_id], [doctor_id], [date], [price], [car_id], [patient_id]) VALUES (1009, 1, CAST(N'2023-01-06T00:00:00' AS SmallDateTime), 0, 1, 1008)
INSERT [dbo].[Respond] ([respond_id], [doctor_id], [date], [price], [car_id], [patient_id]) VALUES (1010, 1, CAST(N'2023-01-06T00:00:00' AS SmallDateTime), 0, 1, 1009)
INSERT [dbo].[Respond] ([respond_id], [doctor_id], [date], [price], [car_id], [patient_id]) VALUES (1011, 1, CAST(N'2023-01-09T00:00:00' AS SmallDateTime), 0, 1002, 4)
INSERT [dbo].[Respond] ([respond_id], [doctor_id], [date], [price], [car_id], [patient_id]) VALUES (1012, 1, CAST(N'2023-01-09T00:00:00' AS SmallDateTime), 1000, 1003, 2004)
INSERT [dbo].[Respond] ([respond_id], [doctor_id], [date], [price], [car_id], [patient_id]) VALUES (2013, 1, CAST(N'2023-01-09T00:00:00' AS SmallDateTime), 0, 1, 1007)
SET IDENTITY_INSERT [dbo].[Respond] OFF
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Hospital] FOREIGN KEY([hospital_id])
REFERENCES [dbo].[Hospital] ([hospital_id])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_Hospital]
GO
ALTER TABLE [dbo].[Respond]  WITH CHECK ADD  CONSTRAINT [FK_Respond_Car] FOREIGN KEY([car_id])
REFERENCES [dbo].[Car] ([car_id])
GO
ALTER TABLE [dbo].[Respond] CHECK CONSTRAINT [FK_Respond_Car]
GO
ALTER TABLE [dbo].[Respond]  WITH CHECK ADD  CONSTRAINT [FK_Respond_Doctor] FOREIGN KEY([doctor_id])
REFERENCES [dbo].[Doctor] ([doctor_id])
GO
ALTER TABLE [dbo].[Respond] CHECK CONSTRAINT [FK_Respond_Doctor]
GO
ALTER TABLE [dbo].[Respond]  WITH CHECK ADD  CONSTRAINT [FK_Respond_Patient] FOREIGN KEY([patient_id])
REFERENCES [dbo].[Patient] ([patient_id])
GO
ALTER TABLE [dbo].[Respond] CHECK CONSTRAINT [FK_Respond_Patient]
GO
USE [master]
GO
ALTER DATABASE [emsDb] SET  READ_WRITE 
GO
