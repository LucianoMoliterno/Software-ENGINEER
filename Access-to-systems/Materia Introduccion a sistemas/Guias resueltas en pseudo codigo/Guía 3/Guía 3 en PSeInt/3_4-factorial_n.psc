Proceso factorial_n
	Definir n, nf, i Como Entero;
	Escribir "Ingrese un valor positivo al cual aplicar factorial: ";
	Leer n;
	Si n>0
	Entonces
		nf<-1;
		Para i<-1 Hasta n Con Paso 1 Hacer
			nf<- nf*i;
		FinPara
		Escribir "El factorial de ",n," es ",nf,".";
	SiNo
		Escribir "Error: Valor ingresado no es positivo.";
	FinSi
FinProceso
