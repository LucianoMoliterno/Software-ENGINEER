//Ingresar un n�mero entero y determinar si es positivo, negativo o cero, mostrar una leyenda en cada caso.
Algoritmo DeterminarPositivoNegativoCero
	Definir numero Como Entero
	// Leer el n�mero entero
	Escribir 'Ingrese un n�mero entero:'
	Leer numero
	// Determinar si el n�mero es positivo, negativo o cero
	Si numero>0 Entonces
		Escribir 'El n�mero ingresado es positivo.'
	SiNo
		Si numero<0 Entonces
			Escribir 'El n�mero ingresado es negativo.'
		SiNo
			Escribir 'El n�mero ingresado es cero.'
		FinSi
	FinSi
FinAlgoritmo
