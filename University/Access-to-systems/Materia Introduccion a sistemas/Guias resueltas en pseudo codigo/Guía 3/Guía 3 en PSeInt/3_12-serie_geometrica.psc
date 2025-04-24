Proceso serie_geometrica
	Definir a, n, np, r, i Como Real;
	Escribir "Ingrese el valor de a: ";
	Leer a;//numero base.
	Escribir "Ingrese el valor de n: ";
	Leer n;//exponente que afecta al 1/2.
	np<-1;//1/np, se multiplica por 2 porque es 2>4>8>16>...
	Si (a>0) Y (n>0) Entonces
		Para i<-1 Hasta n Con Paso 1 Hacer //n es la cantidad de veces a repetir la multiplicación del 2 en la fracción inicial.
			np<-2*np;
			r<-a+1/np;//(a+1/2^n)r=resultado, a es el número positivo a sumar 1/2, 1/4,...,1/2^n.
			Escribir r;
		FinPara
	SiNo
		Escribir "Error: los valores deben ser mayores a 0.";
	FinSi
FinProceso
