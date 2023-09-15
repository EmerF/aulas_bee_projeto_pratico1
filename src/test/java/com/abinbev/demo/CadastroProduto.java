package com.abinbev.demo;

public class CadastroProduto {
    public String cadastrar(String analisando) {
        if(analisando.equals("erro")){
            return "erro";
        }
        return "cadastrado";
    }

}
