// Ingresar las medidas de los 3 lados de un tri�ngulo e informar de que tipo de tri�ngulo se
// trata. Equilatero, Isosceles, Escaleno.
// Informarlo con una leyenda
Algoritmo TipoTriangulo
	Definir lado1, lado2, lado3 Como Real
	// Solicitar al usuario las medidas de los lados del tri�ngulo
	Escribir 'Ingrese la medida del primer lado del tri�ngulo:'
	Leer lado1
	Escribir 'Ingrese la medida del segundo lado del tri�ngulo:'
	Leer lado2
	Escribir 'Ingrese la medida del tercer lado del tri�ngulo:'
	Leer lado3
	// Verificar el tipo de tri�ngulo
	Si lado1=lado2 Y lado1=lado3 Entonces
		Escribir 'El tri�ngulo es Equil�tero.'
	SiNo
		Si lado1=lado2 O lado1=lado3 O lado2=lado3 Entonces
			Escribir 'El tri�ngulo es Is�sceles.'
		SiNo
			Escribir 'El tri�ngulo es Escaleno.'
		FinSi
	FinSi // Se agrega la instrucci�n FinSi para cerrar el bloque de la estructura condicional
FinAlgoritmo
