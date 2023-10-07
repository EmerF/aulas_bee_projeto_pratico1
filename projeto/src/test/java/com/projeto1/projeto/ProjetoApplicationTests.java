package com.projeto1.projeto;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class ProjetoApplicationTests {

	CadastroProduto cp = new CadastroProduto();

	@Test
	void testCadastrarProduto() {

		String ret = cp.cadastrar("caderno");
		Assertions.assertEquals("Produto cadastrado", ret);
	}

	@Test
	void testErroCadastroProduto() {

		String ret = cp.cadastrar("erro");
		Assertions.assertNotEquals("Erro no cadastro do Produto", ret);
	}
}
