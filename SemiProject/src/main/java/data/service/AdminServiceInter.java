package data.service;

import java.util.List;

import data.dto.MemberDto;
import data.dto.MenuDto;
import data.dto.MenuRankDto;
import data.dto.ReviewDto;

public interface AdminServiceInter {
	public void insertMenu(MenuDto menu);
	public List<MemberDto> getMemberList();
	public List<ReviewDto> getReviewList();
	public List<MenuRankDto> getMenuRankList();
}
