// Ingresar 25 n�meros enteros e informar (mostrar con una leyenda):
// *la suma de los mismos
// *el promedio de los valores ingresados
// *el menor de todos estos n�meros y en que ubicaci�n se ingres�.
Algoritmo AnalizarNumeros
	Definir numeros Como Entero
	Definir suma, promedio, menor, posicionMenor Como Entero
	suma <- 0
	menor <- 0
	Para i<-1 Hasta 25 Hacer
		Escribir 'Ingrese el n�mero ', i, ':'
		Leer numeros
		Si i=1 Entonces
			menor <- numeros
			posicionMenor <- i
		SiNo
			Si numeros<menor Entonces
				menor <- numeros
				posicionMenor <- i
			FinSi
		FinSi
		suma <- suma+numeros
	FinPara
	promedio <- suma/25
	Escribir 'Suma de los n�meros:', suma
	Escribir 'Promedio de los n�meros:', promedio
	Escribir 'Menor n�mero ingresado:', menor, ' (en la ubicaci�n ', posicionMenor, ')'
FinAlgoritmo
