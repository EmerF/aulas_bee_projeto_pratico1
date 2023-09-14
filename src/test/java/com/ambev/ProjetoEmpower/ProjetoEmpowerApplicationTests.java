package com.ambev.ProjetoEmpower;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class ProjetoEmpowerApplicationTests {
	CadastroProduto cp = new CadastroProduto();
	@Test
	void contextLoads() {
		String ret = cp.cadastrar("Cerveja");
		Assertions.assertEquals("Produto Cadastrado!!!", ret);
	}
	@Test
	void testErroCadastroProduto(){
		String ret = cp.cadastrar("erro");
		Assertions.assertNotEquals("Erro no cadastro do produto", ret);
	}

}
