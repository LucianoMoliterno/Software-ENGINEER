Proceso bisiesto
	Definir year Como Entero;
	Definir msg Como Caracter;
	Escribir "Ingrese un año: ";
	Leer year;
	Si (year Mod 4=0) Y (year Mod 400!=0) Y (year Mod 100=0)
	Entonces
		msg<- " no es un año bisiesto.";
	SiNo
		msg<- " es un año bisiesto.";
	FinSi
	Escribir year, msg;
FinProceso
