package com.imbev.demo;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class DemoApplicationTests {

	 Cadastro c = new Cadastro();
	String ret;


	@Test
	void contextLoads() {

	}

	@Test
	void testCadastroProduto(){
		ret = c.Cadastro("Produto Cadastrado");
		System.out.println(ret);
		Assertions.assertEquals("Cadastrado",ret);
	}

	@Test
	void testErroCadastroProduto(){
		ret = c.Cadastro("Erro");
		System.out.println(ret);
		Assertions.assertNotEquals("Cadastrado",ret);

	}

}
