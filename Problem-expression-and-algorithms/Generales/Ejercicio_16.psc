// Ingresar un n�mero entero y determinar si el mismo es menor 10, si est� comprendido entre 10 y 100 o si el valor ingresado es mayor que 100.
// En los tres casos se debe mostrar una leyenda y el valor ingresado.
Algoritmo DeterminarRango
	Definir numero Como Entero
	// Leer el n�mero entero
	Escribir 'Ingrese un n�mero entero:'
	Leer numero
	// Determinar en qu� rango se encuentra el n�mero
	Si numero<10 Entonces
		Escribir 'El n�mero ingresado es menor que 10 y su valor es:', numero
	SiNo
		Si numero>=10 Y numero<=100 Entonces
			Escribir 'El n�mero ingresado est� comprendido entre 10 y 100 y su valor es:', numero
		SiNo
			Escribir 'El n�mero ingresado es mayor que 100 y su valor es:', numero
		FinSi
	FinSi
FinAlgoritmo
