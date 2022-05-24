package data.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import data.dto.MemberDto;
import data.dto.MenuRankDto;
import data.dto.ReviewDto;
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
			Model model,
			HttpSession session
			) {
		int member_num = (int)session.getAttribute("loginNum");
		
		List<MenuRankDto> list = service.getMenuRank(member_num);
		model.addAttribute("list", list);
		
		return "/mypage/mypage2";
	}
	
	@GetMapping("/mypage/review")
	public String mypage3(
			Model model,
			HttpSession session
			) {
		int member_num = (int)session.getAttribute("loginNum");
		
		List<ReviewDto> list = service.getReviewList(member_num);
		model.addAttribute("list", list);
		
		return "/mypage/mypage3";
	}
	
	@GetMapping("/mypage/info")
	public String mypage4(
			Model model,
			HttpSession session
			) {
		int member_num = (int)session.getAttribute("loginNum");
		
		MemberDto info = service.getMemberInfo(member_num);
		model.addAttribute("info", info);
		
		return "/mypage/mypage4";
	}
	
	@GetMapping("/mypage/editinfo")
	public String mypage5(
			Model model,
			HttpSession session
			) {
		int member_num = (int)session.getAttribute("loginNum");
		
		MemberDto info = service.getMemberInfo(member_num);
		model.addAttribute("info", info);
		
		return "/mypage/mypage5";
	}
	
	@GetMapping("/mypage/update")
	public String mypage6(
			@ModelAttribute MemberDto member,
			HttpSession session
			) {
		int member_num = (int)session.getAttribute("loginNum");
		String tel = "";		// 변경할 값(나중에 프론트에서 받아옴)
		String address = "";
		
		// 지금은 전화번호, 주소만 수정 가능하게 -> member dto를 넘겨도 괜찮을듯
		service.updateMemberInfo(member_num, tel, address);
		
		return "redirect:/mypage/info";
	}
}
