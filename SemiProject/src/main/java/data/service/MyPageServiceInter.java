package data.service;

import java.util.List;

import data.dto.MemberDto;
import data.dto.MenuRankDto;
import data.dto.ReviewDto;

public interface MyPageServiceInter {

	public List<MenuRankDto> getMenuRank(String member_id);
	public List<ReviewDto> getReviewList(int member_num);
	public MemberDto getMemberInfo(int member_num);
	public void updateMemberInfo(int member_num, String tel, String address);
}
