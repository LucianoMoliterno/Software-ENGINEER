% Productos y sus componentes (producto, precio, lista de ingredientes y cantidades necesarias)
producto(pastel_chocolate, 2000, [(harina, 2), (azucar, 1), (chocolate, 3), (huevo, 2), (manteca, 1)]).
producto(pastel_vainilla, 1800, [(harina, 2), (azucar, 1), (vainilla, 2), (huevo, 2), (manteca, 1)]).
producto(tarta_frutilla, 2200, [(harina, 2), (azucar, 2), (frutilla, 5), (crema, 2), (manteca, 1)]).
producto(tarta_manzana, 2100, [(harina, 2), (azucar, 2), (manzana, 4), (manteca, 2), (canela, 1)]).
producto(cupcake_chocolate, 500, [(harina, 1), (azucar, 1), (chocolate, 2), (huevo, 1), (manteca, 1)]).
producto(cupcake_vainilla, 450, [(harina, 1), (azucar, 1), (vainilla, 2), (huevo, 1), (manteca, 1)]).
producto(alfajor_dulce, 300, [(harina, 1), (azucar, 1), (dulce_de_leche, 2), (chocolate, 1), (manteca, 1)]).
producto(alfajor_maicena, 280, [(harina, 1), (azucar, 1), (dulce_de_leche, 2), (coco, 1), (manteca, 1)]).
producto(budin_naranja, 1500, [(harina, 2), (azucar, 1), (naranja, 2), (huevo, 3), (manteca, 2)]).
producto(budin_limon, 1450, [(harina, 2), (azucar, 1), (limon, 2), (huevo, 3), (manteca, 2)]).

% Stock de productos (producto, cantidad disponible)
stock(pastel_chocolate, 10).
stock(pastel_vainilla, 8).
stock(tarta_frutilla, 5).
stock(tarta_manzana, 6).
stock(cupcake_chocolate, 15).
stock(cupcake_vainilla, 12).
stock(alfajor_dulce, 20).
stock(alfajor_maicena, 18).
stock(budin_naranja, 7).
stock(budin_limon, 9).

% Clientes (nombre, contacto)
cliente(juan, "juan@mail.com").
cliente(maria, "maria@mail.com").
cliente(carlos, "carlos@mail.com").
cliente(laura, "laura@mail.com").

% Ventas (fecha, cliente, producto, cantidad)
venta('2024-02-10', juan, pastel_chocolate, 2).
venta('2024-02-12', maria, tarta_frutilla, 1).
venta('2024-02-15', carlos, cupcake_vainilla, 6).
venta('2024-02-17', laura, budin_limon, 3).
venta('2024-02-18', juan, alfajor_dulce, 4).
venta('2024-02-20', maria, pastel_vainilla, 2).
