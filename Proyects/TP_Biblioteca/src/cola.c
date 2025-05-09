#include <stdlib.h>
#include "cola.h"

void crear_cola(Cola* c) {
    c->frente = NULL;
    c->final = NULL;
}

void encolar(Cola* c, void* dato) {
    NodoCola* nuevo = (NodoCola*)malloc(sizeof(NodoCola));
    if (nuevo) {
        nuevo->dato = dato;
        nuevo->sig = NULL;
        if (!c->frente)
            c->frente = nuevo;
        else
            c->final->sig = nuevo;
        c->final = nuevo;
    }
}

void* desencolar(Cola* c) {
    if (!c->frente) return NULL;
    NodoCola* temp = c->frente;
    void* dato = temp->dato;
    c->frente = temp->sig;
    if (!c->frente) c->final = NULL;
    free(temp);
    return dato;
}

int cola_vacia(Cola* c) {
    return c->frente == NULL;
}

void recorrer_cola(Cola* c, void (*mostrar)(void*)) {
    NodoCola* actual = c->frente;
    while (actual) {
        mostrar(actual->dato);
        actual = actual->sig;
    }
}

void destruir_cola(Cola* c, void (*destruir)(void*)) {
    while (!cola_vacia(c)) {
        void* dato = desencolar(c);
        destruir(dato);
    }
}
