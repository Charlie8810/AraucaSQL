-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_camp_ProcesarGestionCalling
	@Periodo int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @String varchar(100) = ''
	DECLARE @Delimiter CHAR = '/'    
	--DECLARE @Periodo int = 201611
	DECLARE	@rut varchar(20)
	DECLARE	@dv varchar(3)
	DECLARE @hayConexion int
	DECLARE @hayContacto int
	DECLARE @estaFallecido int
	DECLARE @desuscrito int
	DECLARE @rebotado int
	DECLARE @numero int = 1

	DECLARE cCALL CURSOR FOR
	SELECT REPLACE(glosa,'.','/') glosa, Rut_OK, DV_OK
	FROM BD_ODS..TabContactos_CallOut_Atento
	WHERE periodo = @Periodo

	OPEN cCALL  
	FETCH NEXT FROM cCALL INTO @String, @rut, @dv

	WHILE @@FETCH_STATUS = 0  
	BEGIN  

			SELECT *
			INTO #tmp_Regs
			FROM (
				SELECT LTRIM(RTRIM(Split.a.value('.', 'VARCHAR(400)'))) Value
				FROM  
				(     
					 SELECT CAST ('<M>' + REPLACE(@String, @Delimiter, '</M><M>') + '</M>' AS XML) AS Data            
				) AS A 
				CROSS APPLY Data.nodes ('/M') AS Split(a)
			) Reg

			PRINT CONVERT(VARCHAR(10),@numero) + N'.- CONEXION PARA EL AFILIADO RUT: '  + LTRIM(RTRIM(@rut)) + '-' + @dv + ' EN EL PERIODO: ' + CONVERT(VARCHAR(6),@Periodo)
		
			/*FASE 1: EXISTENCIA DE CONEXION*/
			SELECT @hayConexion = COUNT(*)
			FROM #tmp_Regs
			WHERE Value IN ('CONECTA')

			IF @hayConexion > 0 
			BEGIN
				PRINT N'Hay Conexion'
				/*FASE 2: COMUNICACION CORRECTA*/
				SELECT @hayContacto = COUNT(*)
				FROM #tmp_Regs
				WHERE Value IN ('COMUNICA CON CLIENTE', 'COMUNICA CON TECERO VALIDO')

				IF @hayContacto > 0
				BEGIN
					PRINT N'Hay comunicacion exitosa [ges_abierto=1]'
				
					SELECT @estaFallecido = COUNT(*)
					FROM #tmp_Regs
					WHERE Value IN ('FALLECIDO')
					IF @estaFallecido > 0
					BEGIN
						PRINT N'Afiliado Fallecido [insert into afiliados fallecidos]'
					END

					SELECT @desuscrito = COUNT(*)
					FROM #tmp_Regs
					WHERE Value IN ('NO VOLVER A LLAMAR')
					IF @desuscrito > 0
					BEGIN
						PRINT N'Afiliado desuscrito [ges_desuscrito=1]'
					END
				END
				ELSE
				BEGIN
					PRINT N'Comunicaion  fracasada [ges_abierto=0]'
				END
			END
			ELSE 
			BEGIN
				PRINT N'No hay conexion [ges_abierto=0]'

				SELECT @rebotado = COUNT(*)
					FROM #tmp_Regs
					WHERE Value IN ('NUMERO NO VALIDO')
					IF @rebotado > 0
					BEGIN
						PRINT N'Rebotado [ges_rebotado=1]'
					END
			END

		   PRINT N'---------------------------------------------------------------------------------------------------------'
		   SET @numero = @numero + 1
		   drop table #tmp_Regs;
		   FETCH NEXT FROM cCALL INTO @String, @rut, @dv  
	END  

	CLOSE cCALL  
	DEALLOCATE cCALL


END
GO
