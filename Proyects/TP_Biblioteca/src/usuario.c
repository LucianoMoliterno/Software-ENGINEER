#include <stdlib.h>
#include <string.h>
#include "usuario.h"

Usuario* crear_usuario(int id, const char* nombre, const char* libro_deseado) {
    Usuario* u = (Usuario*)malloc(sizeof(Usuario));
    if (u) {
        u->id = id;
        strncpy(u->nombre, nombre, 49);
        strncpy(u->libro_deseado, libro_deseado, 49);
        u->nombre[49] = '\0';
        u->libro_deseado[49] = '\0';
    }
    return u;
}
