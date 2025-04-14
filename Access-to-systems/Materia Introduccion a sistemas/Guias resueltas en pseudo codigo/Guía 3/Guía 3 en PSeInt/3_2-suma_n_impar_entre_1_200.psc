Proceso suma_n_impares_entre_1_200
	Definir r, i Como Entero;
	r<-0;
	Para i<-1 Hasta 200 Con Paso 1 Hacer
		Si i Mod 2 != 0
			Entonces
			r<-r+i;
			Escribir i;
		FinSi
	FinPara
	Escribir "La suma de los números pares entre 1 y 200 es ",r,".";
FinProceso
