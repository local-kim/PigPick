package data.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import data.dto.MemberDto;
import data.dto.MenuRankDto;
import data.dto.ReviewDto;

@Mapper
public interface MyPageMapperInter {
	public List<MenuRankDto> getMenuRank(String member_id);
	public List<ReviewDto> getReviewList(int member_num);
	public MemberDto getMemberInfo(int member_num);
	public void updateMemberInfo(Map<String, String> map);
}
