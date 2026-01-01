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
