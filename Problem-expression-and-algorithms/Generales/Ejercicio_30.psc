// Ingresar una serie indeterminada de n�meros. Cuando se ingrese cero (0), 
// se detendr� el ingreso de n�meros y se deber� informar el promedio de todos los n�meros ingresados y cu�l fue el mayor valor de la serie.
Algoritmo CalcularPromedioYMaximo
	Definir numero, suma, contador, promedio, maximo Como Real
	// Inicializar variables
	suma <- 0
	contador <- 0
	maximo <- -Inf
	// Ingresar n�meros hasta que se ingrese cero
	Escribir 'Ingrese una serie de n�meros. Ingrese 0 para terminar.' // Inicializar el m�ximo con un valor muy peque�o
	Leer numero
	Mientras numero<>0 Hacer
		// Actualizar la suma y el contador
		suma <- suma+numero
		contador <- contador+1
		// Actualizar el m�ximo si es necesario
		Si numero>maximo Entonces
			maximo <- numero
		FinSi
		// Leer el siguiente n�mero
		Leer numero
	FinMientras
	// Calcular el promedio
	Si contador>0 Entonces
		promedio <- suma/contador
	SiNo
		promedio <- 0
	FinSi // Evitar divisi�n por cero si no se ingresaron n�meros
	// Mostrar resultados
	Escribir 'El promedio de los n�meros ingresados es:', promedio
	Escribir 'El mayor valor de la serie es:', maximo
FinAlgoritmo
