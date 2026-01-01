package testUnitarios;

import static org.junit.jupiter.api.Assertions.*;

import java.time.LocalDate;
import java.time.LocalTime;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import modelo.Carrito;
import modelo.Cliente;
import modelo.Producto;

public class CarritoTest {

    private Carrito carrito;
    private Cliente cliente;
    private Producto producto1;
    private Producto producto2;

    @BeforeEach
    void setUp() {
        cliente = new Cliente(1, "Roberto",2, "9 de julio 1212"); 
        producto1 = new Producto(1, "Mouse", 1000f);
        producto2 = new Producto(2, "Teclado", 2000f);
        carrito = new Carrito(1, LocalDate.now(), LocalTime.now(), cliente);
    }

    @Test
    void testAgregarItem() {
        assertTrue(carrito.agregarItem(producto1, 2));
        assertEquals(1, carrito.getLstItem().size());
    }

    @Test
    void testCalcularTotal() {
        carrito.agregarItem(producto1, 1);
        carrito.agregarItem(producto2, 1);
        float total = carrito.calcularTotal();
        assertEquals(3000f, total);
    }

    @Test
    void testEliminarItem() throws Exception {
        carrito.agregarItem(producto1, 2);
        carrito.eliminarItem(producto1, 1);
        assertEquals(1, carrito.traerItemCarrito(producto1).getCantidad());
    }
    
    @Test
    void testFallaCalculoTotal() {
        carrito.agregarItem(producto1, 1);
        carrito.agregarItem(producto2, 1);
        float total = carrito.calcularTotal();

        assertEquals(5000f, total, "El total no coincide con el esperado");
    }
}
