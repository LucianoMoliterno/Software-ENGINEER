Proceso bisiesto
	Definir year Como Entero;
	Definir msg Como Caracter;
	Escribir "Ingrese un a�o: ";
	Leer year;
	Si (year Mod 4=0) Y (year Mod 400!=0) Y (year Mod 100=0)
	Entonces
		msg<- " no es un a�o bisiesto.";
	SiNo
		msg<- " es un a�o bisiesto.";
	FinSi
	Escribir year, msg;
FinProceso
