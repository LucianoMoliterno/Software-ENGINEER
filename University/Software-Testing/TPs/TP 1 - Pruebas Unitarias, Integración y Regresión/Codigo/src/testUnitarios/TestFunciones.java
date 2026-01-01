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
