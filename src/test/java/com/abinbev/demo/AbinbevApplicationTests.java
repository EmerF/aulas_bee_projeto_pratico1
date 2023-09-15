package com.abinbev.demo;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class AbinbevApplicationTests {

	@Test
	void contextLoads() {
	}
	CadastroProduto cp = new CadastroProduto();
	String ret ;

	@Test
	void testCadastroProduto(){

		String ret = cp.cadastrar("ok");
		Assertions.assertEquals("cadastrado", ret);
	}
	@Test
	void testErroCadastroProduto(){
		String ret = cp.cadastrar("erro");
		Assertions.assertNotEquals("cadastrado", ret);
	}

}
