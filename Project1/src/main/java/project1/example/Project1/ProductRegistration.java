package project1.example.Project1;

public class ProductRegistration {

    public String registration(String name, String category) {
        if (category.equals("Beer")) {
            return "Product Successfully Registered!";
        } else {
            return "Error when registering product!";
        }
    }
}


