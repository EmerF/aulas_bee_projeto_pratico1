package com.projeto1.projeto;

import javax.swing.*;

public class CadastroProduto {
    public String cadastrar(String bebida) {
        if(bebida.equals("erro")){
            return "Erro no cadastro do produto!";
        }
        return "Produto cadastrado!";
    }
}
