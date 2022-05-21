package data.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import data.dto.MenuRankDto;
import data.service.MyPageService;

@Controller
public class MyPageController {
	
	@Autowired
	MyPageService service;

	@GetMapping("/mypage")
	public String mypage() {
		return "/mypage/mypage";
	}
	
	@GetMapping("/mypage/rank")
	public String mypage2(
			Model model
			) {
		// 로그인한 사용자 num이 1이라고 가정
		int member_num = 1;
		List<MenuRankDto> list = service.getMenuRank(member_num);
		
		model.addAttribute("list", list);
		
		return "/mypage/mypage2";
	}
	
	@GetMapping("/mypage/review")
	public String mypage3() {
		return "/mypage/mypage3";
	}
	
	@GetMapping("/mypage/info")
	public String mypage4() {
		return "/mypage/mypage4";
	}
	
	@GetMapping("/mypage/editinfo")
	public String mypage5() {
		return "/mypage/mypage5";
	}
	
	@GetMapping("/mypage/update")
	public String mypage6() {
		return "";
	}
}
