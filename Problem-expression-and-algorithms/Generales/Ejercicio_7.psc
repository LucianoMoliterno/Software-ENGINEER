// Calcular la longitud de la circunferencia y la superficie de un c�rculo, ingresando un n�mero entero, que ser� el radio. 
// Mostrar los resultados.
Algoritmo CircunferenciaYAreaCirculo
	Definir radio, circunferencia, area Como Real
	// Leer el radio del c�rculo
	Escribir 'Ingrese el radio del c�rculo:'
	Leer radio
	// Calcular la longitud de la circunferencia
	circunferencia <- 2*pi*radio
	// Calcular el �rea del c�rculo
	area <- pi*radio*radio
	// Mostrar los resultados
	Escribir 'La longitud de la circunferencia es:', circunferencia
	Escribir 'El �rea del c�rculo es:', area
FinAlgoritmo
