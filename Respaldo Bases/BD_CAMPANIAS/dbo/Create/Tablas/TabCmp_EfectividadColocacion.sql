USE [BD_CAMPANIAS]
GO

/****** Object:  Table [dbo].[TabCmp_EfectividadColocacion]    Script Date: 21/11/2016 11:04:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TabCmp_EfectividadColocacion](
	[eco_cmp_id] [bigint] NOT NULL,
	[eco_nom_rut] [varchar](10) NOT NULL,
	[eco_canal] [varchar](5) NOT NULL,
	[eco_fecha_colocacion] [datetime] NULL,
	[eco_fecha_desembolso] [datetime] NULL,
	[eco_monto_credito_neto] [decimal](15, 2) NULL,
	[eco_monto_credito_bruto] [decimal](15, 2) NULL,
	[eco_plazo] [int] NULL,
	[eco_tasa] [decimal](15, 2) NULL,
	[eco_nombre_ejecutivo] [varchar](500) NULL,
	[eco_rut_ejecutivo] [varchar](10) NULL,
	[eco_oficina_colocacion] [varchar](500) NULL,
 CONSTRAINT [PK_TABCMP_EFECTIVIDADCOLOCACIO] PRIMARY KEY NONCLUSTERED 
(
	[eco_cmp_id] ASC,
	[eco_nom_rut] ASC,
	[eco_canal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

