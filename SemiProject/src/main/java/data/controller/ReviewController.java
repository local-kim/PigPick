package data.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import data.dto.ReviewDto;
import data.service.ReviewService;

@Controller
@RequestMapping("/review")
public class ReviewController {
	
	@Autowired 
	private ReviewService service;

	@GetMapping("")
	public String review(
			Model model
			) {
		List<ReviewDto> list = service.getReviewList();
		int totalCount = service.getTotalCount();
		
		model.addAttribute("list", list);
		model.addAttribute("totalCount", totalCount);
		
		return "/review/review";
	}
	
	@GetMapping("/new")
	public String write() {
		return "/review/review2";
	}

	@GetMapping("/content")
	public String content(
			@RequestParam int num,
			Model model
			) {
		ReviewDto review = service.getReview(num);
		
		model.addAttribute("review", review);
		
		return "/review/review3";
	}
	
	@GetMapping("/edit")
	public String edit(
			@RequestParam int num,
			Model model
			) {
		ReviewDto review = service.getReview(num);
		
		model.addAttribute("review", review);
		
		return "/review/review4";
	}
	
	@GetMapping("/update")
	public String update(
		@ModelAttribute ReviewDto review,
		@RequestParam int num
		) {
		service.updateReview(review);
		return "redirect:content?num=" + num;
	}
	
	@GetMapping("/delete")
	public String delete(
		@RequestParam int num
		) {
		service.deleteReview(num);
		return "redirect:/";
	}
}
