USE [BD_CAMPANIAS]
GO

/****** Object:  Table [dbo].[TabCmp_EmpresasDesafiliacion]    Script Date: 21/11/2016 11:04:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TabCmp_EmpresasDesafiliacion](
	[Empresa_Rut] [nchar](15) NOT NULL,
	[Empresa_Dv] [nchar](1) NULL,
	[Empresa_Nombre] [nvarchar](500) NULL,
	[Estado] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_TabCmp_EmpresasDesafiliacion] PRIMARY KEY CLUSTERED 
(
	[Empresa_Rut] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

