package data.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import data.dto.InsertReviewDto;
import data.dto.PlaceDto;
import data.dto.ReviewDto;

@Mapper
public interface ReviewMapperInter {
	public int getTotalCount();
	public List<ReviewDto> getReviewList(Map<String, Integer> map);
	public ReviewDto getReview(int review_num);
	public List<ReviewDto> getReviewByPlace(String place_id);
	public PlaceDto getPlace(String place_id);
	public float getAverageStar(String place_id);
	
	//  좋아요
	public int checkLike(Map<String, String> map);
	public int getPlaceLikes(String place_id);
	public int getMemberLike(Map<String, String> map);
	public void insertLike(Map<String, String> map);
	public void increaseLike(Map<String, String> map);
	public void decreaseLike(Map<String, String> map);
	public void increasePlaceLikes(String place_id);
	public void decreasePlaceLikes(String place_id);
//	public void updateLike(Map<String, String> map);
//	public void updatePlaceLikes(String place_id);
	
	public void insertReview(InsertReviewDto review);
	public int checkPlace(String place_id);
	public void insertPlace(PlaceDto place);
	public void updateReview(InsertReviewDto review);
	public void deleteReview(int num);
}
