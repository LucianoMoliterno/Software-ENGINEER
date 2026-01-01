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
