USE [BD_CAMPANIAS]
GO

/****** Object:  Table [dbo].[TabCmp_Campanias]    Script Date: 21/11/2016 11:03:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TabCmp_Campanias](
	[cmp_id] [bigint] IDENTITY(1,1) NOT NULL,
	[cmp_nombre] [varchar](500) NULL,
	[cmp_concepto] [varchar](500) NULL,
	[cmp_fecha_inicio] [bigint] NULL,
	[cmp_fecha_termino] [bigint] NULL,
	[cmp_canal_sms] [int] NULL,
	[cmp_canal_mail] [int] NULL,
	[cmp_canal_call] [int] NULL,
	[cmp_observacion] [varchar](500) NULL,
	[cmp_sub_concepto] [varchar](500) NULL,
	[cmp_cant_nomina] [bigint] NULL,
 CONSTRAINT [PK_TABCMP_CAMPANIAS] PRIMARY KEY NONCLUSTERED 
(
	[cmp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

