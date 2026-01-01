# TP 3 - Pruebas Funcionales (Selenium + JUnit)

Este repositorio contiene la resolución del Ejercicio 1 del Trabajo Práctico N°3, enfocado en la automatización de pruebas funcionales.

**Materia:** Ingeniería de Software III

**Universidad:** Universidad Nacional de Lanús (UNLa)

**Profesor:** Lic. Pablo San Román

---

## Stack Tecnológico

* **Java (JDK 11+)**
* **Selenium WebDriver (v4.21.0)**: Para la automatización e interacción con el navegador.
* **JUnit 5 (v5.9.3)**: Como framework de pruebas y para las aserciones.
* **Apache Maven**: Para la gestión de dependencias y del ciclo de vida del proyecto.

---

## Estructura del Proyecto

La estructura del proyecto sigue el layout estándar de Maven para pruebas, separando las clases de utilidad de las clases de prueba.

```bash
tp3-selenium-functional/
├─ src/
│  └─ test/java/
│     ├─ utils/BaseTest.java      # Configuración base (setUp y tearDown)
│     ├─ tests/LoginTests.java    # Pruebas de Login (CF-001, CF-002)
│     └─ tests/CartTests.java     # Pruebas de Carrito (CF-003)
├─ pom.xml                        # Dependencias (Selenium, JUnit)
```
---

## Objetivo

El objetivo de este proyecto es validar las funcionalidades críticas del sitio [https://www.saucedemo.com/](https://www.saucedemo.com/) aplicando técnicas de testing funcional (caja negra).

### Casos de Prueba Automatizados

Se han automatizado los siguientes tres casos de prueba funcionales:

1.  **CF-001: Login Exitoso**: Valida el inicio de sesión utilizando credenciales válidas (`standard_user`).
2.  **CF-002: Login Fallido**: Valida la respuesta del sistema (mensaje de error) al usar credenciales inválidas.
3.  **CF-003: Agregar Producto al Carrito**: Valida el flujo completo de iniciar sesión, seleccionar un producto ("Sauce Labs Backpack") y verificar que se haya agregado correctamente al carrito de compras.

---

## Ejecución

### Requisitos Previos

* Java JDK (versión 11 o superior).
* Apache Maven (para gestión de dependencias).
* Google Chrome (versión actualizada).

### Pasos para Ejecutar

1.  **Clonar el repositorio:**
    ```bash
    git clone [URL-DEL-REPO]
    ```
2.  **Abrir el proyecto:**
    Abrir la carpeta del proyecto con un IDE (preferentemente IntelliJ IDEA o Eclipse).
3.  **Instalar dependencias:**
    El IDE (vía Maven) descargará automáticamente las dependencias definidas en el `pom.xml`.
4.  **Ejecutar las pruebas:**
    * **Desde el IDE:** Hacer clic derecho en la carpeta `src/test/java/tests` y seleccionar "Run 'Tests in 'tests''".
    * **Desde la terminal:** Navegar a la raíz del proyecto y ejecutar:
        ```bash
        mvn test
        ```
