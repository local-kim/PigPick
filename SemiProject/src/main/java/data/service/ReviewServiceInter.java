package data.service;

import java.util.List;

import data.dto.InsertReviewDto;
import data.dto.PlaceDto;
import data.dto.ReviewDto;

public interface ReviewServiceInter {
	public int getTotalCount();
	public List<ReviewDto> getReviewList(int startNum, int perPage);
	public ReviewDto getReview(int reviewNum);
	public List<ReviewDto> getReviewByPlace(int place_id);
	public PlaceDto getPlace(int id);
	public void insertReview(InsertReviewDto dto);
	public int checkPlace(String place_id);
	public void insertPlace(PlaceDto place);
	public void updateReview(InsertReviewDto dto);
	public void deleteReview(int num);
}
