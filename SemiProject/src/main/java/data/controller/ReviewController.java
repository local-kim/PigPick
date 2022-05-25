package data.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import data.dto.ReviewDto;
import data.service.ReviewService;

@Controller
@RequestMapping("/review")
public class ReviewController {
	
	@Autowired 
	private ReviewService service;

	@GetMapping("")
	public ModelAndView review(
			@RequestParam(defaultValue = "1")int currentPage
			)
	{
		ModelAndView mview=new ModelAndView();
		//페이징처리
		  int totalCount; //총갯수
	      int perPage=5;//한페이지당 보여질 글의갯수 
	      int perBlock=5;//한블럭당 보여질 페이지수
	      int totalPage;//총 페이지수
	      int startNum;//한페이지에서 보여질 시작 글 번호
	      int startPage;//한블럭에서 보여질 시작페이지 번호
	      int endPage;//한블럭에서 보여질 끝 페이지 번호
	      int no;//각 페이지당 보여질 시작번호
	      
	      //총 글의 갯수를 구한다
	      totalCount=service.getTotalCount();
	    //총 페이지수를 구한다
	      totalPage=totalCount/perPage+(totalCount%perPage==0?0:1);
	      //totalPage=(int)Math.ceil((double)(totalCount/perPage);
	      //각 블럭의 시작페이지 (한블럭당 5개일경우의 예)
	      //1,6,11...(currentPage 가 1~5 일때는 1 ~10일때는 6)
	      startPage=(currentPage-1)/perBlock*perBlock+1;
	      //5,10,15...(currentPage)가 1~5 일때는 5 6~10 일떄는 
	      endPage=startPage+perBlock-1;
	      //문제점(마지막 블럭은 총페이지수까지;만 나와야 한다)
	      if(endPage>totalPage) {
	    	  endPage=totalPage;
	      }
	      //각 페이지에서 보여질 글의 시작번호(mysql은 0부터)
	      //예 )한페이지당 3개일경우 1페이지면:0, 2페이지면:3 3페이지 :6...
	      startNum=(currentPage-1)*perPage;
	      //각 페이지당 보여질 시작번호
	      no=totalCount-(currentPage-1)*perPage;
	      //데이타 가져오기
	      List<ReviewDto>list=service.getList(startNum, perPage);
	      System.out.println(startNum+","+perPage);
	      
	      mview.addObject("currentPage",currentPage);
	      mview.addObject("totalCount",totalCount);
	      mview.addObject("totalPage",totalPage);
	      mview.addObject("startPage",startPage);
	      mview.addObject("endPage",endPage);
	      mview.addObject("no",no);
	      mview.addObject("list",list);
	    	  
		
	      mview.setViewName("/review/review");
		  return mview;
	}
	
	@GetMapping("/new")
	public String write() {
		return "/review/review2";
	}

	@GetMapping("/content")
	public String content() {
		return "/review/review3";
	}
	
	@GetMapping("/edit")
	public String edit() {
		return "/review/review4";
	}
	
	@GetMapping("/delete")
	public String delete(
		@RequestParam int num,
		@RequestParam int currentPage,
		HttpServletRequest request
		)
	{
		service.deleteReview(num);
	 return "redirect:list?currentPage="+currentPage;
		
	}
	
//	@GetMapping("/insert")
//	public String insert(
//			@ModelAttribute ReviewDto dto,
//			@RequestParam String currentPage,
//			HttpSession session,
//			HttpServletRequest request
//			) {
//		
//		service.insertReview(dto);
//		return "redirect:list?currentPage="+currentPage;
	}
	

