Proceso par_y_no_mult_de_3
	Definir n,i Como Entero;
	Escribir "Ingrese un valor: ";
	Leer n;
	Si n>0
		Entonces
		Escribir "Los números pares y no múltiplos de 3 entre 1 y ",n," son: ";
		Para i<-1 Hasta n Con Paso 1 Hacer
			Si(i Mod 2 = 0) Y (i Mod 3 !=0)
			Entonces
				Escribir i;
			FinSi
		FinPara
	SiNo
		Escribir "El valor ingresado debe ser positivo.";
	FinSi
FinProceso
