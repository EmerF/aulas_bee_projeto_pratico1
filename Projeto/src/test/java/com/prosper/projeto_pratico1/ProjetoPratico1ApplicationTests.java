package com.prosper.projeto_pratico1;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class ProjetoPratico1ApplicationTests {

	CadastroProduto cp = new CadastroProduto();
	String ret ;

	@Test
	void contextLoads() {
		System.out.println("Funcionando!");
	}

	@Test
	void testCadastroProduto(){

		ret = cp.cadastrar("Sucesso");
		Assertions.assertEquals("cadastrado", ret);
	}
	@Test
	void testErroCadastroProduto(){
		ret = cp.cadastrar("erro");
		Assertions.assertNotEquals("Erro", ret);
	}

}