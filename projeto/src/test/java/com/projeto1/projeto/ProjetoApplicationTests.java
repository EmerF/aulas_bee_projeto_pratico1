package com.projeto1.projeto;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.swing.*;

@SpringBootTest
class ProjetoApplicationTests {

	CadastroProduto cp = new CadastroProduto();

	@Test
	void contextLoads() {
		System.out.println("Teste!");
	}

	@Test
	void testCadastroProduto(){
		String produto = cp.cadastrar("Refrigerante");
		Assertions.assertEquals("Produto cadastrado!", produto);
	}

	@Test
	void testErroCadastroProduto(){
		String produto = cp.cadastrar("erro");
		Assertions.assertNotEquals("Produto cadastrado!", produto);
	}

}
