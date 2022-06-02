package data.service;

import java.util.List;

import data.dto.MemberDto;
import data.dto.MenuRankDto;
import data.dto.ReviewDto;

public interface MyPageServiceInter {
	public List<MenuRankDto> getMenuRank(int memberNum);
	public List<ReviewDto> getReviewList(int memberNum);
	public List<ReviewDto> getReviewListByStars(int memberNum);
	public MemberDto getMemberInfo(int memberNum);
	public void updateMember(MemberDto member);
	public void deleteMember(int memberNum);
}
