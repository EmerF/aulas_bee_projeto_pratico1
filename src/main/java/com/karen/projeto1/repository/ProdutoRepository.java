package com.karen.projeto1.repository;

import com.karen.projeto1.model.Produto;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface ProdutoRepository extends MongoRepository<Produto, String> {

}
