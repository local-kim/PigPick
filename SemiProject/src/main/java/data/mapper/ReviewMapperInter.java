package data.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import data.dto.ReviewDto;

@Mapper
public interface ReviewMapperInter {
	public int getMaxNum();
	public void updateReStep(int reg,int restep);
	public int getTotalCount();
	public List<ReviewDto> getList(Map<String, Integer> map);
	public ReviewDto getData(int num);
	public void insertReview(ReviewDto dto);
	public void updateReview(ReviewDto dto);
	public void deleteReview(int num);
}
