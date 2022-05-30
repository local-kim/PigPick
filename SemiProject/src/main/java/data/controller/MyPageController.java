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
	
	@GetMapping("")
	public String mypage() {
		return "/mypage/list";
	}
	
	@GetMapping("/rank")
	public String mypage2(
			Model model,
			HttpSession session
			) {
		int memberNum = (int)session.getAttribute("loginNum");
		
		List<MenuRankDto> list = service.getMenuRank(memberNum);
		model.addAttribute("list", list);
		
		return "/mypage/rank";
	}
	
	@GetMapping("/review")
	public String mypage3(
			Model model,
			HttpSession session
			) {
		int memberNum = (int)session.getAttribute("loginNum");
		
		List<ReviewDto> list = service.getReviewList(memberNum);
		model.addAttribute("list", list);
		
		return "/mypage/review";
	}
	
	@GetMapping("/info")
	public String mypage4(
			Model model,
			HttpSession session
			) {
		int memberNum = (int)session.getAttribute("loginNum");
		
		MemberDto info = service.getMemberInfo(memberNum);
		model.addAttribute("info", info);
		
		return "/mypage/info";
	}
	
	@GetMapping("/edit")
	public String mypage5(
			Model model,
			HttpSession session
			) {
		int memberNum = (int)session.getAttribute("loginNum");
		
		MemberDto info = service.getMemberInfo(memberNum);
		model.addAttribute("info", info);
		
		return "/mypage/edit";
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
		
		String memberNum = Integer.toString((int)session.getAttribute("loginNum"));
		
		member.setNum(memberNum);
		
		service.updateMember(member);
		
		return "redirect:/mypage/info";
	}
	
	@GetMapping("/delete")
	public String delete(
			HttpSession session
			) {
		int memberNum = (int)session.getAttribute("loginNum");
		
		service.deleteMember(memberNum);
		
		return "redirect:/";
	}
}
