package com.techempowers.projeto1;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class Projeto1ApplicationTests {

	String ret;

	cadastroProduto cp = new cadastroProduto();

	@Test
	void testSuccessCadastroProduto(){

		ret = cp.cadastrar("Cafe");
		Assertions.assertEquals("Produto cadastrado", ret);
	}
	@Test
	void testErrorCadastroProduto(){
		ret = cp.cadastrar("Cafe");
		Assertions.assertNotEquals("Erro no cadastro do produto", ret);
	}

}
