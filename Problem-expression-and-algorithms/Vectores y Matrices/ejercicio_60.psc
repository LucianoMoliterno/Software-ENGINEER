//En una empresa de software se ha registrado la siguiente informaci�n por cada tarea realizada:
	//Categor�a Empleado   �rea    Horas Trabajadas
//Las categor�as de los empleados est�n registradas seg�n los siguientes c�digos:
	//1. Jefe de Proyecto
	//2. Analista Funcional
	//3. Programador
//Dentro de la empresa hay 10 �reas distintas. 
//El fin de ingreso de datos se produce cuando llega la categor�a 0. Los datos ingresan respetando el formato establecido y pueden llegar en cualquier orden.
//Hallar la cantidad de horas trabajadas en cada secci�n por cada categor�a, imprimir dicha informaci�n. Adem�s, se necesita conocer el total de horas por cada categor�a.
Algoritmo CalcularHorasPorCategoria
	// Definir un diccionario para almacenar las horas trabajadas por categor�a y �rea
	Definir horasPorCategoria Como Real
	Dimensionar horasPorCategoria(3,10)
	// Inicializar todas las horas a cero
	Para categoria<-1 Hasta 3 Hacer // 3 categor�as y 10 �reas
		Para area<-1 Hasta 10 Hacer
			horasPorCategoria[categoria,area]<-0
		FinPara
	FinPara
	// Leer e ingresar los datos hasta que se ingrese la categor�a 0
	Escribir 'Ingrese la categor�a, empleado, �rea y horas trabajadas (0 para finalizar):'
	Leer categoria, empleado, area, horas
	Mientras categoria<>0 Hacer
		// Actualizar las horas trabajadas para la categor�a y �rea correspondientes
		horasPorCategoria[categoria,area]<-horasPorCategoria[categoria,area]+horas
		// Leer el siguiente conjunto de datos
		Escribir 'Ingrese la categor�a, empleado, �rea y horas trabajadas (0 para finalizar):'
		Leer categoria, empleado, area, horas
	FinMientras
	// Calcular y mostrar las horas trabajadas por cada categor�a y �rea
	Para categoria<-1 Hasta 3 Hacer
		Escribir 'Categor�a:', categoria
		Para area<-1 Hasta 10 Hacer
			Escribir '  �rea', area, ': ', horasPorCategoria[categoria,area], ' horas'
		FinPara
	FinPara
	// Calcular y mostrar las horas totales por cada categor�a
	Para categoria<-1 Hasta 3 Hacer
		totalHoras <- 0
		Para area<-1 Hasta 10 Hacer
			totalHoras <- totalHoras+horasPorCategoria[categoria,area]
		FinPara
		Escribir 'Total de horas para la categor�a', categoria, ': ', totalHoras, ' horas'
	FinPara
FinAlgoritmo
