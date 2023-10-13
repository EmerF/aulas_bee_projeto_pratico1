package com.ambev.techempowers.repository;

import com.ambev.techempowers.model.Produto;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface ProdutoRepository extends MongoRepository<Produto, String> {

}
