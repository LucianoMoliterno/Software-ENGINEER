package test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import modelo.Cuenta;

class CuentaTest {
	
	private Cuenta cuenta;
	
	@BeforeEach
	void setUp() throws Exception {
		cuenta = new Cuenta("20356298-33", "Garcia Enrique");
	}

	@Test
	public void testIngresar() 
	{
		double saldoAnterior = cuenta.getSaldo();
		try {
			cuenta.ingresar(1000);
			assertTrue(cuenta.getSaldo()==saldoAnterior+1000.0);		
			
		}
		catch (Exception e) 
		{
			fail("No deberia haber fallado");
		}
	}
	
	@Test
	public void testIngresarMontoNegativo() 
	{
		double saldoAnterior = cuenta.getSaldo();
		try {
			cuenta.ingresar(-1000);
		}
		catch (Exception e) 
		{
			assertTrue(cuenta.getSaldo()==saldoAnterior,"Fallo - Permitio ingresar importe negativo");
		}
	}
	
	@Test
	public void testNoPermiteRetirarConFondosInsuficientes() 
	{
		double saldoAnterior =cuenta.getSaldo();
		try 
		{
			cuenta.retirar(1000);
		}
		catch (Exception e) 
		{
			assertTrue(saldoAnterior==cuenta.getSaldo(),"Permitio retirar habiendo fondos insuficientes");
		}
		
	}

}
