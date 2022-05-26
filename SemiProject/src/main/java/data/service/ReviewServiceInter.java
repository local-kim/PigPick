package data.service;

import java.util.List;

import data.dto.InsertReviewDto;
import data.dto.ReviewDto;

public interface ReviewServiceInter {
	public int getTotalCount();
	public List<ReviewDto> getReviewList();
	public ReviewDto getReview(int reviewNum);
	public void insertReview(InsertReviewDto dto);
	public void updateReview(ReviewDto dto);
	public void deleteReview(int num);
}
