package data.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import data.service.KakaoAPI;
import data.service.LoginService;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService service;
	
	// @Autowired
	  //  private KakaoAPI kakao;
	
	
	// 로그인 페이지
	  @GetMapping("/login")
	  public String test() {
		  return "/login/form2";
	  }
			
		 
	
	// 로그인 처리
	@PostMapping("/process")
	public String process(
			@RequestParam String id,
			@RequestParam String password,
			HttpSession session
			) {
		if(service.login(id, password)) {
			List<Map<String, Object>> map = service.getLoginInfo(id);
			
			session.setMaxInactiveInterval(60 * 60 * 24);	// 24h
			session.setAttribute("loginId", id);
			session.setAttribute("loginNum", map.get(0).get("num"));
			session.setAttribute("loginName", map.get(0).get("name"));
			session.setAttribute("loggedIn", true);
			return "redirect:/";
		}
		else {
			System.out.println("로그인 실패");
			return "redirect:/test";
		}
	}
	
	// 로그아웃 (ajax)
	@GetMapping("/logout")
	@ResponseBody
	public void logout(
			HttpSession session
			) {
		session.removeAttribute("loggedIn");
	}
}
