package data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.InsertReviewDto;
import data.dto.PlaceDto;
import data.dto.ReviewDto;

@Mapper
public interface ReviewMapperInter {
	public int getTotalCount();
	public List<ReviewDto> getReviewList();
	public ReviewDto getReview(int review_num);
	public List<ReviewDto> getReviewByPlace(int place_id);
	public void insertReview(InsertReviewDto dto);
	public int checkPlace(String place_id);
	public void insertPlace(PlaceDto place);
	public void updateReview(InsertReviewDto dto);
	public void deleteReview(int num);
}
