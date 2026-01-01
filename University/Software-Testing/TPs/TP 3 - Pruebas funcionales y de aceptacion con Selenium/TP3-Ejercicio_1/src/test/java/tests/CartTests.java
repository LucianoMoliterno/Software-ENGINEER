package tests;

import utils.BaseTest;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import static org.junit.jupiter.api.Assertions.assertTrue;

public class CartTests extends BaseTest {

    @Test
    public void agregarProductoAlCarrito() {
        driver.findElement(By.id("user-name")).sendKeys("standard_user");
        driver.findElement(By.id("password")).sendKeys("secret_sauce");
        driver.findElement(By.id("login-button")).click();

        driver.findElement(By.id("add-to-cart-sauce-labs-backpack")).click();
        driver.findElement(By.className("shopping_cart_link")).click();

        assertTrue(driver.findElement(By.className("inventory_item_name")).getText().contains("Backpack"),
                "El producto no fue agregado correctamente al carrito");
    }
}
