#ifndef LIBRO_H
#define LIBRO_H

typedef struct {
    int id;
    char titulo[50];
    char autor[50];
} Libro;

Libro* crear_libro(int id, const char* titulo, const char* autor);

#endif
