//Una empresa tiene 4 �reas de producci�n y por cada tarea realizada en cada pieza se registra la siguiente informaci�n:
	//�rea Nro, Horas Empleadas
//El fin del ingreso de datos se produce cuando ingresa el �rea Nro 5.
//Leer sucesivamente los datos y determinar el total de horas empleado por cada �rea y que porcentaje representa cada �rea respecto al total de horas de producci�n.
//Los valores de los respectivos resultados deber�n estar acompa�ados por sus respectivas leyendas que indican que representa cada valor.
Algoritmo CalcularHorasPorArea
	Definir area, horas, totalHorasProduccion, totalHorasArea1, totalHorasArea2, totalHorasArea3, totalHorasArea4 Como Entero
    Definir porcentajeArea1, porcentajeArea2, porcentajeArea3, porcentajeArea4 Como Real
    // Inicializar los totales de horas por �rea
    totalHorasArea1 <- 0
    totalHorasArea2 <- 0
    totalHorasArea3 <- 0
    totalHorasArea4 <- 0
    // Leer sucesivamente los datos hasta que se ingrese el �rea Nro 5
    Escribir "Ingrese el �rea Nro y las horas empleadas (ingrese �rea Nro 5 para terminar):"
    Leer area, horas
    Mientras area <> 5 Hacer
        // Sumar las horas a la respectiva �rea
        Segun area Hacer
            Caso 1:
                totalHorasArea1 <- totalHorasArea1 + horas
            Caso 2:
                totalHorasArea2 <- totalHorasArea2 + horas
            Caso 3:
                totalHorasArea3 <- totalHorasArea3 + horas
            Caso 4:
                totalHorasArea4 <- totalHorasArea4 + horas
				// Opcional: Agregar un caso por defecto para manejar �reas desconocidas
        FinSegun
        // Leer el pr�ximo registro de �rea y horas
        Escribir "Ingrese el �rea Nro y las horas empleadas (ingrese �rea Nro 5 para terminar):"
        Leer area, horas
    FinMientras
    // Calcular el total de horas de producci�n
    totalHorasProduccion <- totalHorasArea1 + totalHorasArea2 + totalHorasArea3 + totalHorasArea4
    // Calcular el porcentaje de cada �rea respecto al total de horas de producci�n
    porcentajeArea1 <- (totalHorasArea1 * 100) / totalHorasProduccion
    porcentajeArea2 <- (totalHorasArea2 * 100) / totalHorasProduccion
    porcentajeArea3 <- (totalHorasArea3 * 100) / totalHorasProduccion
    porcentajeArea4 <- (totalHorasArea4 * 100) / totalHorasProduccion
    // Mostrar los resultados
    Escribir "Total de horas empleadas por el �rea 1:", totalHorasArea1
    Escribir "Porcentaje de horas del �rea 1 respecto al total de producci�n:", porcentajeArea1, "%"
    Escribir "Total de horas empleadas por el �rea 2:", totalHorasArea2
    Escribir "Porcentaje de horas del �rea 2 respecto al total de producci�n:", porcentajeArea2, "%"
    Escribir "Total de horas empleadas por el �rea 3:", totalHorasArea3
    Escribir "Porcentaje de horas del �rea 3 respecto al total de producci�n:", porcentajeArea3, "%"
    Escribir "Total de horas empleadas por el �rea 4:", totalHorasArea4
    Escribir "Porcentaje de horas del �rea 4 respecto al total de producci�n:", porcentajeArea4, "%"
FinAlgoritmo
