package project1.example.Project1;

public class ProductRegistration {

    public String registration(String Corona) {
        if(Corona.equals("Spaten")){
            return "Error when registering product";
        }
        return "Product Successfully Registered!";
    }
}
