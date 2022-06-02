package data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.MemberDto;
import data.dto.MenuRankDto;
import data.dto.PlaceDto;
import data.dto.ReviewDto;

@Mapper
public interface MyPageMapperInter {
	public List<MenuRankDto> getMenuRank(int member_num);
	public List<ReviewDto> getReviewList(int member_num);
	public List<ReviewDto> getReviewListByStars(int member_num);
	public MemberDto getMemberInfo(int member_num);
	public void updateMember(MemberDto member);
	public void deleteMember(int member_num);
	public List<PlaceDto> getLikeList(int member_num);
}
