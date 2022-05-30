package data.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import data.dto.MenuDto;
import data.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService service;
	
	@GetMapping("")
	public String list() {
		return "/admin/list";
	}
	
	@GetMapping("/member")
	public String member() {
		return "/admin/member";
	}
	
	@GetMapping("/review")
	public String review() {
		return "/admin/review";
	}
	
	@GetMapping("/stats")
	public String stats() {
		return "/admin/statistics";
	}
	
	@GetMapping("/menu")
	public String menu() {
		return "/admin/menu";
	}
	
	@GetMapping("/insert")
	public String insert(
			@ModelAttribute MenuDto menu,
			@RequestParam(defaultValue = "0") String spicy
			) {
		menu.setSpicy(spicy);
		
		service.insertMenu(menu);
		
		return "redirect:/admin";
	}
}
