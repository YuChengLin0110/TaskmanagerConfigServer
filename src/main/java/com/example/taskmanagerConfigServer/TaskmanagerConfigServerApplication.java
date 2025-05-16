package com.example.taskmanagerConfigServer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@SpringBootApplication
@EnableConfigServer
public class TaskmanagerConfigServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(TaskmanagerConfigServerApplication.class, args);
	}
}
