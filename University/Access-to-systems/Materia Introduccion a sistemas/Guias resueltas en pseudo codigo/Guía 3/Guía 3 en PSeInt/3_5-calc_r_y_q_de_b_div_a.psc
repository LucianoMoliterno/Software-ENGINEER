Proceso calc_r_y_q_de_b_div_a
	Definir a,b,c,q,r Como Real;
	Escribir "Ingrese el valor del dividendo: ";
	Leer b;
	Escribir "Ingrese el valor del divisor: ";
	Leer a;
	Si a!=0
		Entonces
		q<-0;
		r<-b;
		Mientras a<=r Hacer
			r<-r-a;
			q<-q+1;
		FinMientras
		Escribir "El resto de ",b,"/",a," es ",r," y el cociente es ",q,".";
	SiNo
		Escribir "Error: El valor del divisor no puede ser 0.";
	FinSi
FinProceso
