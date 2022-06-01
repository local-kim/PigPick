package data.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import data.dto.MemberDto;
import data.dto.MenuDto;
import data.dto.MenuRankDto;
import data.dto.ReviewDto;
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
	public String member(
			Model model
			) {
		List<MemberDto> list = service.getMemberList();
		
		model.addAttribute("list", list);
		
		return "/admin/member";
	}

	@GetMapping("/member/delete")
	@ResponseBody
	public void memberDelete(
			@RequestParam String nums
			) {
		String []memberNums = nums.split(",");
		
		for(String memberNum : memberNums) {
			service.deleteMember(memberNum);
		}
	}
	
	@GetMapping("/review")
	public String review(
			Model model
			) {
		List<ReviewDto> list = service.getReviewList();
		
		model.addAttribute("list", list);
		
		return "/admin/review";
	}

	@GetMapping("/review/delete")
	@ResponseBody
	public void reviewDelete(
			@RequestParam String nums
			) {
		String []reviewNums = nums.split(",");
		
		for(String reviewNum : reviewNums) {
			service.deleteReview(reviewNum);
		}
	}
	
	@GetMapping("/stats")
	public String stats(
			Model model
			) {
		List<MenuRankDto> list = service.getMenuRankList();
		
		model.addAttribute("list", list);
		
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
		
		return "redirect:/admin/menu";
	}
}
