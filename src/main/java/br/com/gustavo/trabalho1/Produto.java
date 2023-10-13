package br.com.gustavo.trabalho1;

public class Produto {
    public String cadastrar(String nome) {
        if (nome == null || nome.isEmpty()) {
            return "Erro no cadastro do produto";
        }
        return "Produto cadastrado";
    }

}

