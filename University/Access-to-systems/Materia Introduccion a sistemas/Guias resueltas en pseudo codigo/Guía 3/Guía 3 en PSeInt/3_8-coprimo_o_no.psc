Proceso coprimo_o_no
	Definir a,b,r,i Como Entero;
	Definir msg Como Caracter;
	Escribir "Ingrese un valor: ";
	Leer a;
	Escribir "Ingrese un segundo valor: ";
	Leer b;
	Para i<-1 Hasta 9 Con Paso 1 Hacer
		Si (a Mod i != 0) Y (b Mod i != 0)
		Entonces
			msg<-" son coprimos.";
		SiNo
			msg<-" no son coprimos.";
		FinSi
	FinPara
	Escribir a," y ",b,msg;
FinProceso

//Necesito corregirlo.