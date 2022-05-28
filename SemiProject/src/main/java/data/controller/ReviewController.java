package data.controller;

import java.io.File;
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
		int totalCount;	// 총 개수
		int perPage = 5;		// 페이지 당 글 수
		int perBlock = 5;	// 블럭 당 페이지 수
		int totalPage;	// 총 페이지 수
		int startNum;	// 한 페이지에서 보여질 시작글 번호
		int startPage;	// 한 블럭에서 보여질 시작 페이지 번호
		int endPage;		// 한 블럭에서 보여질 끝 페이지 번호
		int no;	// 각 페이지 당 보여질 시작 번호
		
		// 총 글의 개수를 구한다
		totalCount = service.getTotalCount();
		
		// 총 페이지 수를 구한다
		totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);	// 딱 떨어지지 않으면 한 페이지를 더함
		// totalPage = (int)Math.ceil((double)totalCount / perPage);	// 무조건 올림
		
		// 각 블럭의 시작 페이지 (한 블럭 당 5개일 경우 예시)
		// 1, 6, 11,,, (currentPage가 1~5 일때는 1, 6~10일때는 6)
		startPage =  (currentPage - 1) / perBlock * perBlock + 1;
		// 5, 10, 15,,,
		endPage = startPage + perBlock - 1;
		
		// 문제점 (마지막 블럭은 마지막 페이지까지만 나와야함)
		if(endPage > totalPage) {
			endPage = totalPage;
		}
		
		// 각 페이지에서 보여질 글의 시작 번호(mysql은 0부터)
		// 한 페이지 당 3개일 경우 1페이지: 0, 2페이지: 3, 3페이지: 6 ,,,
		startNum = (currentPage - 1) * perPage;	// oracle은 +1 해줌
		
		// 각 페이지 당 보여질 시작번호
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
		
		return "/review/review";
	}
	
	@GetMapping("/new")
	public String write() {
		return "/review/review2";
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
			
			for(MultipartFile f : upload) {
				String uploadPath = request.getServletContext().getRealPath("/review_img");
				String fileName = FileUtil.changeFileName(f.getOriginalFilename());
				photos += fileName + ",";
				
				try {
					f.transferTo(new File(uploadPath + File.separator + fileName));
				} catch (Exception e) {
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
		
		return "/review/review3";
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
		
		return "/review/review4";
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
