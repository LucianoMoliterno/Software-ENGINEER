//Se han registrado tres temperaturas en el transcurso del mes con el siguiente formato:
	//D�a , Temp1, Temp2, Temp3
//Se necesitar realizar un listado con la temperatura promedio de cada d�a. 
//Asimismo, se necesita saber cu�l ha sido la temperatura m�s baja y el d�a m�s caluroso (con mayor promedio). 
//Los valores se deben mostrar conjuntamente con una leyenda para poder interpretarse correctamente.
Algoritmo CalcularTemperaturas
	Definir dia, temp1, temp2, temp3 Como Entero
	Definir promedio, temp_minima, temp_maxima Como Real
	Definir dia_temp_minima, dia_temp_maxima Como Entero
	// Inicializar variables
	temp_minima <- 1000
	temp_maxima <- -1000 // Inicializar con un valor muy alto para asegurar que se actualizar�
	// Leer las temperaturas de cada d�a y calcular promedio
	Escribir 'Ingrese el d�a y las tres temperaturas (temp1, temp2, temp3), separadas por espacios (0 para finalizar):' // Inicializar con un valor muy bajo para asegurar que se actualizar�
	Leer dia, temp1, temp2, temp3
	Mientras dia<>0 Hacer
		// Calcular promedio de temperaturas
		promedio <- (temp1+temp2+temp3)/3
		// Actualizar temperatura m�nima y d�a correspondiente
		Si promedio<temp_minima Entonces
			temp_minima <- promedio
			dia_temp_minima <- dia
		FinSi
		// Actualizar temperatura m�xima y d�a correspondiente
		Si promedio>temp_maxima Entonces
			temp_maxima <- promedio
			dia_temp_maxima <- dia
		FinSi
		// Mostrar temperatura promedio de cada d�a
		Escribir 'D�a', dia, ' - Temperatura promedio:', promedio
		// Solicitar nuevas temperaturas
		Escribir 'Ingrese el d�a y las tres temperaturas (temp1, temp2, temp3), separadas por espacios (0 para finalizar):'
		Leer dia, temp1, temp2, temp3
	FinMientras
	// Mostrar temperatura m�nima y d�a correspondiente
	Escribir 'La temperatura m�s baja fue de', temp_minima, 'grados el d�a', dia_temp_minima
	// Mostrar temperatura m�xima y d�a correspondiente
	Escribir 'La temperatura m�s alta fue de', temp_maxima, 'grados el d�a', dia_temp_maxima
FinAlgoritmo
