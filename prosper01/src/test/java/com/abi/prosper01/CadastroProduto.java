package com.abi.prosper01;

import java.util.ArrayList;
import java.util.List;

public class CadastroProduto {

    private List<Produto> produtos;

    public CadastroProduto() {
        this.produtos = new ArrayList<>();
    }

    public String cadastrarProduto(Produto produto) {
        if (produto.getNome() == null || produto.getNome().isEmpty() || produto.getPreco() <= 0) {
            return "Erro no cadastro do produto";
        }

        // Verificar se o produto já existe (você pode definir sua própria lógica aqui)
        for (Produto p : produtos) {
            if (p.getNome().equals(produto.getNome())) {
                return "Produto já cadastrado";
            }
        }

        // Se tudo estiver OK, adicionamos o produto à lista
        produtos.add(produto);
        return "Produto cadastrado";
    }

    public List<Produto> listarProdutos() {
        return produtos;
    }
}
