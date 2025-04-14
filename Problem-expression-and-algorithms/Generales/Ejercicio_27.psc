// Ingresar las medidas de los 3 lados de un tri�ngulo rect�ngulo e informar si se verifican sus catetos y la hipotenusa.
// Informarlo con una leyenda
Algoritmo VerificarTrianguloRectangulo
	Definir lado1, lado2, hipotenusa Como Real
	// Solicitar al usuario las medidas de los lados del tri�ngulo rect�ngulo
	Escribir 'Ingrese la medida de un cateto del tri�ngulo rect�ngulo:'
	Leer lado1
	Escribir 'Ingrese la medida del otro cateto del tri�ngulo rect�ngulo:'
	Leer lado2
	Escribir 'Ingrese la medida de la hipotenusa del tri�ngulo rect�ngulo:'
	Leer hipotenusa
	// Verificar si se cumplen las condiciones del teorema de Pit�goras
	Si (lado1^2+lado2^2=hipotenusa^2) Entonces
		Escribir 'Las medidas ingresadas corresponden a los catetos y la hipotenusa de un tri�ngulo rect�ngulo.'
	SiNo
		Escribir 'Las medidas ingresadas NO corresponden a los catetos y la hipotenusa de un tri�ngulo rect�ngulo.'
	FinSi
FinAlgoritmo
