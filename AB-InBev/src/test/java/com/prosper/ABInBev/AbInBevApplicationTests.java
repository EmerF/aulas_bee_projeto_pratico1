package com.prosper.ABInBev;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class AbInBevApplicationTests {
	CreateProduct cp = new CreateProduct();
	String ret ;


	@Test
	void contextLoads() {
		System.out.println("Desafio One");
	}

	@Test
	void TestCongratsProduct(){

		String ret = cp.create("ok");
		Assertions.assertEquals("Produto cadastrado", ret);
	}
	@Test
	void TestFailedProduct(){
		String ret = cp.create("erro");
		Assertions.assertNotEquals("Produto cadastrado", ret);
	}


}
