package data.service;

import java.util.List;

import data.dto.MemberDto;
import data.dto.MenuRankDto;
import data.dto.ReviewDto;

public interface MyPageServiceInter {
	public List<MenuRankDto> getMenuRank(int member_num);
	public List<ReviewDto> getReviewList(int member_num);
	public MemberDto getMemberInfo(int member_num);
	public void updateMemberInfo(MemberDto member);
}
