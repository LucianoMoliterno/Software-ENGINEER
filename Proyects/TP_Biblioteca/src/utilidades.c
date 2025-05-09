#include <stdio.h>
#include <stdlib.h>
#include "utilidades.h"

void mostrar_libro(void* lib) {
    Libro* l = (Libro*)lib;
    printf("ID: %d | Titulo: %s | Autor: %s\n", l->id, l->titulo, l->autor);
}

void destruir_libro(void* lib) {
    free(lib);
}

void mostrar_usuario(void* usr) {
    Usuario* u = (Usuario*)usr;
    printf("ID: %d | Nombre: %s | Desea: %s\n", u->id, u->nombre, u->libro_deseado);
}

void destruir_usuario(void* usr) {
    free(usr);
}
