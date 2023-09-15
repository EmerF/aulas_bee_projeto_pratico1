package com.projeto.projeto;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class ProjetoApplicationTests {

	@Test
	void contextLoads() {}

		cadastro l = new cadastro();

		String ret;

		@Test
		void testcadastroSucesso() {
			ret = l.cadastro("Sucesso");
			Assertions.assertEquals("ok", ret);
		}

		@Test
		void testcadastroFalha(){
			ret = l.cadastro("Erro");
			Assertions.assertNotEquals("Erro", ret);

		}

	}
