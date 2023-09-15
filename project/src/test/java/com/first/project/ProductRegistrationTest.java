package com.first.project;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class ProductRegistrationTest {

    @Test
    public void testProductRegistrationSuccess() {
        ProductRegistration productRegistration = new ProductRegistration();
        String result = productRegistration.registerProduct("Product A");
        assertEquals("Product registered", result);
    }

    @Test
    public void testProductRegistrationError() {
        ProductRegistration productRegistration = new ProductRegistration();
        String result = productRegistration.registerProduct(null);
        assertEquals("Error in product registration", result);
    }
}

