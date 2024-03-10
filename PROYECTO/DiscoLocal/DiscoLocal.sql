CREATE DATABASE DiscoLocal;
Use DiscoLocal;

DROP DATABASE Localidad1;
DROP DATABASE Localidad2;
DROP DATABASE Localidad3;

/*1.-Liste las empresas de los clientes que el límite de crédito es entre 
   800,000 y 1,200,000 ordenado descendentemente en base al límite de 
   credito.*/

   SELECT l1.nCliente, l3.NombreCli, l3.EmpresaCli, l1.LimCredito
	FROM Localidad1.dbo.Clientes as l1, Localidad3.dbo.Clientes as l3
	WHERE l1.LimCredito BETWEEN 800000 AND 1200000 
	AND l1.nCliente = l3.nCliente
	ORDER BY l1.LimCredito DESC;


/*2.-Liste el número de factura, número y nombre del vendedor, número
   y nombre del cliente y el importe de los 10 mayores importes ordenado
   ascendentemente en base al importe.*/

   SELECT  TOP 10 lv1.Factura, l1.nVendedor, l1.Nombre,  lv1.Importe
	FROM Localidad1.dbo.Vendedores as l1, Localidad1.dbo.Ventas as lv1, Localidad3.dbo.Clientes as l3, Localidad3.dbo.Ventas as lv3
	WHERE l1.nVendedor = lv1.nVendedor
	ORDER BY l1.nVendedor ASC;

	SELECT TOP 10 l1.Factura, l2.nVendedor, l2.Nombre, l3.nCliente, l3.NombreCli, l1.Importe
	FROM Localidad1.dbo.Ventas as l1, Localidad3.dbo.Ventas as l4
	INNER JOIN Localidad1.dbo.Vendedores as l2 ON l1.nVendedor = l2.nVendedor
	INNER JOIN Localidad3.dbo.Clientes as l3 ON l3.nCliente = l
	ORDER BY l1.Importe ASC;

/*3.-Liste el número y nombre del vendedor, así como el número de ventas
   realizadas y su importe total ordenado descendentemente en base al 
   importe.*/

	SELECT l1.nVendedor, l1.Nombre, COUNT(l2.Factura) AS NumVentas, SUM(l2.Importe) AS TotalImporte
	FROM Localidad1.dbo.Vendedores as l1
	INNER JOIN Localidad1.dbo.Ventas as l2 ON l1.nVendedor = l2.nVendedor
	GROUP BY l1.nVendedor, l1.Nombre
	ORDER BY TotalImporte DESC;

	/*Liste los nombres de los clientes que no han realizado ningún pago*/
	SELECT L3.nCliente, l3.NombreCli
	FROM Localidad3.dbo.Clientes AS l3
	LEFT JOIN Localidad3.dbo.Pago AS p ON l3.nCliente = p.nCliente
	WHERE p.nCliente IS NULL;



	/*Liste las empresas de los clientes que el límite de crédito es entre 
   800,000 y 1,200,000 ordenado descendentemente en base al límite de 
   credito.*/

   SELECT l1.nCliente, l3.NombreCli, l3.EmpresaCli, l1.LimCredito
	FROM Localidad1.dbo.Clientes as l1, Localidad3.dbo.Clientes as l3
	WHERE l1.LimCredito BETWEEN 800000 AND 1200000 
	AND l1.nCliente = l3.nCliente
	ORDER BY l1.LimCredito DESC;


	/*Liste los registros de pagos que el monto sea mayor al promedio general ordenado descendentemente en base al monto.*/
	SELECT * FROM Localidad3.dbo.Pago
	WHERE Monto > (SELECT AVG(Monto)
    FROM Localidad3.dbo.Pago)
	ORDER BY Monto DESC;


