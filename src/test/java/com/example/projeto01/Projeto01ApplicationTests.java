package com.example.projeto01;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class CadastroProdutoTests {

	@Test
	public void testCadastroProdutoSucesso() {
		CadastroProduto cadastro = new CadastroProduto();
		String resultado = cadastro.cadastrarProduto("Produto 1");
		Assertions.assertEquals("Produto cadastrado", resultado);
	}

	@Test
	public void testCadastroProdutoErro() {
		CadastroProduto cadastro = new CadastroProduto();
		String resultado = cadastro.cadastrarProduto(null);
		Assertions.assertEquals("Erro no cadastro do produto", resultado);
	}

}
