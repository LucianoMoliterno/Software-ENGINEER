Feature: Inicio de sesión en SauceDemo

  Scenario: Inicio de sesión exitoso
    Given el usuario está en la página de inicio de sesión
    When ingresa usuario "standard_user" y contraseña "secret_sauce"
    Then se muestra la página de productos

  Scenario: Inicio de sesión fallido
    Given el usuario está en la página de inicio de sesión
    When ingresa usuario "usuario_invalido" y contraseña "incorrecta"
    Then se muestra un mensaje de error
