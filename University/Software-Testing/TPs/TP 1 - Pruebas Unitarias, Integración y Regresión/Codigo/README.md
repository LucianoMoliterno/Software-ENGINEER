# Scripts de Pruebas – TP N° 1: Pruebas Unitarias, Integración y Regresión

Este documento consolida el código fuente de las clases de pruebas unitarias e integración incluidas en el proyecto.

## Pruebas unitarias

### src/testUnitarios/AdmClienteTest.java
```java
package testUnitarios;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import modelo.AdmCliente;
import modelo.Cliente;

public class AdmClienteTest {

    private AdmCliente admCliente;

    @BeforeEach
    public void setUp() {
        admCliente = new AdmCliente();
    }

    @Test
    public void testAgregarCliente() throws Exception {
    	
        boolean agregado = admCliente.agregarCliente("Roberto A", 12345678L, "9 de julio 336");
        assertTrue(agregado, "El cliente debería agregarse correctamente");
        assertEquals(1, admCliente.getLstCliente().size(), "La lista debe tener 1 cliente");
    }

    @Test
    public void testAgregarClienteDuplicado() throws Exception {
        admCliente.agregarCliente("roberto ermes", 12345678L, "25 de mayo 369");
        Exception exception = assertThrows(Exception.class, () -> {
            admCliente.agregarCliente("Pedro g", 12345678L, "3 de maayo456");
        });
        assertEquals("Error! El cliente con DNI #12345678 ya existe en la lista de clientes.", exception.getMessage());
    }

    @Test
    public void testTraerClientePorDni() throws Exception {
        admCliente.agregarCliente("robert", 12345678L, "san junto 377");
        Cliente cliente = admCliente.traerCliente(12345678L);
        assertNotNull(cliente, "El cliente no debería ser nulo");
        assertEquals("robert", cliente.getNombre(), "El nombre debe coincidir");
    }

    @Test
    public void testTraerClientePorId() throws Exception {
        admCliente.agregarCliente("Juan e", 12345678L, "cavur 444");
        Cliente cliente = admCliente.traerCliente(1);
        assertNotNull(cliente, "El cliente no debería ser nulo");
        assertEquals(1, cliente.getIdCliente(), "El ID debe ser 1");
    }

    @Test
    public void testToString() throws Exception {
        admCliente.agregarCliente("Juan Pérez", 12345678L, "Calle Falsa 123");
        String texto = admCliente.toString();
        assertTrue(texto.contains("Juan Pérez"), "El toString debe contener el nombre del cliente");
    }
}
```

### src/testUnitarios/AdmProductoTest.java
```java
package testUnitarios;

import modelo.AdmProducto;
import modelo.Producto;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

public class AdmProductoTest {

    private AdmProducto admin;

    @BeforeEach
    public void setUp() throws Exception {
        admin = new AdmProducto();
        Producto p1 = mock(Producto.class);
        Producto p2 = mock(Producto.class);
        when(p1.getIdProducto()).thenReturn(1);
        when(p1.getNombre()).thenReturn("Pan");
        when(p1.getPrecio()).thenReturn(150.0f);
        when(p2.getIdProducto()).thenReturn(2);
        when(p2.getNombre()).thenReturn("Leche");
        when(p2.getPrecio()).thenReturn(300.0f);
        admin.getLstProducto().add(p1);
        admin.getLstProducto().add(p2);
    }

 
    @Test
    public void testAgregarProductoNuevo() throws Exception {
        int sizeAntes = admin.getLstProducto().size();

        boolean agregado = admin.agregarProducto("Azucar", 200.0f);

        assertTrue(agregado, "El producto debería haberse agregado correctamente");
        assertEquals(sizeAntes + 1, admin.getLstProducto().size(), "El tamaño de la lista debería aumentar en 1");
    }

    @Test
    public void testAgregarProductoDuplicado() {
        Exception ex = assertThrows(Exception.class, () -> {
            admin.agregarProducto("Pan", 180.0f);
        });
        assertTrue(ex.getMessage().contains("ya existe"), "El mensaje debería indicar que el producto ya existe");
    }


    @Test
    public void testTraerProductoPorNombreExistente() {
        Producto p = admin.traerProducto("Leche");
        assertNotNull(p, "El producto debería existir");
        assertEquals("Leche", p.getNombre());
    }

    @Test
    public void testTraerProductoPorNombreNoExistente() {
        Producto p = admin.traerProducto("Café");
        assertNull(p, "El producto no debería existir");
    }


    @Test
    public void testTraerProductoPorIdExistente() {
        Producto p = admin.traerProducto(1);
        assertNotNull(p, "El producto debería existir");
        assertEquals(1, p.getIdProducto());
    }


    @Test
    public void testTraerProductoPorIdNoExistente() {
        Producto p = admin.traerProducto(99);
        assertNull(p, "No debería encontrarse un producto con ese ID");
    }


    @Test
    public void testModificarProductoExistente() throws Exception {
        Producto p = admin.traerProducto(2);
        assertNotNull(p, "Debe existir el producto antes de modificar");


        
        boolean modificado = admin.modificarProducto(2, "Leche entera", 350.0f);

        assertTrue(modificado, "La modificación debería ser exitosa");
    }


    @Test
    public void testModificarProductoInexistente() {
        Exception ex = assertThrows(Exception.class, () -> {
            admin.modificarProducto(99, "Manteca", 400.0f);
        });
        assertTrue(ex.getMessage().contains("no se puede modificar"), "Debería lanzar una excepción por inexistencia");
    }
}
```

### src/testUnitarios/CarritoTest.java
```java
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
```

### src/testUnitarios/TestFunciones.java
```java
package testUnitarios;

import modelo.Funciones;
import org.junit.jupiter.api.Test;

import java.time.LocalDate;
import java.time.LocalTime;

import static org.junit.jupiter.api.Assertions.*;

public class TestFunciones {

    @Test
    public void testEsBisiesto() {
        assertTrue(Funciones.esBisiesto(2024));
        assertFalse(Funciones.esBisiesto(2023));
    }

    @Test
    public void testEsFechaValida() {
        assertTrue(Funciones.esFechaValida(LocalDate.of(2024, 2, 29))); // Año bisiesto
        assertFalse(Funciones.esFechaValida(LocalDate.of(2023, 2, 29))); // No bisiesto
        assertTrue(Funciones.esFechaValida(LocalDate.of(2023, 12, 31)));
    }

    @Test
    public void testTraerFechaCorta() {
        LocalDate fecha = LocalDate.of(2023, 5, 10);
        assertEquals("10/5/2023", Funciones.traerFechaCorta(fecha));
    }

    @Test
    public void testTraerHoraCorta() {
        LocalTime hora = LocalTime.of(14, 29);
        assertEquals("14:30", Funciones.traerHoraCorta(hora));
    }

    @Test
    public void testEsDiaHabil() {
        assertTrue(Funciones.esDiaHabil(LocalDate.of(2023, 10, 2))); // Lunes
        assertFalse(Funciones.esDiaHabil(LocalDate.of(2023, 10, 7))); // Sábado
    }

    @Test
    public void testTraerDiaDeLaSemana() {
        assertEquals("Lunes", Funciones.traerDiaDeLaSemana(LocalDate.of(2023, 10, 2)));
        assertEquals("Domingo", Funciones.traerDiaDeLaSemana(LocalDate.of(2023, 10, 1)));
    }

    @Test
    public void testTraerMesEnLetras() {
        assertEquals("Enero", Funciones.traerMesEnLetras(LocalDate.of(2023, 1, 10)));
        assertEquals("Diciembre", Funciones.traerMesEnLetras(LocalDate.of(2023, 12, 10)));
    }

    @Test
    public void testTraerFechaLarga() {
        LocalDate fecha = LocalDate.of(2023, 10, 2);
        String resultado = Funciones.traerFechaLarga(fecha);
        assertTrue(resultado.contains("Lunes") && resultado.contains("Octubre"));
    }

    @Test
    public void testTraerCantDiasDeUnMes() {
        assertEquals(31, Funciones.traerCantDiasDeUnMes(2023, 1));
        assertEquals(30, Funciones.traerCantDiasDeUnMes(2023, 6));
        assertEquals(29, Funciones.traerCantDiasDeUnMes(2024, 2)); // Año bisiesto
        assertEquals(28, Funciones.traerCantDiasDeUnMes(2023, 2)); // No bisiesto
    }

    @Test
    public void testAproximar2Decimal() {
        assertEquals(3.14, Funciones.aproximar2Decimal(3.14159), 0.001);
        assertEquals(2.72, Funciones.aproximar2Decimal(2.71828), 0.001);
    }

    @Test
    public void testEsNumeroYLetra() {
        assertTrue(Funciones.esNumero('5'));
        assertFalse(Funciones.esNumero('a'));
        assertTrue(Funciones.esLetra('a'));
        assertFalse(Funciones.esLetra('5'));
    }

    @Test
    public void testEsCadenaNrosYLetras() {
        assertTrue(Funciones.esCadenaNros("12345"));
        assertFalse(Funciones.esCadenaNros("12a45"));
        assertTrue(Funciones.esCadenaLetras("Hola"));
        assertFalse(Funciones.esCadenaLetras("Hola1"));
    }

    @Test
    public void testConvertirADouble() {
        assertEquals(10.0, Funciones.convertirADouble(10));
    }
}
```

### src/testUnitarios/TestSupermercado.java
```java
package testUnitarios;

import modelo.*;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import java.time.LocalDate;
import java.time.LocalTime;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

public class TestSupermercado {

    private Supermercado supermercado;
    private AdmProducto admProductoMock;
    private AdmCliente admClienteMock;
    private AdmCarrito admCarritoMock;
    private AdmTarjeta admTarjetaMock;

    private Cliente clienteMock;
    private Producto productoMock;
    private Carrito carritoMock;

    @BeforeEach
    public void setUp() {
        supermercado = new Supermercado();

        // Creamos mocks
        admProductoMock = mock(AdmProducto.class);
        admClienteMock = mock(AdmCliente.class);
        admCarritoMock = mock(AdmCarrito.class);
        admTarjetaMock = mock(AdmTarjeta.class);

        clienteMock = mock(Cliente.class);
        productoMock = mock(Producto.class);
        carritoMock = mock(Carrito.class);

        // Inyectamos mocks en el supermercado
        supermercado.setAdmProducto(admProductoMock);
        supermercado.setAdmCliente(admClienteMock);
        supermercado.setAdmCarrito(admCarritoMock);
        supermercado.setAdmTarjeta(admTarjetaMock);
    }


    @Test
    public void testAgregarProducto() throws Exception {
        when(admProductoMock.agregarProducto("Pan", 250f)).thenReturn(true);

        boolean resultado = supermercado.agregarProducto("Pan", 250f);

        assertTrue(resultado);
        verify(admProductoMock).agregarProducto("Pan", 250f);
    }

    @Test
    public void testEliminarProductoNoExistenteLanzaExcepcion() {
        when(admProductoMock.traerProducto(99)).thenReturn(null);
        when(admCarritoMock.traerCarritoConProducto(99)).thenReturn(null);

        Exception ex = assertThrows(Exception.class, () -> supermercado.eliminarProducto(99));
        assertTrue(ex.getMessage().contains("no se puede eliminar"));
    }

    @Test
    public void testAgregarCliente() throws Exception {
        when(admClienteMock.agregarCliente("Micaela", 12345678L, "Lanús")).thenReturn(true);

        boolean agregado = supermercado.agregarCliente("Micaela", 12345678L, "Lanús");

        assertTrue(agregado);
        verify(admClienteMock).agregarCliente("Micaela", 12345678L, "Lanús");
    }

    @Test
    public void testEliminarClienteConCarritoAsociadoLanzaExcepcion() {
        when(admClienteMock.traerCliente(1)).thenReturn(clienteMock);
        when(admCarritoMock.traerCarritoDeCliente(1)).thenReturn(carritoMock);

        Exception ex = assertThrows(Exception.class, () -> supermercado.eliminarCliente(1));
        assertTrue(ex.getMessage().contains("tiene algun carrito asociado"));
    }


    @Test
    public void testAgregarCarrito() throws Exception {
        when(admCarritoMock.agregarCarrito(any(LocalDate.class), any(LocalTime.class), eq(clienteMock)))
                .thenReturn(true);

        boolean resultado = supermercado.agregarCarrito(LocalDate.now(), LocalTime.now(), clienteMock);

        assertTrue(resultado);
        verify(admCarritoMock).agregarCarrito(any(LocalDate.class), any(LocalTime.class), eq(clienteMock));
    }


    @Test
    public void testCalcularTotalPorDniCliente() throws Exception {
        when(clienteMock.getDni()).thenReturn(12345678L);
        when(admClienteMock.traerCliente(12345678L)).thenReturn(clienteMock);
        Carrito carrito1 = mock(Carrito.class);
        Carrito carrito2 = mock(Carrito.class);
        when(carrito1.getCliente()).thenReturn(clienteMock);
        when(carrito2.getCliente()).thenReturn(clienteMock);
        when(carrito1.calcularTotal()).thenReturn(200f);
        when(carrito2.calcularTotal()).thenReturn(300f);
        when(admCarritoMock.getLstCarrito()).thenReturn(java.util.List.of(carrito1, carrito2));
        float total = supermercado.calcularTotal(12345678L);
        assertEquals(500f, total, 0.01, "El total calculado debería ser 500");
    }


    @Test
    public void testFallaIntencionalmente() throws Exception {
        when(admProductoMock.agregarProducto("Yerba", 1500f)).thenReturn(true);
        boolean agregado = supermercado.agregarProducto("Yerba", 1500f);

              assertFalse(agregado, " Este test está diseñado para fallar intencionalmente");
    }
}
```

## Pruebas de integración

### src/testsIntegracion/FuncionesTest.java
```java
package testsIntegracion;

import static org.junit.jupiter.api.Assertions.*;
import java.time.LocalDate;
import java.time.LocalTime;
import org.junit.jupiter.api.Test;

import modelo.Funciones;

class FuncionesTest {

    @Test
    void testEsBisiesto() {
        assertTrue(Funciones.esBisiesto(2024));
        assertFalse(Funciones.esBisiesto(2023));
    }

    @Test
    void testEsFechaValida() {
        assertTrue(Funciones.esFechaValida(LocalDate.of(2024, 2, 29)));
        assertFalse(Funciones.esFechaValida(LocalDate.of(2023, 2, 29)));
    }

    @Test
    void testTraerFechaCorta() {
        LocalDate fecha = LocalDate.of(2025, 10, 7);
        assertEquals("7/10/2025", Funciones.traerFechaCorta(fecha));
    }

    @Test
    void testTraerHoraCorta() {
        LocalTime hora = LocalTime.of(14, 30);
        assertEquals("14:30", Funciones.traerHoraCorta(hora));
    }

    @Test
    void testEsDiaHabil() {
        assertTrue(Funciones.esDiaHabil(LocalDate.of(2025, 10, 6))); // Lunes
        assertFalse(Funciones.esDiaHabil(LocalDate.of(2025, 10, 5))); // Domingo
    }

    @Test
    void testTraerDiaDeLaSemana() {
        assertEquals("Martes", Funciones.traerDiaDeLaSemana(LocalDate.of(2025, 10, 7)));
    }

    @Test
    void testTraerMesEnLetras() {
        assertEquals("Octubre", Funciones.traerMesEnLetras(LocalDate.of(2025, 10, 7)));
    }

    @Test
    void testTraerFechaLarga() {
        assertEquals("Martes 7 de Octubre del 2025", Funciones.traerFechaLarga(LocalDate.of(2025, 10, 7)));
    }

    @Test
    void testTraerCantDiasDeUnMes() {
        assertEquals(29, Funciones.traerCantDiasDeUnMes(2024, 2));
        assertEquals(28, Funciones.traerCantDiasDeUnMes(2023, 2));
        assertEquals(31, Funciones.traerCantDiasDeUnMes(2025, 1));
    }

    @Test
    void testAproximar2Decimal() {
        assertEquals(3.14, Funciones.aproximar2Decimal(3.1416), 0.001);
    }

    @Test
    void testEsNumero() {
        assertTrue(Funciones.esNumero('7'));
        assertFalse(Funciones.esNumero('a'));
    }

    @Test
    void testEsLetra() {
        assertTrue(Funciones.esLetra('a'));
        assertFalse(Funciones.esLetra('7'));
    }

    @Test
    void testEsCadenaNros() {
        assertTrue(Funciones.esCadenaNros("12345"));
        assertFalse(Funciones.esCadenaNros("12a45"));
    }

    @Test
    void testEsCadenaLetras() {
        assertTrue(Funciones.esCadenaLetras("roberto"));
        assertFalse(Funciones.esCadenaLetras("roberto123"));
    }

    @Test
    void testConvertirADouble() {
        assertEquals(10.0, Funciones.convertirADouble(10));
    }
}
```
