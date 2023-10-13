package com.karen.projeto1.service;

import com.karen.projeto1.model.Produto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.karen.projeto1.repository.ProdutoRepository;

import java.util.Optional;

@Service
public class ProdutoService {
    private final ProdutoRepository produtoRepository;

    @Autowired
    public ProdutoService(ProdutoRepository produtoRepository) {
        this.produtoRepository = produtoRepository;
    }

    public Produto salvarProduto(Produto produto) {
        return produtoRepository.save(produto);
    }



    public Optional<Produto> findById(String id) {
        return produtoRepository.findById(id);

    }
}
