package tests;

import utils.BaseTest;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import static org.junit.jupiter.api.Assertions.assertTrue;

public class LoginTests extends BaseTest {

    @Test
    public void loginExitoso() {
        driver.findElement(By.id("user-name")).sendKeys("standard_user");
        driver.findElement(By.id("password")).sendKeys("secret_sauce");
        driver.findElement(By.id("login-button")).click();
        assertTrue(driver.getCurrentUrl().contains("inventory.html"), "El login no fue exitoso");
    }

    @Test
    public void loginFallido() {
        driver.findElement(By.id("user-name")).sendKeys("usuario_invalido");
        driver.findElement(By.id("password")).sendKeys("12345");
        driver.findElement(By.id("login-button")).click();
        assertTrue(driver.findElement(By.cssSelector("h3[data-test='error']")).isDisplayed(),
                "El mensaje de error no fue mostrado");
    }
}
