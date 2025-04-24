Proceso una_moneda
	Definir m Como Entero;
	Definir r, init Como Caracter;
	Escribir "¿Desea lanzar una moneda? (Y/N)";
	Leer init;
	Si init="Y"
	Entonces
		m<-Aleatorio(1,2);
		Si m=1
			Entonces
			r<-"cara";
		SiNo
			r<-"seca";
		FinSi
		Escribir "La moneda cayó en ", r, ".";
	FinSi
FinProceso
