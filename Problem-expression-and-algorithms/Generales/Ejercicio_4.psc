// Escribir un algoritmo que lea cuatro n�meros y a continuaci�n imprima el mayor de los cuatro.
Algoritmo MayorDeCuatroNumeros
	Definir num1, num2, num3, num4, mayor Como Entero
	// Leer los cuatro n�meros
	Escribir 'Ingrese el primer n�mero:'
	Leer num1
	Escribir 'Ingrese el segundo n�mero:'
	Leer num2
	Escribir 'Ingrese el tercer n�mero:'
	Leer num3
	Escribir 'Ingrese el cuarto n�mero:'
	Leer num4
	// Determinar el mayor de los cuatro n�meros
	mayor <- num1
	Si num2>mayor Entonces
		mayor <- num2
	FinSi
	Si num3>mayor Entonces
		mayor <- num3
	FinSi
	Si num4>mayor Entonces
		mayor <- num4
	FinSi
	// Imprimir el mayor de los cuatro n�meros
	Escribir 'El mayor de los cuatro n�meros es:', mayor
FinAlgoritmo
