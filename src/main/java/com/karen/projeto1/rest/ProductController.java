package com.karen.projeto1.rest;

import com.karen.projeto1.exceptions.CustomNotFoundException;
import com.karen.projeto1.model.Produto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import com.karen.projeto1.service.ProdutoService;

/** Teste:
 * curl -X POST -H "Content-Type: application/json" -d '{
 *   "name": "Produto de Exemplo",
 *   "price": 29.99
 * }' http://localhost:8080/api/products
 *
 */
@RestController
@RequestMapping("/api/products")
public class ProductController {
    @Autowired
    private ProdutoService produtoService;

    @PostMapping
    public String createProduct(@RequestBody Produto produto) {
        if(produto.getNome().isEmpty() || produto.getNome() == null){
            throw new CustomNotFoundException("Erro no cadastro do produto");
        }
        produtoService.salvarProduto(produto);
        return "Produto cadastrado";
    }
    @GetMapping("/error")
    public ResponseEntity<Void> errorProduct() {
        return new ResponseEntity<>( HttpStatus.NOT_FOUND);
    }
}
