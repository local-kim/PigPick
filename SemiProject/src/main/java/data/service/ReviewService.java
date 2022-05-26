package data.service;

import java.util.List;

import data.dto.InsertReviewDto;
import data.dto.ReviewDto;
import data.mapper.ReviewMapperInter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewService implements ReviewServiceInter {
	
	@Autowired
	private ReviewMapperInter mapper;

	@Override
	public List<ReviewDto> getReviewList() {
		return mapper.getReviewList();
	}

	@Override
	public ReviewDto getReview(int reviewNum) {
		return mapper.getReview(reviewNum);
	}

	@Override
	public void insertReview(InsertReviewDto dto) {
		mapper.insertReview(dto);
	}    
		
	@Override
	public void updateReview(ReviewDto dto) {
		mapper.updateReview(dto);
	}

	@Override
	public void deleteReview(int num) {
		mapper.deleteReview(num);
	}

	@Override
	public int getTotalCount() {
		return mapper.getTotalCount();
	}
	
}
