package data.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import data.service.LoginService;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService service;
	
	// 로그인 페이지
	@GetMapping("/login")
	public String login() {
		return "/login/form";
	}
	
	// 로그인 처리
	@PostMapping("/process")
	public String process(
			@RequestParam String id,
			@RequestParam String password,
			HttpSession session
			) {
		if(service.login(id, password)) {
			System.out.println("로그인 성공");
			
			session.setMaxInactiveInterval(60 * 60 * 24);	// 24h
			session.setAttribute("member_id", id);
			session.setAttribute("member_name", service.getLoginName(id));
			session.setAttribute("isLoggedIn", true);
			return "redirect:/";
		}
		else {
			System.out.println("로그인 실패");
			return "redirect:/login";
		}
	}
	
	@GetMapping("/logout")
	@ResponseBody
	public void logout(
			HttpSession session
			) {
		session.removeAttribute("isLoggedIn");
	}
}
