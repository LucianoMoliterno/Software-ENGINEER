// Dise�ar un algoritmo que imprima y sume la serie de n�meros 3,6,9,12?,99.
Algoritmo SerieNumeros
	Definir numero, suma Como Entero
	suma <- 0
	// Imprimir y sumar la serie de n�meros
	Para numero<-3 Hasta 99 Con Paso 3 Hacer
		Escribir 'N�mero:', numero
		suma <- suma+numero
	FinPara
	// Mostrar la suma total de la serie
	Escribir 'La suma total de la serie de n�meros es:', suma
FinAlgoritmo
