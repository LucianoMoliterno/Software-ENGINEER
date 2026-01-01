package stepDefinitions;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import io.cucumber.java.en.*;
import static org.junit.jupiter.api.Assertions.assertTrue;

public class LoginSteps {
    WebDriver driver;

    @Given("el usuario está en la página de inicio de sesión")
    public void abrirPagina() {
        driver = new ChromeDriver();
        driver.manage().window().maximize();
        driver.get("https://www.saucedemo.com/");
    }

    @When("ingresa usuario {string} y contraseña {string}")
    public void ingresarCredenciales(String usuario, String password) {
        driver.findElement(By.id("user-name")).sendKeys(usuario);
        driver.findElement(By.id("password")).sendKeys(password);
        driver.findElement(By.id("login-button")).click();
    }

    @Then("se muestra la página de productos")
    public void validarLoginExitoso() {
        assertTrue(driver.getCurrentUrl().contains("inventory.html"));
        driver.quit();
    }

    @Then("se muestra un mensaje de error")
    public void validarLoginFallido() {
        assertTrue(driver.findElement(By.cssSelector("h3[data-test='error']")).isDisplayed());
        driver.quit();
    }
}
