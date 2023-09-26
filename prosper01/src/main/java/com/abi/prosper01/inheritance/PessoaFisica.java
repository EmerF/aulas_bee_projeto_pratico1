package com.abi.prosper01.inheritance;

public class PessoaFisica extends Pessoa {
    private int idade;


    public PessoaFisica(String nome, String endereco, String telefone, int idade) {
        super(nome, endereco, telefone);
        this.idade = idade;
    }


    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }
}

