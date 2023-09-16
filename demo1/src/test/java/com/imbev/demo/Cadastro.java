package com.imbev.demo;

public class Cadastro {
    public String Cadastro  (String user){
        String nameFormatted = user.toUpperCase();
        if(nameFormatted.equals("ERRO")){
            return "Erro";
        }
        return "Cadastrado";
    }
}

