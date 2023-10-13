package com.ambev.techempowers;

import org.assertj.core.api.Assert;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class ProjetoApplicationTests {
	CadastroProduto cp = new CadastroProduto();
	String ret;

	@Test
	void testCadastroProduto(){

		String ret = cp.cadastrar("produto teste");
		Assertions.assertEquals("Produto cadastrado", ret);
	}
	@Test
	void testErroCadastroProduto(){
		String ret = cp.cadastrar("erro");
		Assertions.assertNotEquals("Erro no cadastro do produto", ret);
	}
}
