package com.abi.prosper01.inheritance;

import java.util.ArrayList;
import java.util.List;

public class TesteHeranca {

    public static void main(String[] args) {


        PessoaFisica pessoaFisica = new PessoaFisica("João", "Rua A, 123", "123456789", 30);
        System.out.println("Nome: " + pessoaFisica.getNome());
        System.out.println("Endereço: " + pessoaFisica.getEndereco());
        System.out.println("Telefone: " + pessoaFisica.getTelefone());
        System.out.println("Idade: " + pessoaFisica.getIdade());


        RepresentanteLegal representanteLegal = new RepresentanteLegal("Maria", "Rua B, 456", "987654321");
        List<RepresentanteLegal> representantesLegais = new ArrayList<>();
        representantesLegais.add(representanteLegal);
        PessoaJuridica pessoaJuridica = new PessoaJuridica("Empresa X", "Rua C, 789", "456123789", representantesLegais);
        System.out.println("\n\nNome: " + pessoaJuridica.getNome());
        System.out.println("Endereço: " + pessoaJuridica.getEndereco());
        System.out.println("Telefone: " + pessoaJuridica.getTelefone());
        System.out.println("Representantes legais: " + pessoaJuridica.getRepresentantesLegais().get(0).getNome());
    }



}
