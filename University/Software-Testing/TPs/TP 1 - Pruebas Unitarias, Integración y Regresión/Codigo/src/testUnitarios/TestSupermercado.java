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
