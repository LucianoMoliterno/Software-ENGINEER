// Dise�ar un algoritmo, en el cual se ingresa la temperatura en grados Celsius, y un c�digo (1 � 2), 
// si el c�digo es 1, lo convierte en grados Fahrenheit [ f=(9/5)* C +32], 
// en caso de ser el c�digo 2, lo convierte en grados Kelvin [k=C+273].
// Se debe mostrar el resultado seleccionado.
Algoritmo ConvertirTemperatura
	Definir temperatura, codigo Como Entero
	Definir temperaturaConvertida Como Real
	// Leer la temperatura en grados Celsius
	Escribir 'Ingrese la temperatura en grados Celsius:'
	Leer temperatura
	// Leer el c�digo (1 para Fahrenheit, 2 para Kelvin)
	Escribir 'Ingrese el c�digo (1 para Fahrenheit, 2 para Kelvin):'
	Leer codigo
	// Realizar la conversi�n seg�n el c�digo ingresado
	Si codigo=1 Entonces
		// Convertir a grados Fahrenheit
		temperaturaConvertida <- (9/5)*temperatura+32
		Escribir 'La temperatura en grados Fahrenheit es:', temperaturaConvertida
	SiNo
		Si codigo=2 Entonces
			// Convertir a grados Kelvin
			temperaturaConvertida <- temperatura+273
			Escribir 'La temperatura en grados Kelvin es:', temperaturaConvertida
		SiNo
			Escribir 'C�digo no v�lido. Ingrese 1 para Fahrenheit o 2 para Kelvin.'
		FinSi
	FinSi
FinAlgoritmo
