package data.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import data.dto.MenuDto;
import data.service.MenuService;

@Controller
public class MenuController {
	
	@Autowired
	private MenuService service;
	
	// 카테고리 선택 페이지
	@GetMapping("/recommend1")
	public String recommend1() {	// 추후 recommend로 수정
		return "/menu/menu1";
	}
	
	// 추천 메뉴 결과 페이지
	@PostMapping("/recommend")	// 추후 recommend/result로 수정
	public String recommend(
			@RequestParam int category,
			@RequestParam int type,
			@RequestParam(defaultValue = "0") int spicy,
			Model model
			) {
		List<MenuDto> recommendList = service.getRecommendList(category, type, spicy);
		model.addAttribute("list", recommendList);
		
		return "/menu/menu2";
	}
	
	// 식당 리스트 페이지
	@GetMapping("/recommend/list")
	public String list(
			@RequestParam String menuName,
			Model model
			) {
		model.addAttribute("menuName", menuName);
		
		return "/menu/menu3";
	}
}
