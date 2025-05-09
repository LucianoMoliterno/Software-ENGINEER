#include <stdio.h>
#include <stdlib.h>
#include "pila.h"
#include "cola.h"
#include "libro.h"
#include "usuario.h"
#include "utilidades.h"

int main() {
    Pila pilaLibros;
    Cola colaUsuarios;
    crear_pila(&pilaLibros);
    crear_cola(&colaUsuarios);

    int opcion;
    do {
        printf("\n--- MENU BIBLIOTECA ---\n");
        printf("1. Registrar devolucion (Apilar libro)\n");
        printf("2. Reubicar libro (Desapilar)\n");
        printf("3. Registrar solicitud (Encolar usuario)\n");
        printf("4. Procesar prestamo (Desencolar)\n");
        printf("5. Ver libros devueltos\n");
        printf("6. Ver solicitudes pendientes\n");
        printf("0. Salir\n");
        printf("Opcion: ");
        scanf("%d", &opcion);

        int id;
        char nombre[50], titulo[50], autor[50];

        switch (opcion) {
            case 1:
                printf("ID Libro: "); scanf("%d", &id);
                printf("Titulo: "); scanf(" %[^\n]", titulo);
                printf("Autor: "); scanf(" %[^\n]", autor);
                apilar(&pilaLibros, crear_libro(id, titulo, autor));
                break;
            case 2:
                if (!pila_vacia(&pilaLibros)) {
                    Libro* l = (Libro*)desapilar(&pilaLibros);
                    printf("Libro reubicado:\n");
                    mostrar_libro(l);
                    destruir_libro(l);
                } else printf("Pila vacia.\n");
                break;
            case 3:
                printf("ID Usuario: "); scanf("%d", &id);
                printf("Nombre: "); scanf(" %[^\n]", nombre);
                printf("Libro deseado: "); scanf(" %[^\n]", titulo);
                encolar(&colaUsuarios, crear_usuario(id, nombre, titulo));
                break;
            case 4:
                if (!cola_vacia(&colaUsuarios)) {
                    Usuario* u = (Usuario*)desencolar(&colaUsuarios);
                    printf("Prestamo procesado para:\n");
                    mostrar_usuario(u);
                    destruir_usuario(u);
                } else printf("Cola vacia.\n");
                break;
            case 5:
                recorrer_pila(&pilaLibros, mostrar_libro);
                break;
            case 6:
                recorrer_cola(&colaUsuarios, mostrar_usuario);
                break;
            case 0:
                destruir_pila(&pilaLibros, destruir_libro);
                destruir_cola(&colaUsuarios, destruir_usuario);
                break;
        }
    } while (opcion != 0);

    return 0;
}
