package project1.example.Project1;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class Project1ApplicationTests {

	ProductRegistration productRegistration = new ProductRegistration();

	@Test
	void testProductRegistrationSuccess(){
	String product = productRegistration.registration("Corona","Beer");
	Assertions.assertEquals("Product Successfully Registered!", product);
}
	@Test
	void testErrorWhenRegisteringProduct(){
		String product = productRegistration.registration("Corona", "Wine");
		Assertions.assertEquals("Error when registering product!", product);
	}
}