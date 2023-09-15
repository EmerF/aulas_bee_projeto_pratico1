package Projeto.pratico1.projeto;

public class CadastroProduto {
    public String cadastrar(String cerveja) {
        if(cerveja.equals("erro")){
            return "Erro no cadastro do produto";
        }
            return "Produto cadastrado";
    }
}
