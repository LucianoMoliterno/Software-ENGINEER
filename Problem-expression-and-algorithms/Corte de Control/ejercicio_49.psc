//En una f�brica de zapatos, tienen varias m�quinas que producen distintos modelos de zapatos, tiene el siguiente archivo de producci�n, previamente ordenado:
	//Tama�o/Cantidad
	//La finalizaci�n est� determinada por el fin del archivo EOF.
	//Se debe tener en cuenta que pueden existir m�s de una cantidad por tama�o (varios registros que dependen de que m�quina lo fabric�).
//Se necesita (calcular y mostrar):
	//*El promedio general de cada tama�o.
	//*Cuantos tama�os tienen una cantidad total mayor a 300.
	//*Cu�l ha sido el tama�o con menor fabricaci�n.
Algoritmo FabricaZapatos
	Definir TAMANO, Cantidad, Total, MenorCantidad Como Entero
	Definir Promedio, PromedioGeneral, MenorFabricacion Como Real
	Definir Contador, ContadorMas300 Como Entero
	PromedioGeneral <- 0
	Contador <- 0
	ContadorMas300 <- 0
	MenorCantidad <- 9999999
	Leer TAMANO
	Mientras TAMANO<>0 Hacer
		Leer Cantidad
		Total <- Cantidad
		Contador <- Contador+1
		Mientras TAMANO<>0 Hacer
			Total <- Total+Cantidad
			Contador <- Contador+1
			Leer Cantidad
		FinMientras
		Promedio <- Total/Contador
		PromedioGeneral <- PromedioGeneral+Promedio
		Si Total>300 Entonces
			ContadorMas300 <- ContadorMas300+1
		FinSi
		Si Total<MenorCantidad Entonces
			MenorCantidad <- Total
			MenorFabricacion <- TAMANO
		FinSi
		Contador <- 0
		Leer TAMANO
	FinMientras
	PromedioGeneral <- PromedioGeneral/Contador
	Escribir 'El promedio general de cada tama�o es:', PromedioGeneral
	Escribir 'La cantidad de tama�os con una cantidad total mayor a 300 es:', ContadorMas300
	Escribir 'El tama�o con menor fabricaci�n es:', MenorFabricacion
FinAlgoritmo
