//Una empresa tiene cuatro dep�sitos, donde se almacenan los art�culos fabricados, los cuales son diez, que son vendidos por sus doce jefes de ventas.
//Por cada venta realizada se registra la siguiente informaci�n:
	//N� de Dep�sito N� de Art�culo N� de Vendedor Valor de la Venta
	//Pueden existir varias ventas del mismo dep�sito, del mismo art�culo, del mismo vendedor, y
	//los datos ingresan respetando el formato establecido y pueden llegar en cualquier orden.
	//El final de ingreso de datos se produce con el n�mero de dep�sito 5.
//Se pide:
	//*Cu�l fue el valor de venta m�ximo, indicando el dep�sito, el art�culo y el vendedor correspondiente.
	//*Realizar e imprimir una tabla con las ventas totales de cada dep�sito ordenada de forma decreciente, indicando el n�mero de dep�sito y la venta total.
Algoritmo CalcularVentas
	// Definir un diccionario para almacenar las ventas totales por dep�sito
	Definir ventasPorDeposito Como Real
	Dimensionar ventasPorDeposito(4)
	// Inicializar las ventas totales de cada dep�sito a cero
	Para deposito<-1 Hasta 4 Hacer // Hay 4 dep�sitos
		ventasPorDeposito[deposito] <- 0
	FinPara
	// Inicializar variables para el valor de venta m�ximo
	valorVentaMaximo <- 0
	depositoVentaMaximo <- 0
	articuloVentaMaximo <- 0
	vendedorVentaMaximo <- 0
	// Leer e ingresar los datos hasta que se ingrese el n�mero de dep�sito 5
	Escribir 'Ingrese el n�mero de dep�sito, n�mero de art�culo, n�mero de vendedor y valor de la venta (5 para finalizar):'
	Leer deposito, articulo, vendedor, valorVenta
	Mientras deposito<>5 Hacer
		// Actualizar las ventas totales del dep�sito
		ventasPorDeposito[deposito] <- ventasPorDeposito[deposito]+valorVenta
		// Verificar si esta venta es la de mayor valor
		Si valorVenta>valorVentaMaximo Entonces
			valorVentaMaximo <- valorVenta
			depositoVentaMaximo <- deposito
			articuloVentaMaximo <- articulo
			vendedorVentaMaximo <- vendedor
		FinSi
		// Leer el siguiente conjunto de datos
		Escribir 'Ingrese el n�mero de dep�sito, n�mero de art�culo, n�mero de vendedor y valor de la venta (5 para finalizar):'
		Leer deposito, articulo, vendedor, valorVenta
	FinMientras
	// Mostrar el valor de venta m�ximo
	Escribir 'El valor de venta m�ximo fue de ', valorVentaMaximo, ' del dep�sito ', depositoVentaMaximo, ', art�culo ', articuloVentaMaximo, ' y vendedor ', vendedorVentaMaximo
	// Mostrar la tabla de ventas totales por dep�sito ordenada de forma decreciente
	Escribir 'Tabla de ventas totales por dep�sito:'
	Para deposito<-1 Hasta 4 Hacer
		Escribir 'Dep�sito ', deposito, ': ', ventasPorDeposito[deposito], ' ventas'
	FinPara
FinAlgoritmo
