package com.bees.projeto1;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class Projeto1ApplicationTests {

	CadastroProduto cp = new CadastroProduto();
	String ret ;

	@Test
	void contextLoads() {
		System.out.println("Funcionando!");
	}
    
	@Test
	void testCadastroProduto(){

		String ret = cp.cadastrar("Skol");
		Assertions.assertEquals("cadastrado", ret);
	}
	@Test
	void testErroCadastroProduto(){
		String ret = cp.cadastrar("erro");
		Assertions.assertNotEquals("cadastrado", ret);
	}

}