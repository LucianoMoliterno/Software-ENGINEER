// Desarrollar un algoritmo que permita ingresar 3 calificaciones de un alumno, 
// calcule el promedio de las mismas e informe si est� aprobado o no, seg�n sea el promedio.
// Promedio >=7, Aprobado. Promedio >=4 y <7, Diciembre. Promedio <4, Marzo.
Algoritmo CalcularPromedioYEstado
	Definir calificacion1, calificacion2, calificacion3, promedio Como Real
	// Leer las 3 calificaciones
	Escribir 'Ingrese la primera calificaci�n:'
	Leer calificacion1
	Escribir 'Ingrese la segunda calificaci�n:'
	Leer calificacion2
	Escribir 'Ingrese la tercera calificaci�n:'
	Leer calificacion3
	// Calcular el promedio
	promedio <- (calificacion1+calificacion2+calificacion3)/3
	// Determinar el estado del alumno seg�n el promedio
	Si promedio>=7 Entonces
		Escribir 'El alumno est� Aprobado con un promedio de:', promedio
	SiNo
		Si promedio>=4 Y promedio<7 Entonces
			Escribir 'El alumno est� en Diciembre con un promedio de:', promedio
		SiNo
			Escribir 'El alumno est� en Marzo con un promedio de:', promedio
		FinSi
	FinSi
FinAlgoritmo
