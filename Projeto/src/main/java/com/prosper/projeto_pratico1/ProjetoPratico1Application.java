package com.prosper.projeto_pratico1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.mongo.MongoAutoConfiguration;

@SpringBootApplication
@EnableAutoConfiguration(exclude={MongoAutoConfiguration.class})
public class ProjetoPratico1Application {

	public static void main(String[] args) {
		SpringApplication.run(ProjetoPratico1Application.class, args);
	}

}
