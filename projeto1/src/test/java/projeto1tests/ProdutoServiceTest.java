package projeto1tests;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class ProdutoServiceTest {

        @Test
        public String testCadastroProdutoSucesso () {
            ProdutoServiceTest produtoService = new ProdutoServiceTest();
            String resultado = produtoService.testCadastroProdutoSucesso();
            assertEquals("Produto cadastrado com sucesso!", resultado);
            return resultado;
        }

        @Test
        public String testCadastroProdutoErro () {
            ProdutoServiceTest produtoService = new ProdutoServiceTest();
            String resultado = produtoService.testCadastroProdutoErro();
            assertEquals("Erro no cadastro do produto, tente novamente!", resultado);
            return resultado;
        }
    }
