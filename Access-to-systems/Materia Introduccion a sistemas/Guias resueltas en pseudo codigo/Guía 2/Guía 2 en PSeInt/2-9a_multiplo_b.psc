Proceso a_multiplo_b
	Definir a, b Como Entero;
	Definir msg Como Caracter;
	Escribir "Ingrese un n�mero: ";
	Leer a;
	Escribir "Ingrese un segundo n�mero: ";
	Leer b;
	Si (a Mod b = 0)
	Entonces
		msg<-" es m�ltiplo de ";
	SiNo
		msg<-" no es m�ltiplo de ";
	FinSi
	Escribir a, msg, b;
FinProceso
