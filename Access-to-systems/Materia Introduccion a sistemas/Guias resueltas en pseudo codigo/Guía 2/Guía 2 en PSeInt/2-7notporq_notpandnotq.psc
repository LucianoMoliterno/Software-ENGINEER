Proceso notpandq_notpnotq
	Definir p,q,a,b Como Logico;
	Definir msg Como Caracter;
	Escribir "Ingrese el valor de p: ";
	Leer p;
	Escribir "Ingrese el valor de q: ";
	Leer q;
	a<- !(p O q);
	b<- !(p) Y !(q);
	Si (a=b)
	Entonces
		msg<-"a <=> b";
	SiNo
		msg<-"a !<=> b";
	FinSi
	Escribir msg;
FinProceso
