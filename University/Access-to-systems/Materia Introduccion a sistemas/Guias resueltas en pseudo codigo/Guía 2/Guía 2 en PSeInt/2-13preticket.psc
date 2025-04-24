Proceso preticket
	Definir prc, total, u Como Real;
	Definir atcl Como Caracter;
	Escribir "Ingrese el artículo: ";
	Leer atcl;
	Escribir "Ingrese la cantidad: ";
	Leer u;
	Escribir "Ingrese el precio del artículo: ";
	Leer prc;
	Si (u>=4)
	Entonces
		total<-prc*u;
		total<- total-(total*0.05);
		Escribir "Llevando ", u, " ", atcl, " el cliente pagará $", total, " en lugar del precio total ($", prc*u, ").";
	SiNo
		total<-prc*u;
		Escribir "Llevando ", u, " ", atcl, " el cliente pagará $", total,".";
	FinSi
FinProceso
