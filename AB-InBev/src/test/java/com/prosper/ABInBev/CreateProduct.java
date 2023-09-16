package com.prosper.ABInBev;

public class CreateProduct {

    public String create(String bolacha) {
        if(bolacha.equals("erro")){
            return "Erro no cadastro do produto";
        }
        return "Produto cadastrado";
    }
}
