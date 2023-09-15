package com.imbev.demo;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class DemoApplicationTests {

	@Test
	void contextLoads() {
		System.out.println("teste de produto");
	}

	Produto l = new Produto();

	String ret ;

	@Test
	void testCadastroProdutoSucesso() {
		ret = l.produto("Produto cadastrado");
		Assertions.assertEquals("ok",ret);
	}

	@Test
	void testCadastroProdutoFalha() {
		ret = l.produto("Erro no cadastro do produto");
		Assertions.assertNotEquals("Erro",ret);
	}

}
