package com.ambev.FirstProject;

public class RegistrationProduct {
    public String register (String cerveja) {
        if(cerveja.equals("error")){
            return "error";
        }
        return "Registered product, successfully.";
    }
}
