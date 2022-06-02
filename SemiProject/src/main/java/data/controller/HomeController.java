package data.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import data.service.MenuService;

@Controller
public class HomeController {
	
	@Autowired
	private MenuService service;
	
	@GetMapping("/")
	public String home(
			Model model
			) {
		model.addAttribute("list", service.getMenu());
		
		return "/layout/home";
	}
	
//	@GetMapping("/popup")
//	public String popup()
//	{
//		return "/more/popup";
//	}
}
