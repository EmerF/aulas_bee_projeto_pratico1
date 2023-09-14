package com.ambev.ProjetoEmpower;

public class CadastroProduto {
    public String cadastrar(String cerveja) {
        if(cerveja.equals("erro")){
            return "erro";
        }
        return "Produto Cadastrado!!!";
    }
}
