package project1.example.Project1;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class Project1ApplicationTests {

	ProductRegistration pr = new ProductRegistration();

	@Test
	void testProductRegistrationSuccess(){
	String product = pr.registration("Corona");
	Assertions.assertEquals("Product Successfully Registered!", product);
}
	@Test
	void testErrorWhenRegisteringProduct(){
		String product = pr.registration("Spaten");
		Assertions.assertNotEquals("Error when registering product!", product);
	}
}