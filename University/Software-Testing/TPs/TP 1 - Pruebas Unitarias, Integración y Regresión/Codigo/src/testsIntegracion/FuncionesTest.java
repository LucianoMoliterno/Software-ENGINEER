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
