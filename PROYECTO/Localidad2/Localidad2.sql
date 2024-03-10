DROP DATABASE Localidad2;
CREATE DATABASE Localidad2;
use Localidad2;

/*Tabla Vendedores 2da pt. Vertical*/
CREATE TABLE Vendedores( 
nVendedor SMALLINT PRIMARY KEY,
FechaContrato Datetime,
VentasRealizadas MONEY
);
set dateformat dmy;


/*Datos Vendedores*/
INSERT INTO Vendedores(nVendedor, FechaContrato, VentasRealizadas) VALUES
(1001,	16/02/2020,	 555000),
(1002,	01/06/2019, 1000000),
(1003,	01/01/12020, 350000),
(1004,	16/07/2019,	600000),
(1005,	01/03/2018,	250000),
(1006,	01/05/2018,	350000),
(1007,	16/08/2019,	300000),
(1008,	16/09/2020,	800000),
(1009,	01/02/2021,	930000),
(1010,	01/10/2017,	555000),
(1011,	01/09/2018, 450000),
(1012,	16/10/2019,	0);

DROP TABLE Vendedores;

SELECT * FROM Vendedores;
