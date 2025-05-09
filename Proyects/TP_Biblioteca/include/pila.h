#ifndef PILA_H
#define PILA_H

typedef struct NodoPila {
    void* dato;
    struct NodoPila* sig;
} NodoPila;

typedef struct {
    NodoPila* tope;
} Pila;

void crear_pila(Pila* p);
void apilar(Pila* p, void* dato);
void* desapilar(Pila* p);
int pila_vacia(Pila* p);
void recorrer_pila(Pila* p, void (*mostrar)(void*));
void destruir_pila(Pila* p, void (*destruir)(void*));

#endif
