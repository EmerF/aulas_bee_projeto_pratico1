package com.projeto1.projeto;

import javax.swing.*;

public class CadastroProduto {
    public String cadastrar(String refrigerante) {
        if(refrigerante.equals("erro")){
            return "Erro no cadastro do produto!";
        }
        return "Produto cadastrado!";
    }
}
