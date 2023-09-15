package techempowers;

public class ProductRegistration {
    public String cadastrar(String cerveja) {
        if (cerveja.equals("error")){
            return "error";
        }
        return "Regustered Product!";
    }
}
