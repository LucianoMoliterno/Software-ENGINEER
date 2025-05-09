#ifndef COLA_H
#define COLA_H

typedef struct NodoCola {
    void* dato;
    struct NodoCola* sig;
} NodoCola;

typedef struct {
    NodoCola* frente;
    NodoCola* final;
} Cola;

void crear_cola(Cola* c);
void encolar(Cola* c, void* dato);
void* desencolar(Cola* c);
int cola_vacia(Cola* c);
void recorrer_cola(Cola* c, void (*mostrar)(void*));
void destruir_cola(Cola* c, void (*destruir)(void*));

#endif
