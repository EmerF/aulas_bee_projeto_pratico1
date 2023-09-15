package com.bees.projetopratico1.selenium;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.Platform;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import java.net.MalformedURLException;
import java.net.URL;
/* Instruções para execução:
Instalar o firefox no docker usando o arquivo instalar_selenium_firefox_driver
Rodar o teste
verificar no localhost:4444/sessions a execução do teste
*/
public class AbinbevLoginTest{
    @Test
    public void testLogin() throws MalformedURLException {
        // Set the URL of the Selenium Server
        String seleniumHubURL = "http://localhost:4444/wd/hub";
        // Define desired capabilities for the browser and platform
        DesiredCapabilities capabilities = new DesiredCapabilities();
        capabilities.setBrowserName("firefox"); // Use "firefox" for Firefox browser
        capabilities.setCapability("version", "76.0");
        capabilities.setPlatform(Platform.ANY);
        // Create a Remote WebDriver instance
        WebDriver driver = new RemoteWebDriver(new URL(seleniumHubURL), capabilities);
        driver.get("https://www.ambev.com.br/");
        // Your test code here...
        // senha do sessions do selenium (http://localhost:4444/): secret
        // Close the WebDriver
        //driver.quit();
    }
}
