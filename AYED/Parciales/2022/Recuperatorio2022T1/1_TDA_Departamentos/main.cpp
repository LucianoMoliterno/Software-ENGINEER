#include "Departamento.h"
#include <iostream>
using namespace std;

int main() {
    // Declaraci�n del objeto Departamento
    Departamento dep1;

    // Datos de ejemplo para inicializar el Departamento
    int carreras[] = {101, 102, 103, 104}; // IDs de carreras
    int numCarreras = 4;

    // Crear el Departamento con los datos proporcionados
    crearDepartamento(dep1, 1, "Ciencias Exactas", "Dr. Perez", "Departamento dedicado a la investigaci�n en ciencias exactas.", carreras, numCarreras);

    // Mostrar la informaci�n del Departamento
    cout << "Informaci�n del Departamento:" << endl;
    mostrarDepartamento(dep1, numCarreras);

    return 0;
}
