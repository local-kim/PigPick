package data.service;

import java.util.List;
import java.util.Map;

import data.dto.InsertReviewDto;
import data.dto.PlaceDto;
import data.dto.ReviewDto;

public interface ReviewServiceInter {
	public int getTotalCount();
	public List<ReviewDto> getReviewList(int startNum, int perPage);
	public ReviewDto getReview(int reviewNum);
	public List<ReviewDto> getReviewByPlace(String placeId);
	public PlaceDto getPlace(String placeId);
	public float getAverageStar(String placeId);
	
	// 좋아요
	public boolean checkLike(String placeId, String memberNum);
	public int getPlaceLikes(String placeId);
	public boolean getMemberLike(String placeId, String memberNum);
	public void insertLike(String placeId, String memberNum);
	public void increaseLike(String placeId, String memberNum);
	public void decreaseLike(String placeId, String memberNum);
	public void increasePlaceLikes(String placeId);
	public void decreasePlaceLikes(String placeId);
//	public void updateLike(String placeId, String memberNum, String checked);
//	public void updatePlaceLikes(String placeId, String checked);
	
	public void insertReview(InsertReviewDto dto);
	public int checkPlace(String placeId);
	public void insertPlace(PlaceDto place);
	public void updateReview(InsertReviewDto dto);
	public void deleteReview(int num);
}
