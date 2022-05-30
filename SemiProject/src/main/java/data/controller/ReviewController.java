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
			@RequestParam(defaultValue = "1") int currentPage,
			Model model
			) {
		// pagination
		int totalCount;
		int perPage = 5;	
		int perBlock = 5;
		int totalPage;
		int startNum;
		int startPage;
		int endPage;	
		int no;
		
		totalCount = service.getTotalCount();
		
		totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
		
		startPage =  (currentPage - 1) / perBlock * perBlock + 1;
		endPage = startPage + perBlock - 1;
		
		if(endPage > totalPage) {
			endPage = totalPage;
		}
		
		startNum = (currentPage - 1) * perPage;
		
		no = totalCount - (currentPage - 1) * perPage;
		
		List<ReviewDto> list = service.getReviewList(startNum, perPage);
		
		model.addAttribute("list", list);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("no", no);
		model.addAttribute("list", list);
		
		return "/review/list";
	}
	
	@GetMapping("/new")
	public String write() {
		return "/review/new";
	}
	
	@PostMapping("/insert")
	public String insert(
			@ModelAttribute InsertReviewDto review,
			@RequestParam String place_id,
			@RequestParam String place_name,
			@RequestParam String place_category_name,
			@RequestParam String place_phone,
			@RequestParam String place_x,
			@RequestParam String place_y,
			@RequestParam String place_address_name,
			@RequestParam ArrayList<MultipartFile> upload,
			HttpServletRequest request,
			HttpSession session
			) {
		String member_num = Integer.toString((int)session.getAttribute("loginNum"));
		review.setMember_num(member_num);
		
		// 사진 처리(여러장)
		if(!upload.get(0).getOriginalFilename().equals("")) {
			String photos = "";
			String uploadPath = request.getServletContext().getRealPath("/review_img");
			
			for(MultipartFile f : upload) {
				String fileName = FileUtil.changeFileName(f.getOriginalFilename());
				photos += fileName + ",";
				File file = new File(uploadPath + File.separator + fileName);
				
				try {
					f.transferTo(file);
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
			}
			
			photos = photos.substring(0, photos.length() - 1);
			review.setPhotos(photos);
		}
		
		// place 테이블 확인
		if(service.checkPlace(place_id) == 0) {
			PlaceDto place = new PlaceDto();
			place.setId(place_id);
			place.setName(place_name);
			place.setCategory(place_category_name);
			place.setPhone(place_phone);
			place.setX(place_x);
			place.setY(place_y);
			place.setAddress(place_address_name);
			
			// place 테이블에 인서트
			service.insertPlace(place);
		}
		
		service.insertReview(review);
		
		return "redirect:/review";
	}

	@GetMapping("/content")
	public String content(
			@RequestParam int num,
			Model model
			) {
		ReviewDto review = service.getReview(num);
		
		model.addAttribute("review", review);
		
		return "/review/content";
	}
	
	@GetMapping("/place")
	public String place(
			@RequestParam int id,
			Model model
			) {
		List<ReviewDto> list = service.getReviewByPlace(id);
		PlaceDto place = service.getPlace(id);
		float stars = service.getAverageStar(id);
		
		model.addAttribute("list", list);
		model.addAttribute("place", place);
		model.addAttribute("stars", stars);
		
		return "/review/place";
	}
	
	@GetMapping("/edit")
	public String edit(
			@RequestParam int num,
			Model model
			) {
		ReviewDto review = service.getReview(num);
		
		model.addAttribute("review", review);
		
		return "/review/edit";
	}
	
	@PostMapping("/update")
	public String update(
			@ModelAttribute InsertReviewDto review,
//			@RequestParam int num,
//			@RequestParam ArrayList<MultipartFile> upload,
			HttpServletRequest request
			) {
//		// 사진 처리(여러장)
//		if(!upload.get(0).getOriginalFilename().equals("")) {
//			String photos = "";
//			
//			for(MultipartFile f : upload) {
//				String uploadPath = request.getServletContext().getRealPath("/review_img");
//				String fileName = FileUtil.changeFileName(f.getOriginalFilename());
//				photos += fileName + ",";
//				
//				try {
//					f.transferTo(new File(uploadPath + File.separator + fileName));
//				} catch (Exception e) {
//					e.printStackTrace();
//				}
//			}
//			
//			photos = photos.substring(0, photos.length() - 1);
//			review.setPhotos(photos);
//		}
		System.out.println(review);
		service.updateReview(review);
		
		return "redirect:/review/content?num=" + review.getNum();
	}
	
	@GetMapping("/delete")
	public String delete(
		@RequestParam int num
		) {
		service.deleteReview(num);
		
		return "redirect:/review";
	}
}
