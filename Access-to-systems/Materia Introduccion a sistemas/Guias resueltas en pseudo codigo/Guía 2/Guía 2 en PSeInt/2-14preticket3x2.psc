Proceso preticket3x2
	Definir i Como Entero;
	Definir prc, total, u Como Real;
	Definir atcl Como Caracter;
	Escribir "Ingrese el art�culo: ";
	Leer atcl;
	Escribir "Ingrese la cantidad: ";
	Leer u;
	Escribir "Ingrese el precio del art�culo: ";
	Leer prc;
	total<-prc*u;
	Si (u>=3)
	Entonces
		Para i<-1 Hasta u Con Paso 1 Hacer
			Si (i Mod 3 = 0)
			Entonces
				total<- total-prc;
			FinSi
		FinPara
		Escribir "Llevando ", u, " ", atcl, " el cliente pagar� $", total, " en lugar del precio total ($", prc*u, ").";
	SiNo
		Escribir "Llevando ", u, " ", atcl, "el cliente pagar� $", total, ".";
	FinSi
FinProceso
