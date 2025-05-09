#include <stdlib.h>
#include "pila.h"

void crear_pila(Pila* p) {
    p->tope = NULL;
}

void apilar(Pila* p, void* dato) {
    NodoPila* nuevo = (NodoPila*)malloc(sizeof(NodoPila));
    if (nuevo) {
        nuevo->dato = dato;
        nuevo->sig = p->tope;
        p->tope = nuevo;
    }
}

void* desapilar(Pila* p) {
    if (!p->tope) return NULL;
    NodoPila* temp = p->tope;
    void* dato = temp->dato;
    p->tope = temp->sig;
    free(temp);
    return dato;
}

int pila_vacia(Pila* p) {
    return p->tope == NULL;
}

void recorrer_pila(Pila* p, void (*mostrar)(void*)) {
    NodoPila* actual = p->tope;
    while (actual) {
        mostrar(actual->dato);
        actual = actual->sig;
    }
}

void destruir_pila(Pila* p, void (*destruir)(void*)) {
    while (!pila_vacia(p)) {
        void* dato = desapilar(p);
        destruir(dato);
    }
}
