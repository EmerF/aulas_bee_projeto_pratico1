package techempowers;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class TechEmpowersApplicationTests {
    ProductRegistration cp = new ProductRegistration();
    @Test
    void contextLoads() {
        String ret = cp.cadastrar("Cerveja");
        Assertions.assertEquals("Registered Product!!!", ret);
    }
    @Test
    void testErroCadastroProduto(){
        String ret = cp.cadastrar("erro");
        Assertions.assertNotEquals("Error in product registration", ret);
    }

}

