package data.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import data.dto.MenuDto;
import data.service.MenuService;

@Controller
@RequestMapping("/recommend")
public class MenuController {
	
	@Autowired
	private MenuService service;
	
	// 카테고리 선택 페이지
	@GetMapping("")
	public String recommend() {
		return "/menu/pick";
	}
	
	// 추천 메뉴 결과 페이지
	@PostMapping("/result")
	public String result(
			@RequestParam int category,
			@RequestParam int type,
			@RequestParam(defaultValue = "0") int spicy,
			Model model
			) {
		List<MenuDto> recommendList = service.getRecommendList(category, type, spicy);
		model.addAttribute("list", recommendList);
		model.addAttribute("category", category);
		model.addAttribute("type", type);
		model.addAttribute("spicy", spicy);
		
		return "/menu/result";
	}
	
	// 식당 리스트 페이지
	@GetMapping("/list")
	public String list(
			@RequestParam String menuName,
			@RequestParam int menuNum,
			@RequestParam int category,
			Model model,
			HttpSession session
			) {
		if(session == null)
			System.out.println("session is null");
		
		// 먹은 횟수 증가(로그인 중일때만)
		if(session != null && (boolean)session.getAttribute("loggedIn")) {	// error
			int memberNum = (int)session.getAttribute("loginNum");
			
			if(service.checkMenuRank(memberNum, menuNum) == 0) {	// 테이블에 없을 때
				service.insertMenuCount(memberNum, menuNum);	// 새로운 데이터를 인서트
			}
			else {
				service.increaseMenuCount(memberNum, menuNum);	// 존재하는 데이터를 업데이트
			}
		}
		
		model.addAttribute("menuName", menuName);
		
		return "/menu/list";
	}
}
