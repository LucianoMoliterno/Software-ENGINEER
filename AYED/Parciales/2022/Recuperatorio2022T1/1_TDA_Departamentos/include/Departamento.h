#ifndef DEPARTAMENTO_H
#define DEPARTAMENTO_H

#include <string>
using namespace std;

// Definici�n de la estructura Departamento
typedef struct {
    int idDepartamento;             // ID del departamento (mayor a cero)
    string nombre;                  // Nombre del departamento
    string director;                // Director del departamento
    int carreras[10];               // IDs de carreras (m�ximo 10)
    string descripcion;             // Descripci�n del departamento
} Departamento;

// Funciones (Primitivas) del TDA Departamento
void crearDepartamento(Departamento &dep, int id, string nombre, string director, string descripcion, int carreras[], int numCarreras);
void mostrarDepartamento(const Departamento &dep, int numCarreras);

#endif
