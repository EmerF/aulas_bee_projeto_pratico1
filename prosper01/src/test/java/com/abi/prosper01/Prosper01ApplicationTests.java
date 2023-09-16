package com.abi.prosper01;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class Prosper01ApplicationTests {

    private CadastroProduto cadastroProduto;

    @BeforeEach
    void setUp() {
        // Inicializar sua classe de cadastro de produtos aqui
        cadastroProduto = new CadastroProduto();
    }

    @Test
    void testCadastroProdutoComSucesso() {
        // Dados de exemplo para o teste de sucesso
        Produto produto = new Produto("Nome do Produto", 100.0);

        // Realizar o cadastro do produto e verificar o resultado
        String resultado = cadastroProduto.cadastrarProduto(produto);

        // Verificar se o resultado é "Produto cadastrado"
        assertEquals("Produto cadastrado", resultado);
    }

    @Test
    void testCadastroProdutoComErro() {
        // Dados de exemplo para o teste de erro
        Produto produto = new Produto("Nome inválido", -10.0);

        // Realizar o cadastro do produto e verificar o resultado
        String resultado = cadastroProduto.cadastrarProduto(produto);

        // Verificar se o resultado é "Erro no cadastro do produto"
        assertEquals("Erro no cadastro do produto", resultado);
    }
}
