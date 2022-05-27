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
	public List<ReviewDto> getReviewByPlace(int place_id) {
		return mapper.getReviewByPlace(place_id);
	}
	
	@Override
	public PlaceDto getPlace(int id) {
		return mapper.getPlace(id);
	}

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
