package selenium;

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
        // Set the URL of the Selenium Server

        String seleniumHubURL = "http://localhost:4444/wd/hub";

        // Define desired capabilities for the browser and platform
        DesiredCapabilities capabilities = new DesiredCapabilities();
        capabilities.setBrowserName("firefox"); // Use "firefox" for Firefox browser
        capabilities.setCapability("version", "76.0");
        capabilities.setPlatform(Platform.ANY);

        // Create a Remote WebDriver instance
        WebDriver driver = new RemoteWebDriver(new URL(seleniumHubURL), capabilities);
        driver.get("https://www.ambev.com.br");

        // driver.quit();

    }
}