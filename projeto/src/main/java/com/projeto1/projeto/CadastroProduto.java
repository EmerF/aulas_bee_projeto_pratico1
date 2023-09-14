package com.projeto1.projeto;

public class CadastroProduto {
    
    public String cadastrar(String caderno) {

        if(caderno.equals("erro")) {
            return "erro";
        }
            return "Produto cadastrado";
        }
}
