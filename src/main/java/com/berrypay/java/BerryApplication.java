package com.berrypay.java;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@SpringBootApplication
@EnableJpaAuditing
public class BerryApplication {

	public static void main(String[] args) {
		SpringApplication.run(BerryApplication.class, args);
	}
}
