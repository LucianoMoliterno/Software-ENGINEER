Proceso a_potencia_n
	Definir a, n, p, i Como Entero;
	p<-1;
	Escribir "Ingrese el valor base: ";
	Leer a;
	Escribir "Ingrese el valor exponente: ";
	Leer n;
	Si n>0
	Entonces
		Para i<-1 Hasta n Con Paso 1 Hacer
			p<- p * a;
			Escribir p;
		FinPara
		Escribir "La potencia de ",a," con exponente ",n," es ",p,".";
	SiNo
		Escribir "La potencia de ",a," con exponente ",n," es ",p,".";
	FinSi
FinProceso
