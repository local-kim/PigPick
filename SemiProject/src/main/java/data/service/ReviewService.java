package data.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import data.dto.InsertReviewDto;
import data.dto.PlaceDto;
import data.dto.ReviewDto;
import data.mapper.ReviewMapperInter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewService implements ReviewServiceInter {
	
	@Autowired
	private ReviewMapperInter mapper;

	@Override
	public List<ReviewDto> getReviewList(int startNum, int perPage) {
		Map<String, Integer> map = new HashMap<>();
		map.put("start", startNum);
		map.put("perpage", perPage);
		
		return mapper.getReviewList(map);
	}

	@Override
	public ReviewDto getReview(int reviewNum) {
		return mapper.getReview(reviewNum);
	}
	
	@Override
	public List<ReviewDto> getReviewByPlace(String placeId) {
		return mapper.getReviewByPlace(placeId);
	}
	
	@Override
	public PlaceDto getPlace(String id) {
		return mapper.getPlace(id);
	}
	
	@Override
	public float getAverageStar(String id) {
		return mapper.getAverageStar(id);
	}
	
	@Override
	public boolean checkLike(String placeId, String memberNum) {
		Map<String, String> map = new HashMap<>();
		map.put("place_id", placeId);
		map.put("member_num", memberNum);
		
		return (mapper.checkLike(map) == 0 ? false : true);
	}
	
	@Override
	public int getPlaceLikes(String id) {
		return mapper.getPlaceLikes(id);
	}
	
	@Override
	public boolean getMemberLike(String placeId, String memberNum) {
		Map<String, String> map = new HashMap<>();
		map.put("place_id", placeId);
		map.put("member_num", memberNum);
		
		return (mapper.getMemberLike(map) == 0 ? false : true);
	}
	
	@Override
	public void insertLike(String placeId, String memberNum) {
		Map<String, String> map = new HashMap<>();
		map.put("place_id", placeId);
		map.put("member_num", memberNum);
		
		mapper.insertLike(map);
	}
	
	@Override
	public void increaseLike(String placeId, String memberNum) {
		Map<String, String> map = new HashMap<>();
		map.put("place_id", placeId);
		map.put("member_num", memberNum);
		
		mapper.increaseLike(map);
	}
	
	@Override
	public void decreaseLike(String placeId, String memberNum) {
		Map<String, String> map = new HashMap<>();
		map.put("place_id", placeId);
		map.put("member_num", memberNum);
		
		mapper.decreaseLike(map);
	}
	
	@Override
	public void increasePlaceLikes(String placeId) {
		mapper.increasePlaceLikes(placeId);
	}
	
	@Override
	public void decreasePlaceLikes(String placeId) {
		mapper.decreasePlaceLikes(placeId);
	}
	
//	@Override
//	public void updateLike(String placeId, String memberNum, String checked) {
//		Map<String, String> map = new HashMap<>();
//		map.put("place_id", placeId);
//		map.put("member_num", memberNum);
//		map.put("checked", checked);
//		
//		mapper.updateLike(map);
//	}
//	
//	@Override
//	public void updatePlaceLikes(String placeId, String checked) {
//		mapper.updatePlaceLikes(placeId);
//	}

	@Override
	public void insertReview(InsertReviewDto dto) {
		mapper.insertReview(dto);
	}
	
	@Override
	public int checkPlace(String place_id) {
		return mapper.checkPlace(place_id);
	}
	
	@Override
	public void insertPlace(PlaceDto place) {
		mapper.insertPlace(place);
	}
		
	@Override
	public void updateReview(InsertReviewDto dto) {
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
