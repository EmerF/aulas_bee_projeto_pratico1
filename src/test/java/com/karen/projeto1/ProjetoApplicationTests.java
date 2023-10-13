package com.karen.projeto1;

import com.karen.projeto1.model.Produto;
import com.karen.projeto1.rest.ProductController;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.Assertions;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class ProjetoApplicationTests {

    @Test
    public void testCadastroProdutoSucesso() {
        String MensagemDeSucesso = "Produto cadastrado";
        Produto produto = new Produto(1, "Spaten", 5.99, "cerveja");
        String produtoCriado = new ProductController().createProduct(produto);
        Assertions.assertEquals(MensagemDeSucesso, produtoCriado);
    }

    @Test
    public void testCadastroProdutoErro() {
        String MensagemDeErro = "Erro no cadastro do produto";
        Produto produto = new Produto(1, null, 5.99, "cerveja");
        String produtoNaoCriado = new ProductController().createProduct(produto);
        Assertions.assertEquals(MensagemDeErro, produtoNaoCriado);
    }
}
