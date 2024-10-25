package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.time.OffsetDateTime;

@SpringBootApplication
public class DemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

	@Controller
	public static class MyController {

		@GetMapping("/")
		public String init(Model model) {
			return "index";
		}

		@GetMapping("/modal")
		public String modal(Model model) {
			model.addAttribute("today", OffsetDateTime.now());
			return "modal/remote-modal";
		}
	}
}
