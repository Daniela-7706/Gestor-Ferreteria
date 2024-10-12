
CREATE DATABASE DBGESTOR_FERRETERIA

USE DBGESTOR_FERRETERIA

CREATE TABLE ROL(
IdRol int primary key identity,
Descripcion varchar(50),
FechaRegistro datetime default getdate()
)

CREATE TABLE PERMISO (
IdPermiso int primary key identity,
IdRol int references ROL(IdRol),
NombreMenu varchar(100),
FechaRegistro datetime default getdate()
)

CREATE TABLE PROVEEDOR (
IdProveedor int primary key identity,
Documento varchar(50),
Correo varchar(50),
Telefono varchar(50),
FechaRegistro datetime default getdate()
)

CREATE TABLE USUARIO (
IdUsuario int primary key identity,
Documento varchar(50),
NombreCompleto varchar(50),
Correo varchar(50),
Contraseña varchar(50),
IdRol int references ROL(IdRol),
Telefono varchar(50),
FechaRegistro datetime default getdate()
)

CREATE TABLE PRODUCTO (
IdProducto int primary key identity,
Codigo varchar(50),
Nombre varchar(50),
UnidadProducto varchar(50),
CantidadDisponible int not null default 0,
Precio decimal(10,2),
Disponible bit,
)

CREATE TABLE ORDENCOMPRA (
IdOrdenCompra int primary key identity,
IdUsuario int references USUARIO(IdUsuario),
IdProveedor int references PROVEEDOR(IdProveedor),
CodOrdenCompra varchar(50),
Total decimal(10,2),
FechaRegistro datetime default getdate()
)

CREATE TABLE DETALLE_ORDENCOMPRA (
IdDetalleOrdenCompra int primary key identity,
IdCompra int references ORDENCOMPRA(IdOrdenCompra),
IdProducto int references PRODUCTO(IdProducto),
Precio decimal(10,2),
Cantidad int,
SubTotal decimal(10,2),
FechaRegistro datetime default getdate()
)

CREATE TABLE FACTURA (
IdFactura int primary key identity,
IdUsuario int references USUARIO(IdUsuario),
CodFactura varchar(50),
NombreCliente  varchar(50),
DocumentoCliente varchar(50),
Total decimal(10,2),
Cambio decimal(10,2),
FechaRegistro datetime default getdate()
)

CREATE TABLE DETALLE_FACTURA (
IdDetalleFactura int primary key identity,
IdFactura int references FACTURA(IdFactura),
IdProducto int references PRODUCTO(IdProducto),
Precio decimal(10,2) default 0,
Cantidad int,
SubTotal decimal(10,2),
FechaRegistro datetime default getdate()
)

