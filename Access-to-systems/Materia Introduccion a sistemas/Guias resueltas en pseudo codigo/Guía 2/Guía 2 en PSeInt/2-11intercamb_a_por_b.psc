Proceso intercamb_a_por_b
	Definir a,b,c Como Entero;
	Escribir "Ingrese un n�mero: ";
	Leer a;
	Escribir "Ingrese un segundo n�mero: ";
	Leer b;
	Si a>b
	Entonces
		c<-a;
		a<-b;
		b<-c;
	FinSi
	Escribir "a: ",a, ", b: ", b;
FinProceso
