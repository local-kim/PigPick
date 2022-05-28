package data.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import data.dto.MemberDto;
import data.dto.MenuRankDto;
import data.dto.ReviewDto;
import data.service.MyPageService;
import util.FileUtil;

@Controller
@RequestMapping("/mypage")
public class MyPageController {
	
	@Autowired
	private MyPageService service;
	
//	private String[] category = {"한식", "일식", "중식", "양식", "아시아", "기타"};

	@GetMapping("")
	public String mypage() {
		return "/mypage/mypage";
	}
	
	@GetMapping("/rank")
	public String mypage2(
			Model model,
			HttpSession session
			) {
		int member_num = (int)session.getAttribute("loginNum");
		
		List<MenuRankDto> list = service.getMenuRank(member_num);
		model.addAttribute("list", list);
		
		return "/mypage/mypage2";
	}
	
	@GetMapping("/review")
	public String mypage3(
			Model model,
			HttpSession session
			) {
		int member_num = (int)session.getAttribute("loginNum");
		
		List<ReviewDto> list = service.getReviewList(member_num);
		model.addAttribute("list", list);
		
		return "/mypage/mypage3";
	}
	
	@GetMapping("/info")
	public String mypage4(
			Model model,
			HttpSession session
			) {
		int member_num = (int)session.getAttribute("loginNum");
		
		MemberDto info = service.getMemberInfo(member_num);
		model.addAttribute("info", info);
		
		return "/mypage/mypage4";
	}
	
	@GetMapping("/editinfo")
	public String mypage5(
			Model model,
			HttpSession session
			) {
		int member_num = (int)session.getAttribute("loginNum");
		
		MemberDto info = service.getMemberInfo(member_num);
		model.addAttribute("info", info);
		
		return "/mypage/mypage5";
	}
	
	@PostMapping("/update")
	public String mypage6(
			@ModelAttribute MemberDto member,
			@RequestParam MultipartFile upload,
			HttpServletRequest request,
			HttpSession session
			) {
		// 사진 처리
		if(!upload.isEmpty()) {
			// 사진 처리
			String uploadPath = request.getServletContext().getRealPath("/profile_img");
			String fileName = FileUtil.changeFileName(upload.getOriginalFilename());
			
			// 파일 경로 저장
			member.setPhoto(fileName);
			
			// 파일 저장
			try {
				upload.transferTo(new File(uploadPath + File.separator + fileName));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		String member_num = (String)session.getAttribute("loginNum");
		
		member.setNum(member_num);
		
		service.updateMemberInfo(member);
		
		return "redirect:/mypage/info";
	}
}
