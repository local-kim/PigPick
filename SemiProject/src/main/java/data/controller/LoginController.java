package data.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import data.dto.MemberDto;
import data.service.LoginService;
import data.service.MemberService;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService service;
	
	@Autowired
	private MemberService memberService;
	
	// 로그인 페이지
	@GetMapping("/login")
	public String test() {
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
			List<Map<String, Object>> map = service.getLoginInfo(id);
			
			session.setMaxInactiveInterval(60 * 60 * 24);	// 24h
			session.setAttribute("loginId", id);
			session.setAttribute("loginNum", map.get(0).get("num"));
			session.setAttribute("loginName", map.get(0).get("name"));
			session.setAttribute("loggedIn", true);
			return "redirect:/";
		}
		else {
			return "redirect:/login";
		}
	}

	// 카카오 로그인
	@GetMapping("/kakao")
	@ResponseBody
	public void kakaoinsert(
			@RequestParam String kid,
			@RequestParam String kemail,
			@RequestParam String knickname,
			@RequestParam(required = false) String kp,
			@RequestParam String kb,
			HttpSession session
			) {
		if(service.checkKakaoMember(kid) == 0) {
			// DB에 없으면 저장
			MemberDto member = new MemberDto();
		
			member.setBirthday(kb);
			member.setEmail(kemail);
			member.setPhoto(kp);
			member.setId(kid);
			member.setName(knickname);
			member.setAdmin(1);
			
			memberService.insertMember(member);
		}
		
		List<Map<String, Object>> map = service.getLoginInfo(kid);
		
		session.setAttribute("loginName", knickname);
		session.setAttribute("loginId", kemail);
		session.setAttribute("loggedIn", true);
		session.setAttribute("loginNum", map.get(0).get("num"));
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
