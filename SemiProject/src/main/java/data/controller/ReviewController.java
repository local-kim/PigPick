package data.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
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

import data.dto.InsertReviewDto;
import data.dto.PlaceDto;
import data.dto.ReviewDto;
import data.service.ReviewService;
import util.FileUtil;

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
	
	@GetMapping("/place")
	public String place(
			@RequestParam int id,
			Model model
			) {
		List<ReviewDto> list = service.getReviewByPlace(id);
		
		model.addAttribute("list", list);
		
		return "/review/place";
	}
	
	@PostMapping("/insert")
	public String insert(
			@ModelAttribute InsertReviewDto review,
			@RequestParam String place_id,
			@RequestParam String place_name,
			@RequestParam String place_category,
			@RequestParam ArrayList<MultipartFile> upload,
			HttpSession session,
			HttpServletRequest request
			) {
		String member_num = Integer.toString((int)session.getAttribute("loginNum"));
		review.setMember_num(member_num);
		
		// 사진 처리(여러장)
		if(!upload.get(0).getOriginalFilename().equals("")) {
			String photos = "";
			
			for(MultipartFile f : upload) {
				String uploadPath = request.getServletContext().getRealPath("/profile_img");
				String fileName = FileUtil.changeFileName(f.getOriginalFilename());
				photos += fileName + ",";
				
				try {
					f.transferTo(new File(uploadPath + File.separator + fileName));
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			
			photos = photos.substring(0, photos.length() - 1);
			System.out.println(photos);
			review.setPhotos(photos);
		}
		
		// place 테이블 확인
		if(service.checkPlace(place_id) == 0) {
			PlaceDto place = new PlaceDto();
			place.setId(place_id);
			place.setName(place_name);
			place.setCategory(place_category);
			
			System.out.println(place);
			
			// place 테이블에 인서트
			service.insertPlace(place);
		}
		
		service.insertReview(review);
		
		return "redirect:/review";
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
		@ModelAttribute InsertReviewDto review,
		@RequestParam int num
		) {
		System.out.println(review);
		// 업데이트만 고치면 끝
		service.updateReview(review);
		
		return "redirect:/review/content?num=" + num;
	}
	
	@GetMapping("/delete")
	public String delete(
		@RequestParam int num
		) {
		service.deleteReview(num);
		
		return "redirect:/review";
	}
}
