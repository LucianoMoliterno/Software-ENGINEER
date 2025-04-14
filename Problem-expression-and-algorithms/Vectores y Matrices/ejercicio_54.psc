//Ingresar un conjunto VEC1 de 100 componentes. Si la suma de los componentes resulta par, imprimir las de �ndice par, sino las de �ndice impar.
Algoritmo ImprimirSegunSumaPar
	Dimensionar VEC1(100)
	// Ingresar los valores del conjunto VEC1
	Escribir 'Ingrese los 100 n�meros enteros para el conjunto VEC1:' // Dimensionamos el vector con 100 componentes
	Para i<-1 Hasta 100 Hacer
		Leer VEC1[i]
	FinPara // Leemos cada elemento del conjunto VEC1
	// Calcular la suma de los componentes del conjunto VEC1
	suma <- 0
	Para i<-1 Hasta 100 Hacer
		suma <- suma+VEC1[i]
	FinPara // Sumamos cada elemento del conjunto VEC1
	// Imprimir seg�n la paridad de la suma
	Si suma MOD 2=0 Entonces
		Escribir 'La suma de los componentes es par. Imprimiendo los de �ndice par:' // Si la suma es par
		Para i<-2 Hasta 100 Paso 2 Hacer
			Escribir 'VEC1[', i, ']: ', VEC1[i] // Imprimir los elementos de �ndice par
		FinPara
	SiNo
		Escribir 'La suma de los componentes es impar. Imprimiendo los de �ndice impar:' // Si la suma es impar
		Para i<-1 Hasta 100 Paso 2 Hacer
			Escribir 'VEC1[', i, ']: ', VEC1[i] // Imprimir los elementos de �ndice impar
		FinPara
	FinSi
FinAlgoritmo
