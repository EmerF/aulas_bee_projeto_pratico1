package com.projeto1.projeto;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.swing.*;

@SpringBootTest
class ProjetoApplicationTests {

	@Test
	void contextLoads() {
	}

	CadastroProduto cp = new CadastroProduto();

	@Test
	void testCadastroProduto(){
		String produto = cp.cadastrar("Refrigerante");
		Assertions.assertEquals("Produto cadastrado!", produto);
	}

	@Test
	void testErroCadastroProduto(){
		String produto = cp.cadastrar("erro");
		Assertions.assertNotEquals("Erro no cadastro do produto!", produto);
	}

}
