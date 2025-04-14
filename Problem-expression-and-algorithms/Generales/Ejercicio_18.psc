// Ingresar un solo par de valores A y B y efectuar las 4 operaciones b�sicas. 
// Considerar que,si se intenta dividir por cero, en lugar del resultado, se debe imprimir el mensaje "No es posible la divisi�n".
Algoritmo OperacionesBasicas
	Definir A, B, suma, resta, producto, division Como Real
	// Leer los valores A y B
	Escribir 'Ingrese el valor de A:'
	Leer A
	Escribir 'Ingrese el valor de B:'
	Leer B
	// Realizar las operaciones b�sicas
	suma <- A+B
	resta <- A-B
	producto <- A*B
	// Verificar si B es distinto de cero antes de la divisi�n
	Si B<>0 Entonces
		division <- A/B
	SiNo
		Escribir 'No es posible la divisi�n'
	FinSi
	// Mostrar los resultados de las operaciones
	Escribir 'Suma:', suma
	Escribir 'Resta:', resta
	Escribir 'Producto:', producto
	Si B<>0 Entonces
		Escribir 'Divisi�n:', division
	FinSi
FinAlgoritmo
