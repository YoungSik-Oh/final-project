package com.team4.acornshop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
	
	
	@RequestMapping("/main")
	public String home() {
	
		
		return "main";
	}
	
}
