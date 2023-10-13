package br.com.gustavo.trabalho1;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.junit.jupiter.api.Assertions;

@SpringBootTest
class Trabalho1ApplicationTests {

	@Test
	public void testCadastroProdutoSucesso() {
		Produto produto = new Produto();
		String resultado = produto.cadastrar("Produto 1");
		Assertions.assertEquals("Produto cadastrado", resultado);
	}

	@Test
	public void testCadastroProdutoErro() {
		Produto produto = new Produto();
		String resultado = produto.cadastrar(null);
		Assertions.assertEquals("Erro no cadastro do produto", resultado);
	}

}