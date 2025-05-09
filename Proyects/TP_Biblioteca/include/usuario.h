#ifndef USUARIO_H
#define USUARIO_H

typedef struct {
    int id;
    char nombre[50];
    char libro_deseado[50];
} Usuario;

Usuario* crear_usuario(int id, const char* nombre, const char* libro_deseado);

#endif
