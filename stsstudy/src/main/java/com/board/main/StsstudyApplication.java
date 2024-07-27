package com.board.main;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EntityScan(basePackages="com.board.domain")
@EnableJpaRepositories(basePackages="com.board.repository")
public class StsstudyApplication {

	public static void main(String[] args) {
		SpringApplication.run(StsstudyApplication.class, args);
	}

}
