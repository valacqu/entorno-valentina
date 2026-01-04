SELECT V.IdVenta, V.Fecha, C.Nombre
FROM Ventas V
JOIN Clientes C ON V.IdCliente = C.IdCliente;

SELECT P.Nombre, 
       SUM(D.Cantidad * D.PrecioUnitario) AS TotalVendido
FROM DetalleVentas D
JOIN Productos P ON D.IdProducto = P.IdProducto
GROUP BY P.Nombre;

