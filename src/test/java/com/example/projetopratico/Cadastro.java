package com.example.projetopratico;

public class Cadastro {

    public String cadastro(String produto){
        if(produto.equals("erro")) {
            return "Erro";
        }
        return "Produto cadastrado";
    }
}
