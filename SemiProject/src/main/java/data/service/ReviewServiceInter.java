package data.service;

import java.util.List;
import data.dto.ReviewDto;

public interface ReviewServiceInter {
	public int getTotalCount();
	public List<ReviewDto> getReviewList();
	public ReviewDto getReview(int reviewNum);
	public void insertReview(ReviewDto dto);
	public void updateReview(ReviewDto dto);
	public void deleteReview(int num);
}
