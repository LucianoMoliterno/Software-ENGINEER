#ifndef LISTA_H
#define LISTA_H

// Definiciones de tipos
typedef void* PtrDato;

typedef struct NodoE NodoE; // Declaraci�n adelantada de NodoE
typedef NodoE* PtrNodo;     // Ahora PtrNodo se define correctamente

struct NodoE {
    PtrDato dato;
    PtrNodo sgte; // Uso de PtrNodo correctamente despu�s de su definici�n
};

typedef struct ListaE {
    PtrNodo primero; // Uso de PtrNodo sin problemas
} ListaE;

typedef ListaE* PtrLista; // Definici�n de PtrLista correctamente

// Primitivas
PtrLista crearLista();
void insertarAlFinal(PtrLista lista, PtrDato dato);
PtrLista duplicarLista(PtrLista lista);
PtrNodo crearNodo(PtrDato dato);
void mostrarLista(PtrLista lista, void (*mostrarDato)(PtrDato dato));

#endif
