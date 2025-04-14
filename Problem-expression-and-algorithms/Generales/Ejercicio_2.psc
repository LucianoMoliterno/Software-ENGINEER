// Dise�ar un algoritmo que lea e imprima una serie de n�meros enteros distintos de cero. 
// El algoritmo termina con el ingreso de 0, y debe mostrar la suma de los mismos.
Algoritmo SumaNumeros
	// Declarar variables
	Definir numero, suma Como Entero
	suma <- 0
	// Leer e imprimir los n�meros enteros distintos de cero
	Repetir
		Escribir 'Ingrese un n�mero entero (ingrese 0 para terminar):'
		Leer numero
		Si numero<>0 Entonces
			suma <- suma+numero
			Escribir 'N�mero ingresado:', numero
		FinSi
	Hasta Que numero=0
	// Mostrar la suma de los n�meros ingresados
	Escribir 'La suma de los n�meros ingresados es:', suma
FinAlgoritmo
