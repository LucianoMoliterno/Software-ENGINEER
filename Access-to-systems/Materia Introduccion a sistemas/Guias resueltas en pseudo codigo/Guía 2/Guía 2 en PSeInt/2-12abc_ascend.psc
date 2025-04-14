Proceso abc_ascend
	Definir a,b,c,d Como Entero;
	Escribir "Ingrese el valor de a: ";
	Leer a;
	Escribir "Ingrese el valor de b: ";
	Leer b;
	Escribir "Ingrese el valor de c: ";
	Leer c;
	Si (a>c)
	Entonces
		d<-a;
		a<-c;
		c<-d;
	FinSi
	Si (a>b)
	Entonces
		d<-a;
		a<-b;
		b<-d;
	FinSi
	Si (b>c)
	Entonces
		d<-b;
		b<-c;
		c<-d;
	FinSi
	Escribir a,", ",b,", ",c;
FinProceso
