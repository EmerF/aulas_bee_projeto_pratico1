package com.first.project;

public record ProductRegistration() {
    public String registerProduct(String productName) {
        if (productName != null && !productName.isEmpty()) {
            // Register the product
            return "Product registered";
        } else {
            // Error in product registration
            return "Error in product registration";
        }
    }

}
