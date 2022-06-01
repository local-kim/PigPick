package data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.MemberDto;
import data.dto.MenuDto;
import data.dto.MenuRankDto;
import data.dto.ReviewDto;

@Mapper
public interface AdminMapperInter {
	public void insertMenu(MenuDto menu);
	public List<MemberDto> getMemberList();
	public List<ReviewDto> getReviewList();
	public List<MenuRankDto> getMenuRankList();
	public void deleteMember(String member_num);
	public void deleteReview(String review_num);
}
