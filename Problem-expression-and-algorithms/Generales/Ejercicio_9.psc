// Dise�ar un algoritmo que calcule el salario mensual de una persona, teniendo como dato el
// valor hora, la cantidad de horas semanales (tener presente que en el mes tenemos 4 semanas).
// A ese valor, se le denomina, sueldo bruto.
// Al sueldo bruto, se le debe descontar el 11 MOD  por jubilaci�n, el 3 MOD  por obra social y el 3 MOD  por
// contribuci�n al sistema de salud de jubilaciones, �ste nuevo valor es el sueldo neto, lo cual
// se debe mostrar al final de la operaci�n.
Algoritmo CalcularSalario
	Definir valorHora, horasSemanales, sueldoBruto, sueldoNeto Como Real
	// Leer el valor de la hora y la cantidad de horas semanales
	Escribir 'Ingrese el valor por hora:'
	Leer valorHora
	Escribir 'Ingrese la cantidad de horas semanales:'
	Leer horasSemanales
	// Calcular el sueldo bruto
	sueldoBruto <- valorHora*horasSemanales*4
	// Calcular los descuentos
	Definir descuentoJubilacion, descuentoObraSocial, descuentoSalud Como Real // Multiplicamos por 4 semanas en un mes
	descuentoJubilacion <- 0.11
	descuentoObraSocial <- 0.03
	descuentoSalud <- 0.03
	Definir totalDescuentos Como Real
	totalDescuentos <- sueldoBruto*(descuentoJubilacion+descuentoObraSocial+descuentoSalud)
	// Calcular el sueldo neto
	sueldoNeto <- sueldoBruto-totalDescuentos
	// Mostrar el sueldo neto
	Escribir 'El sueldo neto mensual es:', sueldoNeto
FinAlgoritmo
