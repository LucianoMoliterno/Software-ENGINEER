//Se cuenta con un conjunto de temperaturas tomadas en distintos d�as de un mismo mes (30 d�as), 
//ordenadas cronol�gicamente. En cada d�a se tomaron diferentes cantidades de temperaturas. 
//Se solicita realizar un algoritmo que, leyendo el d�a y la temperatura, muestre, para cada d�a, la temperatura m�xima, la temperatura m�nima y la temperatura promedio registradas.
Algoritmo TemperaturasMes
	Definir diaAnterior, temperatura, dia, totalTemperaturas, temperaturaMax, temperaturaMin Como Entero
	Definir temperaturaPromedio Como Real
	diaAnterior <- 0
	totalTemperaturas <- 0
	temperaturaMax <- -9999
	temperaturaMin <- 9999 // Valor inicial muy bajo
	Mientras dia<>0 Hacer // Valor inicial muy alto
		// Lee el d�a y la temperatura
		Escribir 'Ingrese el d�a y la temperatura (o ingrese 0 para terminar):'
		Leer dia, temperatura
		Si dia<>diaAnterior Entonces
			// Calcula la temperatura promedio y muestra la informaci�n del d�a anterior
			Si totalTemperaturas>0 Entonces
				temperaturaPromedio <- totalTemperaturas/totalTemperaturas
				Escribir 'D�a ', diaAnterior, ': Temperatura M�xima: ', temperaturaMax, ', Temperatura M�nima: ', temperaturaMin, ', Temperatura Promedio: ', temperaturaPromedio
			FinSi
			// Reinicia las variables para el nuevo d�a
			totalTemperaturas <- 0
			temperaturaMax <- -9999
			temperaturaMin <- 9999
		FinSi
		// Actualiza las temperaturas m�xima y m�nima
		Si temperatura>temperaturaMax Entonces
			temperaturaMax <- temperatura
		FinSi
		Si temperatura<temperaturaMin Entonces
			temperaturaMin <- temperatura
		FinSi
		// Incrementa el contador de temperaturas para el promedio
		totalTemperaturas <- totalTemperaturas+1
		// Actualiza el d�a anterior
		diaAnterior <- dia
	FinMientras
	// Muestra la informaci�n del �ltimo d�a
	Si totalTemperaturas>0 Entonces
		temperaturaPromedio <- totalTemperaturas/totalTemperaturas
		Escribir 'D�a ', diaAnterior, ': Temperatura M�xima: ', temperaturaMax, ', Temperatura M�nima: ', temperaturaMin, ', Temperatura Promedio: ', temperaturaPromedio
	FinSi
FinAlgoritmo
