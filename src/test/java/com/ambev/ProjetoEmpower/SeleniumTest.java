package com.ambev.ProjetoEmpower;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxOptions;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.interactions.Actions;

import java.net.MalformedURLException;
import java.net.URL;
public class SeleniumTest {
        public static void main(String[] args) throws MalformedURLException {
            FirefoxOptions options = new FirefoxOptions();
            WebDriver driver = new RemoteWebDriver(new URL("http://localhost:4444/wd/hub"), options);

            driver.get("https://www.ambev.com.br/");
            Actions actions = new Actions(driver);


            driver.quit();
        }
}
