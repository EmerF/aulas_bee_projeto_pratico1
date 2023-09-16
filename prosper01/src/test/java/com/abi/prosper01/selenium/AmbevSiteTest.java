package com.abi.prosper01.selenium;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxOptions;


public class AmbevSiteTest {

    private WebDriver driver;

    @BeforeEach
    void setUp() {
        // Configurar o driver do Firefox usando o WebDriverManager
        WebDriverManager.firefoxdriver().setup();

        // Inicializar o driver do Firefox
        FirefoxOptions options = new FirefoxOptions();
        driver = new FirefoxDriver(options);
    }

    @Test
    void testAbrirSiteAmbev() {
        // Abrir o site da Ambev
        driver.get("https://www.ambev.com.br/");

        // Aqui, você pode adicionar as asserções necessárias para verificar se o site foi carregado corretamente
        // Por exemplo, verificar a presença de elementos-chave na página ou seu título.
    }

    @AfterEach
    void tearDown() {
        // Fechar o navegador após o teste
        if (driver != null) {
            driver.quit();
        }
    }
}