//Una compa��a a�rea realiza viajes a Europa. Ingresar los vuelos diarios ordenados por destino, 
//indicando el N�mero de Vuelo, Cantidad de Pasajeros por Vuelo y el C�digo de Destino (es una letra distinta para cada pa�s). 
//Finaliza ingresando C�digo de Destino en blanco. Informar:
	//*Si cada avi�n viaja completo o con lugares libres, considerando que la capacidad de todos los aviones es de 150 pasajeros.
	//*El porcentaje de vuelos completos del d�a.
	//*La cantidad de pasajeros que viajaron a cada pa�s.
Algoritmo VuelosEuropa
	Definir NumVuelo, CantPasajeros, CodDestino Como Entero
	Definir PasajerosTotales, VuelosCompletos, PasajerosPorPais Como Entero
	Definir PorcentajeVuelosCompletos Como Real
	PasajerosTotales <- 0
	VuelosCompletos <- 0
	PasajerosPorPais <- 0
	Escribir 'Ingrese el n�mero de vuelo (0 para finalizar):'
	Leer NumVuelo
	Mientras NumVuelo<>0 Hacer
		Escribir 'Ingrese la cantidad de pasajeros y el c�digo de destino:'
		Leer CantPasajeros, CodDestino
		PasajerosTotales <- PasajerosTotales+CantPasajeros
		Si CantPasajeros>=150 Entonces
			Escribir 'El vuelo', NumVuelo, 'est� completo.'
			VuelosCompletos <- VuelosCompletos+1
		SiNo
			Escribir 'El vuelo', NumVuelo, 'tiene lugares libres.'
		FinSi
		Si CodDestino='A' Entonces
			PasajerosPorPais <- PasajerosPorPais+CantPasajeros
		FinSi
		Escribir 'Ingrese el n�mero de vuelo (0 para finalizar):'
		Leer NumVuelo
	FinMientras
	PorcentajeVuelosCompletos <- (VuelosCompletos/(VuelosCompletos+1))*100
	Escribir 'El porcentaje de vuelos completos del d�a es:', PorcentajeVuelosCompletos, '%.'
	Escribir 'La cantidad de pasajeros que viajaron al pa�s A es:', PasajerosPorPais
FinAlgoritmo
