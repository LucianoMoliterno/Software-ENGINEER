Proceso a_multiplo_b
	Definir a, b Como Entero;
	Definir msg Como Caracter;
	Escribir "Ingrese un número: ";
	Leer a;
	Escribir "Ingrese un segundo número: ";
	Leer b;
	Si (a Mod b = 0)
	Entonces
		msg<-" es múltiplo de ";
	SiNo
		msg<-" no es múltiplo de ";
	FinSi
	Escribir a, msg, b;
FinProceso
