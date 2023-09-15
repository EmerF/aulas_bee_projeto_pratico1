package com.bees.projeto1;

public class CadastroProduto {

    public String cadastrar(String produto) {
        if(produto.equals("erro")){
            return "erro";
        }
        return "cadastrado";
    }

    public String consultar(String sdd) {
        return "sdd";
    }
    
}
