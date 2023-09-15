package com.projeto.projeto;

public class cadastro {

    public String Cadastrar(){
        return "Cadastro feito com sucesso";
    }

    public String cadastro(String user) {
        if(user.equals("erro")){
            return  "Erro";
        }
        return "ok";
    }
}

