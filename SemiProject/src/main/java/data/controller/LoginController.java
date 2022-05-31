package data.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import data.dto.MemberDto;
import data.service.LoginService;
import data.service.MemberService;
import util.Util;

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
		password = Util.encode(password);
		
		if(service.login(id, password)) {
			List<Map<String, Object>> map = service.getLoginInfo(id);
			
			session.setMaxInactiveInterval(60 * 60 * 24);	// 24h
			session.setAttribute("loggedIn", true);
			session.setAttribute("loginId", id);
			session.setAttribute("loginNum", map.get(0).get("num"));
			session.setAttribute("loginName", map.get(0).get("name"));
			session.setAttribute("loginAdmin", map.get(0).get("admin"));
			
			return "redirect:/";
		}
		else {
			return "redirect:/login";
		}
	}

	// 카카오 로그인
	@GetMapping("/kakao")
	@ResponseBody
	public void kakaoLogin(
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
	
	// 아이디 찾기
	@GetMapping("/findId")
	public String findId() {
		return "/login/findId";
	}
	
	@PostMapping("/findId/result")
	public String findIdResult(
			@RequestParam String name,
			@RequestParam String email,
			Model model, HttpSession session
			) {
		// 이름, 이메일, 전화번호 일치하는지 확인
		// 일치하면 다음 페이지(idResult.jsp)로 이동 및 아이디 값 넘김
		// 불일치하면 현재 /findId 로 리다이렉트
		boolean check=service.checkId(name, email);
		if(check=true) {
		model.addAttribute("id",service.findId(name, email));
		}
			
			
		return "/login/idResult";
	}
	
	// 비밀번호 찾기
	@GetMapping("/findPassword")
	public String findPassword() {
		return "/login/findPassword";
	}
	
	@PostMapping("/findPassword/change")
	public String changePassword(
			@RequestParam String name,
			@RequestParam String id,
			@RequestParam String email,
			Model model
			) {
		// 이름, 아이디, 이메일 일치하는지 확인
		if(service.checkPassword(name, id, email)) {
			model.addAttribute("id", id);
			return "/login/changePassword";
		}
		
		return "redirect:/findPassword";
	}
	
	@PostMapping("/findPassword/result")
	public String findPasswordResult(
			@RequestParam String id,
			@RequestParam String password
			) {
		// DB에서 비밀번호 업데이트
		service.changePassword(id, password);
		
		return "/login/passwordResult";
	}
}
