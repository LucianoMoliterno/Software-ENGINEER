Proceso reloj_digital
	Definir h,m,s Como Entero;
	h<-0;
	m<-0;
	s<-0;
	Para h<-0 Hasta 23 Con Paso 1 Hacer
		Para m<-0 Hasta 59 Con Paso 1 Hacer
			Para s<-0 Hasta 59 Con Paso 1 Hacer
				Escribir h,":",m,":",s;
				Si (h=23) Y (m=59) Y (s=59) Entonces
					h<-0;
					m<-0;
					s<-0;
				FinSi
			FinPara
		FinPara
	FinPara
FinProceso
