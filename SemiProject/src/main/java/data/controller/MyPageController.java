package data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyPageController {

	@GetMapping("/mypage")
	public String mypage() {
		return "/mypage/mypage";
	}
	
	@GetMapping("/mypage/rank")
	public String mypage2() {
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
