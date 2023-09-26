package com.abi.prosper01.inheritance;

import java.util.List;

public class PessoaJuridica extends Pessoa {

    private List<RepresentanteLegal> representantesLegais;

    public PessoaJuridica(String nome, String endereco, String telefone, List<RepresentanteLegal> representantesLegais) {
        super(nome, endereco, telefone);
        this.representantesLegais = representantesLegais;
    }


    public List<RepresentanteLegal> getRepresentantesLegais() {
        return representantesLegais;
    }

    public void setRepresentantesLegais(List<RepresentanteLegal> representantesLegais) {
        this.representantesLegais = representantesLegais;
    }
}
