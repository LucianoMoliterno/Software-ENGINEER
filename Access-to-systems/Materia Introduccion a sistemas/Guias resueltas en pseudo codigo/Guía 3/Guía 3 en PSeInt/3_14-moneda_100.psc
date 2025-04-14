Proceso moneda_100
	Definir m,c,s,i Como Entero;
	Definir yn,r Como Caracter;
	c<-0;
	s<-0;
	Escribir "Desea lanzar la moneda? (Y/N)";
	Leer yn;
	Si yn="Y" O yn="y" Entonces
		Para i<-0 Hasta 99 Con Paso 1 Hacer
			m<-Aleatorio(1,2);
			Si m=1 Entonces
				c<-c+1;
				r<-"Cara.";
			SiNo
				s<-s+1;
				r<-"Seca.";
			FinSi
			Escribir r;
		FinPara
		Escribir "La moneda cayó en cara ",c," veces y en seca ",s," veces.";
	FinSi
FinProceso
