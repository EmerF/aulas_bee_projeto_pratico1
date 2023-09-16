package com.example.projetopratico;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class ProjetopraticoApplicationTests {

	@Test
	void contextLoads()
	{
	}

	Cadastro cad = new Cadastro();

	String ret;

	@Test
	void testCadastroSucesso() {
		ret = cad.cadastro("Sucesso no cadastro");
		Assertions.assertEquals("Produto cadastrado", ret);
	}

	@Test
	void testCadastroFalhou() {
		ret = cad.cadastro("Erro no cadastro do produto");
		Assertions.assertNotEquals("Erro", ret);
	}

}
