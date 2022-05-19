package data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MenuController {

	@PostMapping("/recommend")
	public String recommend() {
		return "/menu/menu2";
	}
	
	@GetMapping("/recommend/list")
	public String list() {
		return "/menu/menu3";
	}
}
