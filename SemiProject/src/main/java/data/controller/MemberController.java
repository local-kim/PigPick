package data.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import data.dto.MemberDto;
import data.service.MemberService;
import util.FileUtil;
import util.Util;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService service;

	@GetMapping("/join")
	public String join() {
		return "/member/join";
	}
	
	@PostMapping("/insert")
	public String insert(
			@ModelAttribute MemberDto member,
			@RequestParam String tel1,
			@RequestParam String tel2,
			@RequestParam String tel3,
			@RequestParam String month,
			@RequestParam String day,
			@RequestParam String email1,
			@RequestParam String email2,
			@RequestParam MultipartFile upload,
			HttpServletRequest request
			) {
		// 전화번호
		String tel = tel1 + "-" + tel2 + "-" + tel3;
		member.setTel(tel);
		
		// 생일
		if(month.length() == 1) {
			month = "0" + month;
		}
		
		if(day.length() == 1) {
			day = "0" + day;
		}
		
		String birthday = month + day;
		member.setBirthday(birthday);
		
		// 이메일
		String email = email1 + "@" + email2;
		member.setEmail(email);
		
		// admin
		member.setAdmin(0);
		
		if(!upload.isEmpty()) {
			// 사진 처리
			String uploadPath = request.getServletContext().getRealPath("/profile_img");
			String fileName = FileUtil.changeFileName(upload.getOriginalFilename());
			
			// 파일 경로 저장
			member.setPhoto(fileName);
			
			// 파일 저장
			try {
				upload.transferTo(new File(uploadPath + File.separator + fileName));
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		
		// 비밀번호 암호화
		member.setPassword(Util.encode(member.getPassword()));
		
		service.insertMember(member);
		
		return "redirect:/";
	}
	
	@GetMapping("/checkId")
	@ResponseBody
	public Map<String, Integer> checkId(
			@RequestParam String id
			) {
		Map<String, Integer> map = new HashMap<>();
		
		map.put("count", service.checkId(id));
		
		return map;
	}
}
