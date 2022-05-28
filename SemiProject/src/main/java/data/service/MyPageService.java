package data.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.MemberDto;
import data.dto.MenuRankDto;
import data.dto.ReviewDto;
import data.mapper.MyPageMapperInter;
import util.Util;

@Service
public class MyPageService implements MyPageServiceInter {
	
	@Autowired
	MyPageMapperInter mapper;

	@Override
	public List<MenuRankDto> getMenuRank(int member_num) {
		List<MenuRankDto> list = mapper.getMenuRank(member_num);
		Util.convertCategory(list);
		
		return list;
	}
	
	@Override
	public List<ReviewDto> getReviewList(int member_num) {
		return mapper.getReviewList(member_num);
	}
	
	@Override
	public MemberDto getMemberInfo(int member_num) {
		return mapper.getMemberInfo(member_num);
	}
	
	@Override
	public void updateMemberInfo(MemberDto member) {
		mapper.updateMemberInfo(member);
	}
}
