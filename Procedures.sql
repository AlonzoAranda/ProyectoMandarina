
use ProyectoBA
go

create procedure AgregarTipoEstablecimiento(
  
 @NombreTipo Varchar(50) = null) 
 AS 
 insert into TipoEstablecimiento( NombreTipo) 
values( @NombreTipo)
 GO
 
  CREATE PROCEDURE [dbo].[ModifcarTipoEstablecimiento] 
(
 @IdTipoEstablecimiento int = null, 
 @NombreTipo Varchar(50) = null)
AS
SET NOCOUNT ON 
UPDATE TipoEstablecimiento
SET 
NombreTipo = @NombreTipo 
WHERE(IdTipoEstablecimiento = @IdTipoEstablecimiento) 
GO
 
 CREATE PROCEDURE[dbo].[EliminarTipoEstablecimiento]
(
 @IdTipoEstablecimiento int = null 
)
 AS 
delete TipoEstablecimiento WHERE(IdTipoEstablecimiento = @IdTipoEstablecimiento)
GO

 
 CREATE PROCEDURE[dbo].[FiltrarTipoEstablecimiento] 
( 
 @IdTipoEstablecimiento int = null, 
 @NombreTipo Varchar(50) = null) 
AS 
SET NOCOUNT ON 
DECLARE @sql nvarchar(4000)
SET @sql = ' SELECT * FROM TipoEstablecimiento where 1 = 1 '
if (@IdTipoEstablecimiento<> 0) 
SET @sql = @sql + ' and IdTipoEstablecimiento= ' + convert(varchar, @IdTipoEstablecimiento)if (@NombreTipo<> '') 
SET @sql = @sql + ' and NombreTipo= ' + Quotename(@NombreTipo, '''')exec(@sql) 
GO 

 
 create PROCEDURE  DevolverTablaTipoEstablecimiento
as 
DECLARE @sql nvarchar(50) 
 SET @sql = ' SELECT * FROM TipoEstablecimiento where 1 = 1 ' 
exec(@sql)
 GO
 
 
 create procedure AgregarUBICACIONES(
 
 @DIRECCION Varchar(50) = null, 
 @LATITUD Varchar(30) = null, 
 @LONGITUD Varchar(30) = null, 
 @IDSITIO int = null) 
 AS 
 insert into UBICACIONES(DIRECCION ,LATITUD ,LONGITUD ,IDSITIO) 
values( @DIRECCION ,  @LATITUD ,  @LONGITUD ,  @IDSITIO)
 GO
 
  create PROCEDURE [dbo].[ModifcarUBICACIONES] 
(
 @IDUBICACION int = null, 
 @DIRECCION Varchar(50) = null, 
 @LATITUD Varchar(30) = null, 
 @LONGITUD Varchar(30) = null, 
 @IDSITIO int = null)
AS
SET NOCOUNT ON 
UPDATE UBICACIONES 
SET 
DIRECCION = @DIRECCION, 
LATITUD = @LATITUD, 
LONGITUD = @LONGITUD, 
IDSITIO = @IDSITIO 
WHERE(IDUBICACION = @IDUBICACION) 
GO
 
 create PROCEDURE[dbo].[EliminarUBICACIONES]
(
 @UBICACION int = null 
)
 AS 
delete UBICACIONES WHERE(IDUBICACION = @UBICACION)
GO


 Create PROCEDURE[dbo].[FiltrarUBICACIONES] 
( 
 @IDUBICACION int = null, 
 @DIRECCION Varchar(50) = null, 
 @LATITUD Varchar(30) = null, 
 @LONGITUD Varchar(30) = null, 
 @IDSITIO int = null) 
AS 
SET NOCOUNT ON 
DECLARE @sql nvarchar(4000)
SET @sql = ' SELECT * FROM UBICACIONES where 1 = 1 '
if (@IDUBICACION<> 0) 
SET @sql = @sql + ' and IDUBICACION= ' + convert(varchar, @IDUBICACION)
if (@DIRECCION<> '') 
SET @sql = @sql + ' and DIRECCION= ' + Quotename(@DIRECCION, '''')
if (@LATITUD<> '') 
SET @sql = @sql + ' and LATITUD= ' + Quotename(@LATITUD, '''')
if (@LONGITUD<> '') 
SET @sql = @sql + ' and LONGITUD= ' + Quotename(@LONGITUD, '''')
if (@IDSITIO<> 0) 
SET @sql = @sql + ' and IDSITIO= ' + convert(varchar, @IDSITIO)
exec(@sql) 
GO 

  create procedure AgregarESTABLECIMIENTOS(
  
 @NOMBRE Varchar(50) = null, 
 @IDTIPOESTABLECIMIENTO int = null) 
 AS 
 insert into ESTABLECIMIENTOS( NOMBRE ,IDTIPOESTABLECIMIENTO) 
values(  @NOMBRE ,  @IDTIPOESTABLECIMIENTO)
 GO
 
  CREATE PROCEDURE [dbo].[ModifcarESTABLECIMIENTOS] 
(
 @IDESTABLECIMIENTO int = null, 
 @NOMBRE Varchar(50) = null, 
 @IDTIPOESTABLECIMIENTO int = null)
AS
SET NOCOUNT ON 
UPDATE ESTABLECIMIENTOS 
SET 
NOMBRE = @NOMBRE, 
IDTIPOESTABLECIMIENTO = @IDTIPOESTABLECIMIENTO 
WHERE(IDESTABLECIMIENTO = @IDESTABLECIMIENTO) 
GO
 
 CREATE PROCEDURE[dbo].[EliminarESTABLECIMIENTOS]
(
 @IDESTABLECIMIENTO int = null 
)
 AS 
delete ESTABLECIMIENTOS WHERE(IDESTABLECIMIENTO = @IDESTABLECIMIENTO)
GO

 
 CREATE PROCEDURE[dbo].[FiltrarESTABLECIMIENTOS] 
( 
 @IDESTABLECIMIENTO int = null, 
 @NOMBRE Varchar(50) = null, 
 @IDTIPOESTABLECIMIENTO int = null) 
AS 
SET NOCOUNT ON 
DECLARE @sql nvarchar(4000)
SET @sql = ' SELECT * FROM ESTABLECIMIENTOS where 1 = 1 '
if (@IDESTABLECIMIENTO<> 0) 
SET @sql = @sql + ' and IDESTABLECIMIENTO= ' + convert(varchar, @IDESTABLECIMIENTO)if 
(@NOMBRE<> '') 
SET @sql = @sql + ' and NOMBRE= ' + Quotename(@NOMBRE, '''')if 
(@IDTIPOESTABLECIMIENTO<> 0) 
SET @sql = @sql + ' and IDTIPOESTABLECIMIENTO= ' + convert(varchar, @IDTIPOESTABLECIMIENTO)exec(@sql) 
GO 

 
 create PROCEDURE  DevolverTablaESTABLECIMIENTOS
as 
DECLARE @sql nvarchar(50) 
 SET @sql = ' SELECT * FROM ESTABLECIMIENTOS where 1 = 1 ' 
exec(@sql)
 GO
 
 
 create procedure AgregarUSUARIO(
 
 @NOMBRE Varchar(50) = null, 
 @APEPAT Varchar(50) = null,
 @APEMAT Varchar(50) = null,   
 @CONTRASENA Varchar(25) = null, 
 @USUARIO Varchar(50) = null,
 @IDMEMBRESIA int = null, 
 @IDTIPOPAGO int = null,
 @FOTOUS   varchar(50) = NULL,
 @TipoUS int = null
 ) 
 AS 
 insert into USUARIO( NOMBRE ,APEPAT , APEMAT ,CONTRASENA ,USUARIO,IDMEMBRESIA,IDTIPOPAGO,   FOTOUS , TipoUs ) 
values( @NOMBRE ,  @APEPAT, @APEMAT ,  @CONTRASENA , @USUARIO, @IDMEMBRESIA, @IDTIPOPAGO,  @FOTOUS, @TipoUS )
 GO
 
 
  create PROCEDURE [dbo].[ModifcarUSUARIO] 
(
 @IDUSUARIO int = null, 
 @NOMBRE Varchar(50) = null, 
 @APEPAT Varchar(50) = null,
 @APEMAT Varchar(50) = null, 
 @CONTRASENA Varchar(25) = null, 
 @USUARIO Varchar(50) = null,
 @IDMEMBRESIA int = null, 
 @IDTIPOPAGO int = null,
 @FOTOUS   varchar(50) = NULL,
 @TipoUS   varchar(50) = NULL

)
AS
SET NOCOUNT ON 
UPDATE USUARIO 
SET 
NOMBRE = @NOMBRE, 
APEPAT = @APEPAT, 
APEMAT = @APEMAT, 
CONTRASENA = @CONTRASENA, 
USUARIO = @USUARIO,
IDMEMBRESIA = @IDMEMBRESIA,
IDTIPOPAGO = @IDTIPOPAGO,
FOTOUS = @FOTOUS,
TipoUS = @TipoUS

WHERE(IDUSUARIO = @IDUSUARIO) 
GO
 
 create PROCEDURE[dbo].[EliminarUSUARIO]
(
 @IDUSUARIO int = null 
)
 AS 
delete USUARIO WHERE(IDUSUARIO = @IDUSUARIO)
GO

 
 alter PROCEDURE[dbo].[FiltrarUSUARIO] 
( 
 @IDUSUARIO int = null, 
 @NOMBRE Varchar(50) = null, 
 @APEPAT varchar(50) = null,
 @APEMAT varchar(50) = null,
 @CONTRASENA Varchar(25) = null, 
 @USUARIO Varchar(50) = null,
 @IDMEMBRESIA int = null, 
 @IDTIPOPAGO int = null,
 @TipoUS int = null
 ) 
AS 
SET NOCOUNT ON 
DECLARE @sql nvarchar(4000)
SET @sql = ' SELECT * FROM USUARIO where 1 = 1 '
if (@IDUSUARIO<> 0) 
SET @sql = @sql + ' and IDUSUARIO= ' + convert(varchar, @IDUSUARIO)
if (@NOMBRE<> '') 
SET @sql = @sql + ' and NOMBRE= ' + Quotename(@NOMBRE, '''')
if (@APEPAT<> '') 
SET @sql = @sql + ' and APEPAT= ' + Quotename(@APEPAT, '''')
if (@APEMAT<> '') 
SET @sql = @sql + ' and APEMAT= ' + Quotename(@APEMAT, '''')
if (@CONTRASENA<> '') 
SET @sql = @sql + ' and CONTRASENA= ' + Quotename(@CONTRASENA, '''')
if (@USUARIO<> '') 
SET @sql = @sql + ' and USUARIO= ' + Quotename(@USUARIO, '''')
if (@IDMEMBRESIA<> 0) 
SET @sql = @sql + ' and IDMEMBRESIA= ' + convert(varchar, @IDMEMBRESIA)
if (@IDTIPOPAGO<> 0) 
SET @sql = @sql + ' and IDTIPOPAGO= ' + convert(varchar, @IDTIPOPAGO)
if (@TipoUS<> 0) 
SET @sql = @sql + ' and TipoUS= ' + convert(varchar,@TipoUS )

set @sql = @sql + 'order by IdUsuario desc'
exec(@sql)
GO 
 
 create PROCEDURE  DevolverTablaUSUARIO
as 
DECLARE @sql nvarchar(50) 
 SET @sql = ' SELECT * FROM USUARIO where 1 = 1 ' 
exec(@sql)
 GO
 


Create procedure AgregarSITIOS(
 
 @DESCRIPCION Varchar(300) = null, 
 @NOMBRE Varchar(50) = null, 
 @IDESTABLECIMIENTO int = null,
 @Estatus varchar(30) = null
 ) 
 AS 
 insert into SITIOS( DESCRIPCION ,NOMBRE ,IDESTABLECIMIENTO , Estatus) 
values(  @DESCRIPCION ,  @NOMBRE ,  @IDESTABLECIMIENTO, @Estatus)
 GO

  Create PROCEDURE [dbo].[ModifcarSITIOS] 
(
 @IDSITIO int = null, 
 @DESCRIPCION NVarchar(300) = null, 
 @NOMBRE Varchar(50) = null, 
 @IDESTABLECIMIENTO int = null,
 @Estatus varchar(30) = null
 )
AS
SET NOCOUNT ON 
UPDATE SITIOS 
SET 
DESCRIPCION = @DESCRIPCION, 
NOMBRE = @NOMBRE, 
IDESTABLECIMIENTO = @IDESTABLECIMIENTO ,
Estatus = @Estatus
WHERE(IDSITIO = @IDSITIO) 
GO
 CREATE PROCEDURE[dbo].[EliminarSITIOS]
(
 @IDSITIO int = null 
)
 AS 
delete SITIOS WHERE(IDSITIO = @IDSITIO)
GO
 alter PROCEDURE[dbo].[FiltrarSITIOS] 
( 
 @IDSITIO int = null, 
 @DESCRIPCION NVarchar(300) = null, 
 @NOMBRE Varchar(50) = null, 
 @IDESTABLECIMIENTO int = null,
 @Estatus varchar(30) = null
 ) 
AS 
SET NOCOUNT ON 
DECLARE @sql nvarchar(4000)
SET @sql = ' SELECT * FROM SITIOS where 1 = 1 '
if (@IDSITIO<> 0) 
SET @sql = @sql + ' and IDSITIO= ' + convert(varchar, @IDSITIO)if (@DESCRIPCION<> '') 
SET @sql = @sql + ' and DESCRIPCION= ' + Quotename(@DESCRIPCION, '''')if (@NOMBRE<> '') 
SET @sql = @sql + ' and NOMBRE= ' + Quotename(@NOMBRE, '''')
if (@Estatus<> '') 
SET @sql = @sql + ' and Estatus= ' + Quotename(@Estatus, '''')
if (@IDESTABLECIMIENTO<> 0) 
SET @sql = @sql + ' and IDESTABLECIMIENTO= ' + convert(varchar, @IDESTABLECIMIENTO)exec(@sql) 
SET @sql = @sql + 'order by IdSitio desc'
GO 
 create PROCEDURE  DevolverTablaSITIOS
as 
DECLARE @sql nvarchar(50) 
 SET @sql = ' SELECT * FROM SITIOS where 1 = 1 ' 
exec(@sql)
 GO
 
 
   create procedure AgregarFOTOS(
 
 @FOTO varchar(3000) = null, 
 @IDSITIO int = null) 
 AS 
 insert into FOTOS( FOTO ,IDSITIO) 
values( @FOTO ,  @IDSITIO)
 GO
 
  CREATE PROCEDURE [dbo].[ModifcarFOTOS] 
(
 @IDFOTO int = null, 
 @FOTO varchar(3000) = null, 
 @IDSITIO int = null)
AS
SET NOCOUNT ON 
UPDATE FOTOS 
SET 
FOTO = @FOTO, 
IDSITIO = @IDSITIO 
WHERE(IDFOTO = @IDFOTO) 
GO
 
 CREATE PROCEDURE[dbo].[EliminarFOTOS]
(
 @IDFOTO int = null 
)
 AS 
delete FOTOS WHERE(IDFOTO = @IDFOTO)
GO 
 Create PROCEDURE[dbo].[FiltrarFOTOS] 
( 
 @IDFOTO int = null, 
 @FOTO Varchar(3000) = null, 
 @IDSITIO int = null) 
AS 
SET NOCOUNT ON 
DECLARE @sql nvarchar(4000)
SET @sql = ' SELECT * FROM FOTOS where 1 = 1 '
if (@IDFOTO<> 0) 
SET @sql = @sql + ' and IDFOTO= ' + convert(varchar, @IDFOTO)if (@FOTO<> '') 
SET @sql = @sql + ' and FOTO= ' + Quotename(@FOTO, '''')if (@IDSITIO<> 0) 
SET @sql = @sql + ' and IDSITIO= ' + convert(varchar, @IDSITIO)exec(@sql) 
GO  
 Create PROCEDURE  DevolverTablaFOTOS
as 
DECLARE @sql nvarchar(50) 
 SET @sql = ' SELECT * FROM FOTOS where 1 = 1 ' 
exec(@sql)
 GO
 

   create procedure AgregarADMINISTRA(

 @IDUSUARIO int = null, 
 @IDSITIO int = null) 
 AS 
 insert into ADMINISTRA( IDUSUARIO ,IDSITIO) 
values( @IDUSUARIO ,  @IDSITIO)
 GO
 
  CREATE PROCEDURE [dbo].[ModifcarADMINISTRA] 
(
 @IDADMINISTRA int = null, 
 @IDUSUARIO int = null, 
 @IDSITIO int = null)
AS
SET NOCOUNT ON 
UPDATE ADMINISTRA 
SET 
IDUSUARIO = @IDUSUARIO, 
IDSITIO = @IDSITIO 
WHERE(IDADMINISTRA = @IDADMINISTRA) 
GO
 
 CREATE PROCEDURE[dbo].[EliminarADMINISTRA]
(
 @IDADMINISTRA int = null 
)
 AS 
delete ADMINISTRA WHERE(IDADMINISTRA = @IDADMINISTRA)
GO

 
 CREATE PROCEDURE[dbo].[FiltrarADMINISTRA] 
( 
 @IDADMINISTRA int = null, 
 @IDUSUARIO int = null, 
 @IDSITIO int = null) 
AS 
SET NOCOUNT ON 
DECLARE @sql nvarchar(4000)
SET @sql = ' SELECT * FROM ADMINISTRA where 1 = 1 '
if (@IDADMINISTRA<> 0) 
SET @sql = @sql + ' and IDADMINISTRA= ' + convert(varchar, @IDADMINISTRA)if (@IDUSUARIO<> 0) 
SET @sql = @sql + ' and IDUSUARIO= ' + convert(varchar, @IDUSUARIO)if (@IDSITIO<> 0) 
SET @sql = @sql + ' and IDSITIO= ' + convert(varchar, @IDSITIO)exec(@sql) 
GO 

 
 create PROCEDURE  DevolverTablaADMINISTRA
as 
DECLARE @sql nvarchar(50) 
 SET @sql = ' SELECT * FROM ADMINISTRA where 1 = 1 ' 
exec(@sql)
 GO
 
 
   create procedure AgregarTARJETACREDITO(
 
 @NUMTARJETA Varchar(25) = null, 
 @CVV Varchar(3) = null, 
 @MES Varchar(30) = null,
 @ANIO VARCHAR(30) = null,
 @IDUSUARIO int = null) 
 AS 
 insert into TARJETACREDITO( NUMTARJETA ,CVV ,MES, ANIO, IDUSUARIO) 
values(  @NUMTARJETA ,  @CVV ,  @MES , @ANIO , @IDUSUARIO)
 GO
 
  CREATE PROCEDURE [dbo].[ModifcarTARJETACREDITO] 
(
@IDTARJETA INT = NULL,
@NUMTARJETA Varchar(25) = null, 
 @CVV Varchar(3) = null, 
 @MES Varchar(30) = null,
 @ANIO VARCHAR(30) = null,
 @IDUSUARIO int = null) 
AS
SET NOCOUNT ON 
UPDATE TARJETACREDITO 
SET 
NUMTARJETA = @NUMTARJETA, 
CVV = @CVV, 
MES = @MES ,
ANIO = @ANIO,
IDUSUARIO = @IDUSUARIO
WHERE(IDTARJETA = @IDTARJETA) 
GO
 
 CREATE PROCEDURE[dbo].[EliminarTARJETACREDITO]
(
 @IDTARJETA int = null 
)
 AS 
delete TARJETACREDITO WHERE(IDTARJETA = @IDTARJETA)
GO

 
 CREATE PROCEDURE[dbo].[FiltrarTARJETACREDITO] 
( 
 @IDTARJETA int = null, 
 @NUMTARJETA Varchar(25) = null, 
 @CVV Varchar(3) = null, 
 @MES Varchar(30) = null,
 @ANIO Varchar(30) = null) 
 
AS 
SET NOCOUNT ON 
DECLARE @sql nvarchar(4000)
SET @sql = ' SELECT * FROM TARJETACREDITO where 1 = 1 '
if (@IDTARJETA<> 0) 
SET @sql = @sql + ' and IDTARJETA= ' + convert(varchar, @IDTARJETA)
if (@NUMTARJETA<> '') 
SET @sql = @sql + ' and NUMTARJETA= ' + Quotename(@NUMTARJETA, '''')
if (@CVV<> '') 
SET @sql = @sql + ' and CVV= ' + Quotename(@CVV, '''')
if (@MES<> '') 
SET @sql = @sql + ' and MES= ' + Quotename(@MES, '''')exec(@sql) 
if (@ANIO<> '') 
SET @sql = @sql + ' and ANIO= ' + Quotename(@ANIO, '''')exec(@sql) 

GO 

 
 create PROCEDURE  DevolverTablaTARJETACREDITO
as 
DECLARE @sql nvarchar(50) 
 SET @sql = ' SELECT * FROM TARJETACREDITO where 1 = 1 ' 
exec(@sql)
 GO
 
   create procedure AgregarTIPOPAGO(
 
 @NOMBRE Varchar(25) = null) 
 AS 
 insert into TIPOPAGO( NOMBRE) 
values( @NOMBRE)
 GO
 
  CREATE PROCEDURE [dbo].[ModifcarTIPOPAGO] 
(
 @IDTIPOPAGO int = null, 
 @NOMBRE Varchar(25) = null)
AS
SET NOCOUNT ON 
UPDATE TIPOPAGO 
SET 
NOMBRE = @NOMBRE 
WHERE(IDTIPOPAGO = @IDTIPOPAGO) 
GO
 
 CREATE PROCEDURE[dbo].[EliminarTIPOPAGO]
(
 @IDTIPOPAGO int = null 
)
 AS 
delete TIPOPAGO WHERE(IDTIPOPAGO = @IDTIPOPAGO)
GO
 CREATE PROCEDURE[dbo].[FiltrarTIPOPAGO] 
( 
 @IDTIPOPAGO int = null, 
 @NOMBRE Varchar(25) = null) 
AS 
SET NOCOUNT ON 
DECLARE @sql nvarchar(4000)
SET @sql = ' SELECT * FROM TIPOPAGO where 1 = 1 '
if (@IDTIPOPAGO<> 0) 
SET @sql = @sql + ' and IDTIPOPAGO= ' + convert(varchar, @IDTIPOPAGO)if (@NOMBRE<> '') 
SET @sql = @sql + ' and NOMBRE= ' + Quotename(@NOMBRE, '''')exec(@sql) 
GO 
 create PROCEDURE  DevolverTablaTIPOPAGO
as 
DECLARE @sql nvarchar(50) 
 SET @sql = ' SELECT * FROM TIPOPAGO where 1 = 1 ' 
exec(@sql)
 GO
 
 
   create procedure AgregarRECIBO(

 @FECHA DATE = null, 
 @IDUSUARIO int = null, 
 @IDMEMBRESIA int = null, 
 @IDTIPOPAGO int = null) 
 AS 
 insert into RECIBO( FECHA ,IDUSUARIO ,IDMEMBRESIA ,IDTIPOPAGO) 
values(  @FECHA ,  @IDUSUARIO ,  @IDMEMBRESIA ,  @IDTIPOPAGO)
 GO
 
  CREATE PROCEDURE [dbo].[ModifcarRECIBO] 
(
 @IDRECIBO int = null, 
 @FECHA DATE = null, 
 @IDUSUARIO int = null, 
 @IDMEMBRESIA int = null, 
 @IDTIPOPAGO int = null)
AS
SET NOCOUNT ON 
UPDATE RECIBO 
SET 
FECHA = @FECHA, 
IDUSUARIO = @IDUSUARIO, 
IDMEMBRESIA = @IDMEMBRESIA, 
IDTIPOPAGO = @IDTIPOPAGO 
WHERE(IDRECIBO = @IDRECIBO) 
GO
 
 CREATE PROCEDURE[dbo].[EliminarRECIBO]
(
 @IDRECIBO int = null 
)
 AS 
delete RECIBO WHERE(IDRECIBO = @IDRECIBO)
GO

 
 CREATE PROCEDURE[dbo].[FiltrarRECIBO] 
( 
 @IDRECIBO int = null, 
 @FECHA DATE = null, 
 @IDUSUARIO int = null, 
 @IDMEMBRESIA int = null, 
 @IDTIPOPAGO int = null) 
AS 
SET NOCOUNT ON 
DECLARE @sql nvarchar(4000)
SET @sql = ' SELECT * FROM RECIBO where 1 = 1 '
if (@IDRECIBO<> 0) 
SET @sql = @sql + ' and IDRECIBO= ' + convert(varchar, @IDRECIBO)if (@FECHA<> '') 
SET @sql = @sql + ' and FECHA= ' + Quotename(@FECHA, '''')if (@IDUSUARIO<> 0) 
SET @sql = @sql + ' and IDUSUARIO= ' + convert(varchar, @IDUSUARIO)if (@IDMEMBRESIA<> 0) 
SET @sql = @sql + ' and IDMEMBRESIA= ' + convert(varchar, @IDMEMBRESIA)if (@IDTIPOPAGO<> 0) 
SET @sql = @sql + ' and IDTIPOPAGO= ' + convert(varchar, @IDTIPOPAGO)exec(@sql) 
GO 

 
 create PROCEDURE  DevolverTablaRECIBO
as 
DECLARE @sql nvarchar(50) 
 SET @sql = ' SELECT * FROM RECIBO where 1 = 1 ' 
exec(@sql)
 GO
 



   create procedure AgregarMEMBRESIA(

 @NOMBREMEMBRESIA Varchar(25) = null, 
 @DURACIONMESES int = null, 
 @COSTO DECIMAL(10,2) = null,
 @NUMSITIOS INT = NULL) 
 AS 
 insert into MEMBRESIA( NOMBREMEMBRESIA ,DURACIONMESES ,COSTO, NUMSITIOS) 
values(  @NOMBREMEMBRESIA ,  @DURACIONMESES ,  @COSTO, @NUMSITIOS)
 GO
 
  CREATE PROCEDURE [dbo].[ModifcarMEMBRESIA] 
(
 @IDMEMBRESIA int = null, 
 @NOMBREMEMBRESIA Varchar(25) = null, 
 @DURACIONMESES int = null, 
 @COSTO DECIMAL(10,2) = null,
 @NUMSITIOS INT = NULL) 
AS
SET NOCOUNT ON 
UPDATE MEMBRESIA 
SET 
NOMBREMEMBRESIA = @NOMBREMEMBRESIA, 
DURACIONMESES = @DURACIONMESES, 
COSTO = @COSTO,
NumSitios = @NUMSITIOS
WHERE(IDMEMBRESIA = @IDMEMBRESIA) 
GO
 
 CREATE PROCEDURE[dbo].[EliminarMEMBRESIA]
(
 @IDMEMBRESIA int = null 
)
 AS 
delete MEMBRESIA WHERE(IDMEMBRESIA = @IDMEMBRESIA)
GO

 
 Create PROCEDURE[dbo].[FiltrarMEMBRESIA] 
( 
 @IDMEMBRESIA int = null, 
 @NOMBREMEMBRESIA Varchar(25) = null, 
 @DURACIONMESES int = null, 
 @COSTO DECIMAL(10,2) = null, 
 @NUMSITIOS INT = NULL) 
AS 
SET NOCOUNT ON 
DECLARE @sql nvarchar(4000)
SET @sql = ' SELECT * FROM MEMBRESIA where 1 = 1 '
if (@IDMEMBRESIA<> 0) 
SET @sql = @sql + ' and IDMEMBRESIA= ' + convert(varchar, @IDMEMBRESIA)
if (@NOMBREMEMBRESIA<> '') 
SET @sql = @sql + ' and NOMBREMEMBRESIA= ' + Quotename(@NOMBREMEMBRESIA, '''')
if (@DURACIONMESES<> 0) 
SET @sql = @sql + ' and DURACIONMESES= ' + convert(varchar, @DURACIONMESES)
if (@COSTO<> 0) 
SET @sql = @sql + ' and COSTO= ' + Quotename(@COSTO, '''')exec(@sql) 
if (@NUMSITIOS<> 0) 
SET @sql = @sql + ' and NUMSITIOS= ' + Quotename(@NUMSITIOS, '''')exec(@sql) 
GO 

 
 create PROCEDURE  DevolverTablaMEMBRESIA
as 
DECLARE @sql nvarchar(50) 
 SET @sql = ' SELECT * FROM MEMBRESIA where 1 = 1 ' 
exec(@sql)
 GO


 alter PROCEDURE[dbo].[FiltrarVISTARECIBO] 
( 
 @CLAVE int = null, 
 @FECHA Varchar(50) = null, 
 @MEMBRESIA varchar(50) = null,
 @IDMEMBRESIA int = null, 
 @DURACION int = null, 
 @COSTO DECIMAL = null, 
 @NUMSITIOS int = null, 
 @TIPOPAGO varchar(50) = null,
 @idUsuario int = null,
 @Nombre varchar(50) = null,
 @ApePat varchar(50) = null,
 @ApeMat varchar(50) = null

 ) 
AS 
SET NOCOUNT ON 
DECLARE @sql nvarchar(4000)
SET @sql = ' SELECT * FROM VISTARECIBO where 1 = 1 '
if (@CLAVE<> 0) 
SET @sql = @sql + ' and CLAVE= ' + convert(varchar, @CLAVE)
if (@FECHA<> '') 
SET @sql = @sql + ' and FECHA= ' + Quotename(@FECHA, '''')

if (@MEMBRESIA<> '') 
SET @sql = @sql + ' and MEMBRESIA= ' + Quotename(@MEMBRESIA, '''')
if (@IDMEMBRESIA<> 0) 
SET @sql = @sql + ' and IDMEMBRESIA= ' + convert(varchar, @IDMEMBRESIA)
if (@DURACION<> 0) 
SET @sql = @sql + ' and DURACION= ' + convert(varchar, @DURACION)
if (@COSTO<> 0) 
SET @sql = @sql + ' and COSTO= ' + convert(varchar, @COSTO)
if (@NUMSITIOS<> 0) 
SET @sql = @sql + ' and NUMeroSITIOS= ' + convert(varchar, @NUMSITIOS)
if (@TIPOPAGO <>0)
set @sql = @sql + 'and TipoPago = ' + CONVERT(varchar, @TIPOPAGO);
if (@idUsuario <>0)
set @sql = @sql + 'and idUsuario = ' + CONVERT(varchar, @idUsuario);
if (@Nombre<> '') 
SET @sql = @sql + ' and Nombre= ' + Quotename(@Nombre, '''')
if (@ApePat<> '') 
SET @sql = @sql + ' and ApePat= ' + Quotename(@ApePat, '''')
exec(@sql)
if (@ApeMat<> '') 
SET @sql = @sql + ' and ApePat= ' + Quotename(@ApeMat, '''')
exec(@sql)
GO 



 create VIEW VISTARECIBO (Clave, fecha , Membresia, Idmembresia, Duracion, Costo, numeroSitios, TipoPago, idUsuario, Nombre , ApePat , ApeMat  )
as
select IdRecibo , fecha, membresia.Nombremembresia, membresia.IdMembresia ,DuracionMeses, Costo , NumSitios,Recibo.idTipoPago , Recibo.Idusuario, Nombre ,ApePat, ApeMat
from (Recibo inner join membresia on Recibo.IdMembresia = membresia.IdMembresia)inner join usuario on usuario.Idusuario = Recibo.Idusuario
GO

Create PROCEDURE[dbo].[FiltrarVISTADETALLESITIO] 
( 
 @IDSITIO int = null, 
 @DESCRIPCION NVarchar(300) = null, 
 @NOMBRE Varchar(50) = null, 
 
 @Estatus varchar(30) = null,
 @DIRECCION Varchar(50) = null, 
 @LATITUD Varchar(30) = null, 
 @LONGITUD Varchar(30) = null,
 @IdEstablecimiento int  = null
 ) 
AS 
SET NOCOUNT ON 
DECLARE @sql nvarchar(4000)
SET @sql = ' SELECT * FROM DetallesSitios where 1 = 1 '
if (@IDSITIO<> 0) 
SET @sql = @sql + ' and IDSITIO= ' + convert(varchar, @IDSITIO)
if (@DESCRIPCION<> '') 
SET @sql = @sql + ' and DESCRIPCION= ' + Quotename(@DESCRIPCION, '''')
if (@NOMBRE<> '') 
SET @sql = @sql + ' and NOMBRE= ' + Quotename(@NOMBRE, '''')

if (@Estatus<> '') 
SET @sql = @sql + ' and Estatus= ' + Quotename(@Estatus, '''')

if (@DIRECCION<> '') 
SET @sql = @sql + ' and DIRECCION= ' + Quotename(@DIRECCION, '''')
if (@LATITUD<> '') 
SET @sql = @sql + ' and LATITUD= ' + Quotename(@LATITUD, '''')
if (@LONGITUD<> '') 
SET @sql = @sql + ' and LONGITUD= ' + Quotename(@LONGITUD, '''')
if (@IdEstablecimiento<> 0) 
SET @sql = @sql + ' and IdEstablecimiento= ' + convert(varchar, @IdEstablecimiento)

exec(@sql) 
GO 

 
 
Create View VistaEstablecimiento
as 
	Select u.Nombre, u.IdEstablecimiento, t.NombreTipo
		from Establecimientos u inner join TipoEstablecimiento t
		on u.IdTipoEstablecimiento = t.IdTipoEstablecimiento
go


CREATE PROCEDURE[dbo].[FiltrarVistaESTABLECIMIENTOS] 
( 
 @IDESTABLECIMIENTO int = null, 
 @NOMBRE Varchar(50) = null, 
 @TipoEstablecimiento varchar(30) = null) 
AS 
SET NOCOUNT ON 
DECLARE @sql nvarchar(4000)
SET @sql = ' SELECT * FROM VistaEstablecimiento where 1 = 1 '
if (@IDESTABLECIMIENTO<> 0) 
SET @sql = @sql + ' and IDESTABLECIMIENTO= ' + convert(varchar, @IDESTABLECIMIENTO)
if (@NOMBRE<> '') 
SET @sql = @sql + ' and NOMBRE= ' + Quotename(@NOMBRE, '''')
if (@TipoEstablecimiento<> '') 
SET @sql = @sql + ' and NombreTipo= ' + convert(varchar, @TipoEstablecimiento)


exec(@sql) 
GO 

 create View DetallesSitios 
as 
	Select  s.IdSitio , s.Nombre,  s.Descripcion,  u.Direccion, s.Estatus, s.IdEstablecimiento
		from (Sitios s inner join ubicaciones u
			on s.idSitio = u.IdSitio)
go
