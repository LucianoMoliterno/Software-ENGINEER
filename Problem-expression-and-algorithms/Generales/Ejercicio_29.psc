// En una f�brica de neum�ticos, se ha registrado el n�mero de m�quina (del 1 al 4) y la medida que tiene cada uno (di�metro).
// Adem�s, para cada m�quina se conoce el di�metro m�ximo y m�nimo permitido en la fabricaci�n.
// Teniendo presente que se han de analizar 5000 neum�ticos, 
// hallar para cada m�quina que porcentaje de neum�ticos fueron fabricados fuera de tolerancia respecto de la producci�n total de cada m�quina.
// Los resultados deben de estar acompa�ados por una leyenda para poder interpretar los mismos.
Algoritmo AnalizarNeumaticos
	Definir maquina, diametro, totalNeumaticos, neumaticosFueraTolerancia Como Entero
	Definir diametroMaximo, diametroMinimo Como Real
	Definir porcentajeFueraTolerancia Como Real
	// Inicializar contadores
	totalNeumaticos <- 0
	neumaticosFueraTolerancia <- 0
	// Definir los di�metros m�ximos y m�nimos permitidos para cada m�quina
	diametroMaximo <- 20.0
	diametroMinimo <- 10.0 // Ejemplo de valor m�ximo permitido
	// Iterar sobre cada neum�tico fabricado
	Para maquina<-1 Hasta 4 Hacer // Ejemplo de valor m�nimo permitido
		Escribir 'Ingrese la cantidad de neum�ticos fabricados en la m�quina ', maquina, ':'
		Leer totalNeumaticos
		// Reiniciar el contador de neum�ticos fuera de tolerancia para cada m�quina
		neumaticosFueraTolerancia <- 0
		Para i<-1 Hasta totalNeumaticos Hacer
			Escribir 'Ingrese el di�metro del neum�tico ', i, ' fabricado en la m�quina ', maquina, ':'
			Leer diametro
			// Verificar si el di�metro est� fuera de tolerancia
			Si diametro<diametroMinimo O diametro>diametroMaximo Entonces
				neumaticosFueraTolerancia <- neumaticosFueraTolerancia+1
			FinSi
		FinPara
		// Calcular el porcentaje de neum�ticos fuera de tolerancia para esta m�quina
		porcentajeFueraTolerancia <- (neumaticosFueraTolerancia*100)/totalNeumaticos
		// Mostrar el porcentaje de neum�ticos fuera de tolerancia para esta m�quina
		Escribir 'Porcentaje de neum�ticos fuera de tolerancia para la m�quina ', maquina, ': ', porcentajeFueraTolerancia, '%'
	FinPara
FinAlgoritmo
