// Escribir un algoritmo que determine si el a�o es bisiesto o no. Se debe de tener en cuenta
// que, para saberlo, un a�o es bisiesto si es m�ltiplo entero de 4 (por ejemplo, 2020 lo fue y
// es un resultado entero, el 2021 no es un resultado entero).
// Ingresar el a�o y mostrar la leyenda apropiada
Algoritmo AnioBisiesto
	// Leer el a�o ingresado por el usuario
	Escribir 'Ingrese el a�o:'
	Leer anio
	// Verificar si el a�o es bisiesto
	Si (anio MOD 4=0) Entonces
		Escribir anio, ' es un a�o bisiesto.'
	SiNo
		Escribir anio, ' no es un a�o bisiesto.'
	FinSi
FinAlgoritmo
