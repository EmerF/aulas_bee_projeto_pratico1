package com.techempowers.projeto1;

public class cadastroProduto {

    public String cadastrar(String produto) {
        if (produto.equals("Cafe")) {
            return "Produto cadastrado";
        }
        return "Erro no cadastro do produto";
    }
}
