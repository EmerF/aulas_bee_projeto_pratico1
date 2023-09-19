package com.techempowers.projeto1.SeleniumTest;

import java.net.MalformedURLException;
import java.net.URL;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.Platform;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;

public class AmbevLocalTest {
    @Test
    public void testLogin() throws MalformedURLException {

        String seleniumUrl = "http://localhost:4444/wd/hub";

        DesiredCapabilities capabilities = new DesiredCapabilities();
        capabilities.setBrowserName("firefox");
        capabilities.setCapability("browserVersion", "76.8");
        capabilities.setPlatform(Platform.ANY);

        WebDriver driver = new RemoteWebDriver(new URL(seleniumUrl), capabilities);
        driver.get("https://www.ambev.com.br/");
        driver.quit();

    }
}
