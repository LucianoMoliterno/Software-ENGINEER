# TP 3 - Pruebas de Aceptación (BDD + Cucumber)

Este repositorio contiene la resolución del Ejercicio 2 del Trabajo Práctico N°3, enfocado en la implementación de pruebas de aceptación utilizando BDD (Behavior Driven Development).

**Materia:** Ingeniería de Software III

**Universidad:** Universidad Nacional de Lanús (UNLa)

**Profesor:** Lic. Pablo San Román

---

## Concepto

Este proyecto demuestra cómo aplicar BDD para alinear la especificación de los requerimientos (negocio) con la implementación técnica. Se utiliza Gherkin para definir los escenarios en lenguaje natural, y Cucumber para vincular dichos escenarios con el código de automatización (Selenium).

## Stack Tecnológico

* **Java (JDK 11+)**
* **Selenium WebDriver (v4.21.0)**: Para la automatización del navegador.
* **Cucumber (v7.18.0)**: Framework BDD para Java.
* **JUnit 5 (v5.9.3 / Platform 1.9.3)**: Utilizado como motor para ejecutar el *Test Runner* de Cucumber.
* **Apache Maven**: Para la gestión de dependencias.

---

## Estructura del Proyecto

El proyecto separa la lógica de negocio (archivos `.feature`) de la implementación técnica (clases `StepDefinitions`).

```bash
TP3-Aceptacion/
├─ src/
│  ├─ test/
│  │  ├─ java/
│  │  │  ├─ runners/
│  │  │  │  └─ RunCucumberTest.java   # Clase Runner para ejecutar Cucumber
│  │  │  └─ stepDefinitions/
│  │  │     └─ LoginSteps.java        # Implementación (Given, When, Then)
│  │  └─ resources/
│  │     └─ features/
│  │        └─ login.feature          # Escenarios de prueba en Gherkin
├─ pom.xml                            # Dependencias (Selenium, Cucumber, JUnit)
```
---

### Escenarios de Prueba

Se implementaron los dos escenarios definidos en `login.feature`:

1.  **Inicio de sesión exitoso**: (Usuario: `standard_user`)
2.  **Inicio de sesión fallido**: (Usuario: `usuario_invalido`)

---

## Ejecución

### Requisitos Previos

* Java JDK (versión 11 o superior).
* Apache Maven.
* Google Chrome (versión actualizada).

### Pasos para Ejecutar

1.  **Clonar el repositorio:**
    ```bash
    git clone [URL-DEL-REPO]
    ```
2.  **Abrir el proyecto:**
    Abrir la carpeta del proyecto con un IDE (preferentemente IntelliJ IDEA).
3.  **Instalar dependencias:**
    El IDE (vía Maven) descargará automáticamente las dependencias definidas en el `pom.xml`.
4.  **Ejecutar las pruebas:**
    Hacer clic derecho en el archivo `src/test/java/runners/RunCucumberTest.java` y seleccionar "Run 'RunCucumberTest'".
