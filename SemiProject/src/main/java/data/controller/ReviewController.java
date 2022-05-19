package data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ReviewController {

	@GetMapping("/review")
	public String review() {
		return "/review/review";
	}
	
	@GetMapping("/review/new")
	public String write() {
		return "/review/review2";
	}
	
	@GetMapping("/review/insert")
	public String insert() {
		return "";
	}
	
	@GetMapping("/review/content")
	public String content() {
		return "/review/review3";
	}
	
	@GetMapping("/review/edit")
	public String edit() {
		return "/review/review4";
	}
}
