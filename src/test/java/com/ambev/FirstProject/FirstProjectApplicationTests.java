package com.ambev.FirstProject;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class FirstProjectApplicationTests {
	RegistrationProduct rp  = new RegistrationProduct();

	@Test
	void contextLoads() {

		String ret = rp.register("Cerveja");
		Assertions.assertEquals("Registered product", ret);
	}
	@Test
	void  testErrorRegistratrionProduct(){
		String ret = rp.register("error");
		Assertions.assertNotEquals("Error in product registration. ", ret);
	}

}
