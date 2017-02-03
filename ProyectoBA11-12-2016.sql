/*
 * ER/Studio 8.0 SQL Code Generation
 * Company :      joseph
 * Project :      ModeloER.DM1
 * Author :       joseph
 *
 * Date Created : Sunday, December 11, 2016 07:46:33
 * Target DBMS : Microsoft SQL Server 2008
 */

/* 
 * TABLE: Usuario 
 */
  --DROP DATABASE ProyectoBA

 Create database ProyectoBA
 go
 use ProyectoBA
 go
/*
 * ER/Studio 8.0 SQL Code Generation
 * Company :      joseph
 * Project :      ModeloER.DM1
 * Author :       joseph
 *
 * Date Created : Sunday, December 11, 2016 08:06:52
 * Target DBMS : Microsoft SQL Server 2008
 */

/* 
 * TABLE: Administra 
 */

CREATE TABLE Administra(
    IdAdministra    int    IDENTITY(1,1),
    IdUsuario       int    NOT NULL,
    IdSitio         int    NOT NULL,
    CONSTRAINT PK5 PRIMARY KEY NONCLUSTERED (IdAdministra)
)
go



IF OBJECT_ID('Administra') IS NOT NULL
    PRINT '<<< CREATED TABLE Administra >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Administra >>>'
go

/* 
 * TABLE: Establecimientos 
 */

CREATE TABLE Establecimientos(
    IdEstablecimiento        int            IDENTITY(1,1),
    Nombre                   varchar(50)    NOT NULL,
    IdTipoEstablecimiento    int            NULL,
    CONSTRAINT PK11 PRIMARY KEY NONCLUSTERED (IdEstablecimiento)
)
go



IF OBJECT_ID('Establecimientos') IS NOT NULL
    PRINT '<<< CREATED TABLE Establecimientos >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Establecimientos >>>'
go

/* 
 * TABLE: Fotos 
 */

CREATE TABLE Fotos(
    IdFoto     int              IDENTITY(1,1),
    Foto       varchar(50)    NOT NULL,
    IdSitio    int              NOT NULL,
    CONSTRAINT PK7 PRIMARY KEY NONCLUSTERED (IdFoto)
)
go



IF OBJECT_ID('Fotos') IS NOT NULL
    PRINT '<<< CREATED TABLE Fotos >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Fotos >>>'
go

/* 
 * TABLE: membresia 
 */

CREATE TABLE membresia(
    IdMembresia        int               IDENTITY(1,1),
    NombreMembresia    varchar(25)       NOT NULL,
    DuracionMeses      int               NOT NULL,
    Costo              decimal(10, 2)    NOT NULL,
    NumSitios          int               NOT NULL,
    CONSTRAINT PK13 PRIMARY KEY NONCLUSTERED (IdMembresia)
)
go



IF OBJECT_ID('membresia') IS NOT NULL
    PRINT '<<< CREATED TABLE membresia >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE membresia >>>'
go

/* 
 * TABLE: Recibo 
 */

CREATE TABLE Recibo(
    IdRecibo       int     IDENTITY(1,1),
    Fecha          date    NOT NULL,
    IdUsuario      int     NULL,
    IdMembresia    int     NOT NULL,
    IdTipoPago     int     NOT NULL,
    CONSTRAINT PK4 PRIMARY KEY NONCLUSTERED (IdRecibo)
)
go



IF OBJECT_ID('Recibo') IS NOT NULL
    PRINT '<<< CREATED TABLE Recibo >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Recibo >>>'
go

/* 
 * TABLE: Sitios 
 */

CREATE TABLE Sitios(
    IdSitio              int              IDENTITY(1,1),
    Descripcion          nvarchar(300)    NULL,
    Nombre               varchar(50)      NOT NULL,
    Estatus              varchar(10)      NOT NULL,
    IdEstablecimiento    int              NULL,
    CONSTRAINT PK6 PRIMARY KEY NONCLUSTERED (IdSitio)
)
go



IF OBJECT_ID('Sitios') IS NOT NULL
    PRINT '<<< CREATED TABLE Sitios >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Sitios >>>'
go

/* 
 * TABLE: tarjetaCredito 
 */

CREATE TABLE tarjetaCredito(
    IdTarjeta     int            IDENTITY(1,1),
    NumTarjeta    varchar(25)    NOT NULL,
    cvv           varchar(3)     NOT NULL,
    anio          varchar(30)    NOT NULL,
    mes           char(25)       NULL,
    IdUsuario     int            NOT NULL,
    CONSTRAINT PK15 PRIMARY KEY NONCLUSTERED (IdTarjeta)
)
go



IF OBJECT_ID('tarjetaCredito') IS NOT NULL
    PRINT '<<< CREATED TABLE tarjetaCredito >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tarjetaCredito >>>'
go

/* 
 * TABLE: TipoEstablecimiento 
 */

CREATE TABLE TipoEstablecimiento(
    IdTipoEstablecimiento    int            IDENTITY(1,1),
    NombreTipo               varchar(50)    NOT NULL,
    CONSTRAINT PK12 PRIMARY KEY NONCLUSTERED (IdTipoEstablecimiento)
)
go



IF OBJECT_ID('TipoEstablecimiento') IS NOT NULL
    PRINT '<<< CREATED TABLE TipoEstablecimiento >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE TipoEstablecimiento >>>'
go

/* 
 * TABLE: TipoPago 
 */

CREATE TABLE TipoPago(
    IdTipoPago    int            IDENTITY(1,1),
    Nombre        varchar(25)    NOT NULL,
    CONSTRAINT PK3 PRIMARY KEY NONCLUSTERED (IdTipoPago)
)
go



IF OBJECT_ID('TipoPago') IS NOT NULL
    PRINT '<<< CREATED TABLE TipoPago >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE TipoPago >>>'
go

/* 
 * TABLE: ubicaciones 
 */

CREATE TABLE ubicaciones(
    IdUbicacion    int            IDENTITY(1,1),
    Direccion      varchar(50)    NOT NULL,
    Latitud        varchar(50)    NOT NULL,
    Longitud       varchar(50)    NOT NULL,
    IdSitio        int            NOT NULL,
    CONSTRAINT PK8 PRIMARY KEY NONCLUSTERED (IdUbicacion)
)
go



IF OBJECT_ID('ubicaciones') IS NOT NULL
    PRINT '<<< CREATED TABLE ubicaciones >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE ubicaciones >>>'
go

/* 
 * TABLE: Usuario 
 */

CREATE TABLE Usuario(
    IdUsuario      int            IDENTITY(1,1),
    Nombre         varchar(50)    NOT NULL,
    ApePat         varchar(50)    NOT NULL,
    ApeMat         varchar(50)    NOT NULL,
    Contrasena     varchar(25)    NOT NULL,
    Usuario        varchar(50)    NOT NULL,
    IdMembresia    int            NOT NULL,
    IdTipoPago     int            NOT NULL,
	FotoUs        varchar(50)     NULL ,
	TipoUS			int			  NOT NULL
    CONSTRAINT PK1 PRIMARY KEY NONCLUSTERED (IdUsuario)
)
go


IF OBJECT_ID('Usuario') IS NOT NULL
    PRINT '<<< CREATED TABLE Usuario >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Usuario >>>'
go

/* 
 * INDEX: Ref18 
 */

CREATE INDEX Ref18 ON Administra(IdUsuario)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Administra') AND name='Ref18')
    PRINT '<<< CREATED INDEX Administra.Ref18 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Administra.Ref18 >>>'
go

/* 
 * INDEX: Ref69 
 */

CREATE INDEX Ref69 ON Administra(IdSitio)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Administra') AND name='Ref69')
    PRINT '<<< CREATED INDEX Administra.Ref69 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Administra.Ref69 >>>'
go

/* 
 * INDEX: Ref1215 
 */

CREATE INDEX Ref1215 ON Establecimientos(IdTipoEstablecimiento)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Establecimientos') AND name='Ref1215')
    PRINT '<<< CREATED INDEX Establecimientos.Ref1215 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Establecimientos.Ref1215 >>>'
go

/* 
 * INDEX: Ref647 
 */

CREATE INDEX Ref647 ON Fotos(IdSitio)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Fotos') AND name='Ref647')
    PRINT '<<< CREATED INDEX Fotos.Ref647 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Fotos.Ref647 >>>'
go

/* 
 * INDEX: Ref14 
 */

CREATE INDEX Ref14 ON Recibo(IdUsuario)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Recibo') AND name='Ref14')
    PRINT '<<< CREATED INDEX Recibo.Ref14 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Recibo.Ref14 >>>'
go

/* 
 * INDEX: Ref1113 
 */

CREATE INDEX Ref1113 ON Sitios(IdEstablecimiento)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Sitios') AND name='Ref1113')
    PRINT '<<< CREATED INDEX Sitios.Ref1113 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Sitios.Ref1113 >>>'
go

/* 
 * INDEX: Ref149 
 */

CREATE INDEX Ref149 ON tarjetaCredito(IdUsuario)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('tarjetaCredito') AND name='Ref149')
    PRINT '<<< CREATED INDEX tarjetaCredito.Ref149 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tarjetaCredito.Ref149 >>>'
go

/* 
 * INDEX: Ref648 
 */

CREATE INDEX Ref648 ON ubicaciones(IdSitio)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('ubicaciones') AND name='Ref648')
    PRINT '<<< CREATED INDEX ubicaciones.Ref648 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX ubicaciones.Ref648 >>>'
go

/* 
 * TABLE: Administra 
 */

ALTER TABLE Administra ADD CONSTRAINT RefUsuario8 
    FOREIGN KEY (IdUsuario)
    REFERENCES Usuario(IdUsuario)
go

ALTER TABLE Administra ADD CONSTRAINT RefSitios9 
    FOREIGN KEY (IdSitio)
    REFERENCES Sitios(IdSitio)
go


/* 
 * TABLE: Establecimientos 
 */

ALTER TABLE Establecimientos ADD CONSTRAINT RefTipoEstablecimiento15 
    FOREIGN KEY (IdTipoEstablecimiento)
    REFERENCES TipoEstablecimiento(IdTipoEstablecimiento)
go


/* 
 * TABLE: Fotos 
 */

ALTER TABLE Fotos ADD CONSTRAINT RefSitios47 
    FOREIGN KEY (IdSitio)
    REFERENCES Sitios(IdSitio)
go


/* 
 * TABLE: Recibo 
 */

ALTER TABLE Recibo ADD CONSTRAINT RefUsuario4 
    FOREIGN KEY (IdUsuario)
    REFERENCES Usuario(IdUsuario)
go

ALTER TABLE Recibo ADD CONSTRAINT Refmembresia58 
    FOREIGN KEY (IdMembresia)
    REFERENCES membresia(IdMembresia)
go

ALTER TABLE Recibo ADD CONSTRAINT RefTipoPago60 
    FOREIGN KEY (IdTipoPago)
    REFERENCES TipoPago(IdTipoPago)
go


/* 
 * TABLE: Sitios 
 */

ALTER TABLE Sitios ADD CONSTRAINT RefEstablecimientos13 
    FOREIGN KEY (IdEstablecimiento)
    REFERENCES Establecimientos(IdEstablecimiento)
go


/* 
 * TABLE: tarjetaCredito 
 */

ALTER TABLE tarjetaCredito ADD CONSTRAINT RefUsuario49 
    FOREIGN KEY (IdUsuario)
    REFERENCES Usuario(IdUsuario)
go


/* 
 * TABLE: ubicaciones 
 */

ALTER TABLE ubicaciones ADD CONSTRAINT RefSitios48 
    FOREIGN KEY (IdSitio)
    REFERENCES Sitios(IdSitio)
go


/* 
 * TABLE: Usuario 
 */

ALTER TABLE Usuario ADD CONSTRAINT Refmembresia52 
    FOREIGN KEY (IdMembresia)
    REFERENCES membresia(IdMembresia)
go

ALTER TABLE Usuario ADD CONSTRAINT RefTipoPago54 
    FOREIGN KEY (IdTipoPago)
    REFERENCES TipoPago(IdTipoPago)
go


