Proceso primo_o_no
	Definir a, i Como Entero;
	Definir msg Como Caracter;
	Escribir "Ingrese un número positivo: ";
	Leer a;
	Si a>0
	Entonces
		Para i<-1 Hasta 9 Con Paso 1 Hacer 
			Si (a Mod i = 0) Y (i!=a)
			Entonces
				msg<-" no es un número primo.";
			SiNo
				msg<-" es un número primo.";
			FinSi
		FinPara
		Escribir a,msg;
	SiNo
		Escribir "Error: el valor ingresado no es positivo.";
	FinSi
FinProceso
