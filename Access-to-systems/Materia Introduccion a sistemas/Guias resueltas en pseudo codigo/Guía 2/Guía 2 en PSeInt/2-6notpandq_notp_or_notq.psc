Proceso notpandq_notp_or_notq
	Definir p,q,a,b Como Logico;
	Definir msg Como Caracter;
	Escribir "Ingrese el valor de p: ";
	Leer p;
	Escribir "Ingrese el valor de q: ";
	Leer q;
	a<- !(p Y q);
	b<- !(p) O !(q);
	Si (a=b)
	Entonces
		msg<-"a <=> b";
	SiNo
		msg<-"a !<=> b";
	FinSi
	Escribir msg;
FinProceso
