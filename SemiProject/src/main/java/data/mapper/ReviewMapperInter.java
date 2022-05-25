package data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.ReviewDto;

@Mapper
public interface ReviewMapperInter {
	public int getTotalCount();
	public List<ReviewDto> getReviewList();
	public ReviewDto getReview(int review_num);
	public void insertReview(ReviewDto dto);
	public void updateReview(ReviewDto dto);
	public void deleteReview(int num);
}
