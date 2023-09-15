package com.example.projeto01;

public class CadastroProduto {
    public String cadastrarProduto(String nome){
        if(nome == null){
            return "Erro no cadastro do produto";
        }
        return "Produto cadastrado";
    }
}
