package data.service;

import java.util.List;
import data.dto.ReviewDto;

public interface ReviewServiceInter {
	public int getMaxNum();
    public void updateReStep(int reg,int restep);
	public int getTotalCount();
	public List<ReviewDto> getList(int start, int perpage);
	public ReviewDto getData(int num);
	public void insertReview(ReviewDto dto);
	public void updateReview(ReviewDto dto);
	public void deleteReview(int num);


}
