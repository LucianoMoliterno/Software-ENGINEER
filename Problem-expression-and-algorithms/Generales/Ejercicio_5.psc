// Dise�ar un algoritmo que lea tres n�meros y encuentre si uno de ellos es la suma de los
// otros dos (que los muestre al final mediante una leyenda).
Algoritmo SumaDeDosNumeros
	Definir num1, num2, num3 Como Entero
	// Leer los tres n�meros
	Escribir 'Ingrese el primer n�mero:'
	Leer num1
	Escribir 'Ingrese el segundo n�mero:'
	Leer num2
	Escribir 'Ingrese el tercer n�mero:'
	Leer num3
	// Verificar si uno de los n�meros es la suma de los otros dos
	Si (num1=num2+num3) Entonces
		Escribir num1, ' es igual a la suma de ', num2, ' y ', num3
	FinSi
	Si (num2=num1+num3) Entonces
		Escribir num2, ' es igual a la suma de ', num1, ' y ', num3
	FinSi
	Si (num3=num1+num2) Entonces
		Escribir num3, ' es igual a la suma de ', num1, ' y ', num2
	FinSi
FinAlgoritmo
