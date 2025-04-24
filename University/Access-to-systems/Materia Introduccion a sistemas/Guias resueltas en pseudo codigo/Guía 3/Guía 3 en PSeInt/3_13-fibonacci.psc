Proceso fibonacci
	Definir a,b,c,n,i Como Entero;
	Escribir "Ingrese el número de términos de secuencia fibonacci a mostrar: ";
	Leer n;
	Si n<47 Entonces
		a<-1;
		b<-1;
		Escribir a;
		Escribir b;
		Escribir a+b;
		Para i<-4 Hasta n Con Paso 1 Hacer
			c<-a+b;
			a<-b;
			b<-c;
			c<-a+b;
			Escribir c;
		FinPara
	SiNo
		Escribir "Error: Falta de memoria.";
	FinSi
FinProceso
