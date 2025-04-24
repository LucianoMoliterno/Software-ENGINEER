Proceso dado_100
	Definir d,d1,d2,d3,d4,d5,d6,i Como Entero;
	Definir yn Como Caracter;
	d1<-0;
	d2<-0;
	d3<-0;
	d4<-0;
	d5<-0;
	d6<-0;
	Escribir "¿Desea lanzar el dado 100 veces? (Y/N)";
	Leer yn;
	Si yn="Y" O yn="y" Entonces
		Para i<-0 Hasta 99 Con Paso 1 Hacer
			d<-Aleatorio(1,6);
			Escribir d;
			Si d=6 Entonces
				d6<-d6+1;
			FinSi
			Si d=5 Entonces
				d5<-d5+1;
			FinSi
			Si d=4 Entonces
				d4<-d4+1;
			FinSi
			Si d=3 Entonces
				d3<-d3+1;
			FinSi
			Si d=2 Entonces
				d2<-d2+1;
			FinSi
			Si d=1 Entonces
				d1<-d1+1;
			FinSi
		FinPara
		Escribir "El dado cayó en ";
		Escribir "6= ",d6," veces.";
		Escribir "5= ",d5," veces.";
		Escribir "4= ",d4," veces.";
		Escribir "3= ",d3," veces.";
		Escribir "2= ",d2," veces.";
		Escribir "1= ",d1," veces.";
	FinSi
FinProceso
