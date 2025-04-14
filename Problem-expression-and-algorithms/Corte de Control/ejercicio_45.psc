//Se cuenta con un conjunto de n�meros positivos, ordenados en forma creciente. 
//Cada n�mero se repite una cantidad de veces indefinida y el �ltimo n�mero del conjunto es 0 (cero).
//Se solicita realizar un algoritmo que, ingresando por teclado dichos n�meros, informe:
		//*La cantidad de veces que se repite cada uno.
		//*Informe el n�mero que m�s veces se repiti�.
Algoritmo ContarRepeticiones
	Definir numero, anterior, cantidad, maxRepeticiones, numeroMasRepetido Como Entero
	anterior <- -1
	cantidad <- 0
	maxRepeticiones <- 0
	numeroMasRepetido <- 0
	Escribir 'Ingrese una secuencia de n�meros positivos ordenados en forma creciente (0 para finalizar):'
	Repetir
		Leer numero
		Si numero<>anterior Entonces
			Si cantidad>maxRepeticiones Entonces
				maxRepeticiones <- cantidad
				numeroMasRepetido <- anterior
			FinSi
			Escribir 'El n�mero ', anterior, ' se repiti� ', cantidad, ' veces.'
			cantidad <- 1
		SiNo
			cantidad <- cantidad+1
		FinSi
		anterior <- numero
	Hasta Que numero=0
	Si cantidad>maxRepeticiones Entonces
		maxRepeticiones <- cantidad
		numeroMasRepetido <- anterior
	FinSi
	Escribir 'El n�mero que m�s veces se repiti� fue ', numeroMasRepetido, ' con ', maxRepeticiones, ' repeticiones.'
FinAlgoritmo
