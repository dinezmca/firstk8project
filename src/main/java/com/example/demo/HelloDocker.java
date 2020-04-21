package com.example.demo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloDocker {
	
	@RequestMapping("/vanakkam")
	private String getMessage() {
		
		return "Hello DOCKER!!!!!!";
	}

}
