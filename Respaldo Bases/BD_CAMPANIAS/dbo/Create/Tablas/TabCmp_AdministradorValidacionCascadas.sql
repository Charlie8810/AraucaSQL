USE [BD_CAMPANIAS]
GO

/****** Object:  Table [dbo].[TabCmp_AdministradorValidacionCascadas]    Script Date: 21/11/2016 11:00:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TabCmp_AdministradorValidacionCascadas](
	[Codigo] [varchar](10) NULL,
	[Descripcion] [varchar](max) NULL,
	[Consulta] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


