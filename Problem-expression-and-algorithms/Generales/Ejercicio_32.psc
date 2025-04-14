// Ingresar una serie indeterminada de n�meros enteros. 
// Cuando se ingrese cero (0), se detendr� el ingreso de n�meros y se deber� informar el promedio de todos los n�meros ingresados, 
// cu�l fue el mayor valor de la serie y el menor con su posici�n.
Algoritmo CalcularPromedioMayorMenor
	Definir numero, suma, cantidad, mayor, menor, posicionMenor Como Entero
	Definir promedio Como Real
	// Inicializar variables
	suma <- 0
	cantidad <- 0
	mayor <- -9999999
	menor <- 9999999 // Inicializar el mayor con un valor muy peque�o
	// Ingresar una serie indeterminada de n�meros
	Escribir 'Ingrese una serie de n�meros enteros (ingrese 0 para terminar):' // Inicializar el menor con un valor muy grande
	Leer numero
	Mientras numero<>0 Hacer
		// Actualizar la suma y la cantidad de n�meros ingresados
		suma <- suma+numero
		cantidad <- cantidad+1
		// Verificar si el n�mero es mayor que el valor actual de 'mayor'
		Si numero>mayor Entonces
			mayor <- numero
		FinSi
		// Verificar si el n�mero es menor que el valor actual de 'menor'
		Si numero<menor Entonces
			menor <- numero
			posicionMenor <- cantidad
		FinSi // Almacenar la posici�n del menor n�mero
		// Leer el pr�ximo n�mero
		Escribir 'Ingrese otro n�mero (ingrese 0 para terminar):'
		Leer numero
	FinMientras
	// Calcular el promedio de los n�meros ingresados
	Si cantidad>0 Entonces
		promedio <- suma/cantidad
	SiNo
		promedio <- 0
	FinSi // Evitar divisi�n por cero si no se ingresaron n�meros
	// Mostrar los resultados
	Escribir 'Promedio de los n�meros ingresados:', promedio
	Escribir 'El mayor valor de la serie es:', mayor
	Escribir 'El menor valor de la serie es:', menor, 'en la posici�n:', posicionMenor
FinAlgoritmo
