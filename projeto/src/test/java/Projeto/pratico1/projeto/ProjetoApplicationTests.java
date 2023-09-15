package Projeto.pratico1.projeto;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class ProjetoApplicationTests {

	CadastroProduto cp = new CadastroProduto();
	String ret;

	@Test
	void CadastroProduto(){
		String ret = cp.cadastrar("Energetico");
		Assertions.assertEquals("Produto cadastrado",ret);
	}

	@Test
	void ErroCadastroProduto(){
		String ret = cp.cadastrar("Erro");
		Assertions.assertNotEquals("Erro", ret);
	}

}
