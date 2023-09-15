package com.example.projeto01.selenium;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.firefox.FirefoxOptions;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.jupiter.api.Test;

import java.net.MalformedURLException;
import java.net.URL;

public class AmbevTest {

    private WebDriver driver;

    @BeforeClass
    public void setUp() throws MalformedURLException {
        driver = new RemoteWebDriver(new URL("http://localhost:4444/wd/hub"), new FirefoxOptions());
    }

    @Test
    public void testAmbev() {
        driver.get("https://www.ambev.com.br/");
    }

    @AfterClass
    public void tearDown() {
        driver.quit();
    }
}
