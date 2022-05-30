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
	private MyPageMapperInter mapper;

	@Override
	public List<MenuRankDto> getMenuRank(int memberNum) {
		List<MenuRankDto> list = mapper.getMenuRank(memberNum);
		Util.convertCategory(list);
		
		return list;
	}
	
	@Override
	public List<ReviewDto> getReviewList(int memberNum) {
		return mapper.getReviewList(memberNum);
	}
	
	@Override
	public MemberDto getMemberInfo(int memberNum) {
		return mapper.getMemberInfo(memberNum);
	}
	
	@Override
	public void updateMember(MemberDto member) {
		mapper.updateMember(member);
	}
	
	@Override
	public void deleteMember(int memberNum) {
		mapper.deleteMember(memberNum);
	}
}
