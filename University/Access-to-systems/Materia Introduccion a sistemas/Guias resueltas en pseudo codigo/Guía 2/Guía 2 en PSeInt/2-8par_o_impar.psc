Proceso par_o_impar
	Definir n Como Entero;
	Definir msg Como Caracter;
	Escribir "Ingrese un número para determinar si es par o impar: ";
	Leer n;
	Si (n Mod 2 = 0)
	Entonces
		msg<- " es par.";
	SiNo
		msg<- " es impar.";
	FinSi
	Escribir n,msg;
FinProceso
