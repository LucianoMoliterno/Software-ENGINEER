#include "../include/estadio.h"
#include <iostream>

// Implementaci�n de la funci�n para crear un estadio
Estadio crearEstadio(const std::string& nombre, int capacidad, const std::string& ciudad) {
    Estadio estadio;
    estadio.nombre = nombre;
    estadio.capacidad = capacidad;
    estadio.ciudad = ciudad;
    return estadio;
}

// Implementaci�n de la funci�n para mostrar un estadio
void mostrarEstadio(const Estadio& estadio) {
    std::cout << "Estadio: " << estadio.nombre
              << ", Capacidad: " << estadio.capacidad
              << ", Ciudad: " << estadio.ciudad << std::endl;
}
