DROP DATABASE Localidad3;
CREATE DATABASE Localidad3;
use Localidad3;

/*Tabla Clientes Vertical "Datos del cliente*/
create table Clientes(
nCliente smallint primary key,
NombreCli varchar(50),
EmpresaCli varchar(50),
);

/*Tabla Ventas Vertical*/
create table Ventas(
Factura int primary key,
nCliente smallint,
nVendedor smallint,
Status varchar(15),
Observación varchar(100),
FOREIGN KEY (nCliente) REFERENCES Clientes(nCliente)
);

/*Tabla Pago Horizontal "Con monto mayor a 0 y menor a 250k"*/
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

/*Datos Clientes*/
INSERT INTO Clientes( nCliente, NombreCli, EmpresaCli) VALUES 
(500,	'Ernesto Ruiz',	'La Princesa'),
(600,	'Héctor Ochoa',	'Edredón S.A.'),
(700,	'Martha Altamirano',	'Creaciones M S.A.'),
(800,	'Jorge Martínez',	'Hogar S.A.'),
(900,	'Luz Dávila',	'Cálido S.A.'),
(1000,	'Miguel Rojo',	'M&R S.A.'),
(1100,	'Adriana Campos',	'Creaciones Juanito');


/*Datos Ventas*/

INSERT INTO Ventas (Factura, nCliente, nVendedor, Status, Observación) VALUES
(10250, 600, 1010, 'Autorizado', ''),
(10251, 500, 1001, 'Autorizado', ''),
(10252, 800, 1001, 'Autorizado', ''),
(10253, 900, 1007, 'Autorizado', ''),
(10254, 1000, 1009, 'Autorizado', ''),
(10255, 700, 1003, 'Autorizado', ''),
(10256, 900, 1011, 'Autorizado', ''),
(10257, 1000, 1002, 'Autorizado', ''),
(10258, 600, 1004, 'Autorizado', ''),
(10259, 700, 1002, 'Autorizado', ''),
(10260, 500, 1008, 'Autorizado', ''),
(10261, 900, 1010, 'Denegado', 'Excede límite de Crédito'),
(10262, 800, 1005, 'Autorizado', ''),
(10263, 700, 1006, 'Autorizado', ''),
(10264, 500, 1010, 'Autorizado', ''),
(10265, 600, 1003, 'Autorizado', ''),
(10266, 600, 1008, 'Denegado', 'Excede límite de Crédito'),
(10267, 800, 1009, 'Autorizado', ''),
(10268, 1000, 1009, 'Autorizado', '');

/*Datos Pago (Monto >0 y <=250k)*/
INSERT INTO Pago(Folio,FechaPago,nCliente,Monto,FechaAbono,Status,Observación) VALUES
(23546,	'25/05/2021',	600,	5000,	'25/05/2021',	'Correcto'	,''),
(23547,	'26/05/2021',	500,	55000,	'26/05/2021',	'Correcto'	,''),
(23548,	'26/05/2021',	800,	250000,	'27/05/2021',	'Correcto'	,''),
(23549,	'27/05/2021',	900,	50000,	'27/05/2021',	'Correcto'	,''),
(23550,	'27/05/2021',	1000,	180000,	'27/05/2021',	'Correcto'	,''),
(23551,	'27/05/2021',	700,	50000,	'27/05/2021',	'Correcto'	,''),
(23552,	'28/05/2021',	900,	20000,	'28/05/2021',	'Correcto'	,''),
(23554,	'28/05/2021',	600,	5000,	'29/05/2021',	'Correcto'	,''),
(23555,	'29/05/2021',	700,	250000,	'29/05/2021',	'Correcto'	,''),
(23558,	'29/05/2021',	800,	250000,	'29/05/2021',	'Incorrecto',	'Insuficiencia de fondos'),
(23559,	'30/05/2021',	700,	250000,	'30/05/2021',	'Correcto'	,''),
(23560,	'30/05/2021',	500,	155000,	'30/05/2021',	'Correcto'	,''),
(23561,	'30/05/2021',	600,	5000,	'31/05/2021',	'Correcto'	,''),
(23563,	'31/05/2021',	800,	150000,	'31/05/2021',	'Correcto',	'');

SELECT * FROM Clientes;
SELECT * FROM Ventas;
SELECT * FROM Pago;