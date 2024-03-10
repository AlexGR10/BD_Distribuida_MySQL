DROP DATABASE Localidad1;
CREATE DATABASE Localidad1;
use Localidad1;

/*Tabla Vendedores, Vertical "Datos personales del Vendedor"*/
create table Vendedores(
nVendedor smallint primary key,
Nombre varchar(50),
Domicilio varchar(75),
Edad tinyint
);

/*Tabla Clientes, Vertical "Datos de credito del cliente"*/
create table Clientes(
nCliente smallint primary key,
FechaIngreso Datetime,
LimCredito money,
Saldo money
);
set dateformat dmy;

/*Tabla Ventas Vertical*/
create table Ventas(
Factura int primary key,
FechaVta Datetime,
nVendedor smallint,
Importe money,
FOREIGN KEY (nVendedor) REFERENCES Vendedores(nVendedor),
);
set dateformat dmy;

/*Tabla Pago Horizontal "Con monto mayor a 250,000"*/
create table Pago(
Folio int primary key,
FechaPago Datetime,
nCliente smallint,
Monto money,
FechaAbono Datetime,
Status varchar(15),
Observación varchar(100),
FOREIGN KEY (nCliente) REFERENCES Clientes(nCliente)
);
set dateformat dmy;

/*Datos Vendedores*/
INSERT INTO Vendedores (nVendedor, Nombre,Domicilio, Edad) VALUES
(1001,	'Manuel Ramos',	'Apurimac #210',	30),
(1002,	'Roberto Sosa',	'Ayacucho #300',	28),
(1003,	'Raúl Torres',	'Chancay #52',	40),
(1004,	'Rodrigo Vázquez',	'Chiclayo #250',33),
(1005,	'Ricardo Ramos', 'Chincha #346',	42),
(1006,	'Antonio Hernández',	'Chorrillos #500',37),
(1007,	'Víctor López',	'Agustino #12',	39),
(1008,	'Carlos Pérez',	'Huancayo #455',	45),
(1009,	'Raúl Ramírez',	'Libertad #20',	33),
(1010,	'David Fernández',	'Molina #10',	44),
(1011,	'Gerardo Jiménez',	'Victoria #640',	32),
(1012,	'Silvia Navarro',	'Lima #80',	36);


/*Datos Clientes*/
INSERT INTO Clientes (nCliente, FechaIngreso, LimCredito, Saldo) VALUES
(500,	20/05/2020,	2000000,	500000),
(600,	03/15/2020,	1500000,	1185000),
(700,	10/05/2019,	2500000,	400000),
(800,	21/08/2018,	1000000,	550000),
(900,	05/09/2019,	1000000,	680000),
(1000,	25/10/2020,	1200000,		0),
(1100,	19/06/2021,	500000,			0);


/*Datos Ventas*/
INSERT INTO Ventas (Factura, FechaVta, nVendedor, Importe )VALUES
(10250,	'23/05/2021',	1010,	350000),
(10251,	'23/05/2021',	1001,	105000),
(10252,	'23/05/2021',	1001,	450000),
(10253,	'24/05/2021',	1007,	300000),
(10254,	'24/05/2021',	1009,	180000),
(10255,	'25/05/2021',	1003,	100000),
(10256,	'26/05/2021',	1011,	450000),
(10257,	'26/05/2021',	1002,	500000),
(10258,	'26/05/2021',	1004,	600000),
(10259,	'26/05/2021',	1002,	500000),
(10260,	'27/05/2021',	1008,	800000),
(10261,	'27/05/2021',	1010,	450000),
(10262,	'27/05/2021',	1005,	250000),
(10263,	'27/05/2021',	1006,	350000),
(10264,	'28/05/2021',	1010,	205000),
(10265,	'28/05/2021',	1003,	250000),
(10266,	'28/05/2021',	1008,	320000),
(10267,	'29/05/2021',	1009,	250000),
(10268,	'30/05/2021',	1009,	500000);


SELECT * FROM Vendedores;
SELECT * FROM Ventas;
SELECT * FROM CLientes;
SELECT * FROM Pago;