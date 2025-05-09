#include <stdlib.h>
#include <string.h>
#include "libro.h"

Libro* crear_libro(int id, const char* titulo, const char* autor) {
    Libro* l = (Libro*)malloc(sizeof(Libro));
    if (l) {
        l->id = id;
        strncpy(l->titulo, titulo, 49);
        strncpy(l->autor, autor, 49);
        l->titulo[49] = '\0';
        l->autor[49] = '\0';
    }
    return l;
}
