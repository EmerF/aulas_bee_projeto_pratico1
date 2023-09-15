package com.example.projeto01.selenium;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.Platform;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;

import java.net.MalformedURLException;
import java.net.URL;

public class AmbevTest {

    @Test
    public void testLogin() throws MalformedURLException {

        String seleniumHubURL = "http://localhost:4444/wd/hub";

        DesiredCapabilities capabilities = new DesiredCapabilities();
        capabilities.setBrowserName("firefox");
        capabilities.setCapability("version", "76.0");
        capabilities.setPlatform(Platform.ANY);

        WebDriver driver = new RemoteWebDriver(new URL(seleniumHubURL), capabilities);
        driver.get("https://www.ambev.com.br/");
        // Your test code here...
        // senha do sessions do selenium (http://localhost:4444): secret
        // Close the WebDriver
        driver.quit();

    }
}

