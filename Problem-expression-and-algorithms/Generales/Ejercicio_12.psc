// En una f�brica hay 4000 empleados distribuidos en 5 secciones, se quiere determinar cu�ntos empleados hay en cada secci�n.
// El dato de entrada es el nombre de la persona y la secci�n. 
// se debe mostrar como salida "Empleados secci�n 1:"?. As� todas las secciones.
Algoritmo ContarEmpleadosPorSeccion
	Definir seccion, contador1, contador2, contador3, contador4, contador5 Como Entero
	contador1 <- 0
	contador2 <- 0
	contador3 <- 0
	contador4 <- 0
	contador5 <- 0
	Definir nombre Como Cadena
	// Leer el nombre de la persona y la secci�n hasta que se indique que termin� la entrada
	Repetir
		Escribir 'Ingrese el nombre de la persona:'
		Leer nombre
		Si nombre<>'fin' Entonces
			Escribir 'Ingrese la secci�n de la persona:'
			Leer seccion
			// Incrementar el contador correspondiente seg�n la secci�n ingresada
			Seg�n seccion Hacer
				1:
					contador1 <- contador1+1
				2:
					contador2 <- contador2+1
				3:
					contador3 <- contador3+1
				4:
					contador4 <- contador4+1
				5:
					contador5 <- contador5+1
				Otro:
					Escribir 'Secci�n no v�lida. Por favor, ingrese un n�mero de secci�n del 1 al 5.'
			FinSeg�n
		FinSi
	Hasta Que nombre='fin'
	// Mostrar la cantidad de empleados por cada secci�n
	Escribir 'Empleados secci�n 1:', contador1
	Escribir 'Empleados secci�n 2:', contador2
	Escribir 'Empleados secci�n 3:', contador3
	Escribir 'Empleados secci�n 4:', contador4
	Escribir 'Empleados secci�n 5:', contador5
FinAlgoritmo
