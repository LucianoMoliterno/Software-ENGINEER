// Dada una serie de 16 n�meros, todos distintos de cero, informar cu�ntos son pares y el promedio de los impares.
Algoritmo ContarParesYPromedioImpares
	Definir numeros, contadorPares, sumaImpares, cantidadImpares Como Entero
	Definir promedioImpares Como Real
	// Leer los 16 n�meros distintos de cero
	numeros <- 16
	contadorPares <- 0
	sumaImpares <- 0
	cantidadImpares <- 0
	Para i<-1 Hasta 16 Hacer
		Escribir 'Ingrese el n�mero ', i, ':'
		Leer numeros
		Si numeros<>0 Entonces
			Si numeros MOD 2=0 Entonces
				contadorPares <- contadorPares+1
			SiNo
				sumaImpares <- sumaImpares+numeros
				cantidadImpares <- cantidadImpares+1
			FinSi
		FinSi
	FinPara
	// Calcular el promedio de los impares
	Si cantidadImpares>0 Entonces
		promedioImpares <- sumaImpares/cantidadImpares
	SiNo
		promedioImpares <- 0
	FinSi
	// Mostrar los resultados
	Escribir 'Cantidad de n�meros pares:', contadorPares
	Escribir 'Promedio de los n�meros impares:', promedioImpares
FinAlgoritmo
