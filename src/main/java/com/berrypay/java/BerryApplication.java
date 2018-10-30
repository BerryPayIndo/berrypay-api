package com.berrypay.java;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
//DIDI GANTENG SEKALI TAPI KALAH AMA ALDO DAN ALDO KALAH SAMA ANTON DAN ANTON KALAH SAMA IMAN
//DIDI BAU SEKALI

@SpringBootApplication
@EnableJpaAuditing
public class BerryApplication {

	public static void main(String[] args) {
		SpringApplication.run(BerryApplication.class, args);
	}
}
