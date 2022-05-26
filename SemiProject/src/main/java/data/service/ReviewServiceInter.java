package data.service;

import java.util.List;

import data.dto.InsertReviewDto;
import data.dto.PlaceDto;
import data.dto.ReviewDto;

public interface ReviewServiceInter {
	public int getTotalCount();
	public List<ReviewDto> getReviewList();
	public ReviewDto getReview(int reviewNum);
	public void insertReview(InsertReviewDto dto);
	public int checkPlace(String place_id);
	public void insertPlace(PlaceDto place);
	public void updateReview(InsertReviewDto dto);
	public void deleteReview(int num);
}
