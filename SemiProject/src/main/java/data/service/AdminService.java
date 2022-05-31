package data.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.MemberDto;
import data.dto.MenuDto;
import data.dto.MenuRankDto;
import data.dto.ReviewDto;
import data.mapper.AdminMapperInter;
import util.Util;

@Service
public class AdminService implements AdminServiceInter {
	
	@Autowired
	private AdminMapperInter mapper;

	@Override
	public void insertMenu(MenuDto menu) {
		mapper.insertMenu(menu);
	}
	
	@Override
	public List<MemberDto> getMemberList() {
		return mapper.getMemberList();
	}
	
	@Override
	public List<ReviewDto> getReviewList() {
		return mapper.getReviewList();
	}
	
	@Override
	public List<MenuRankDto> getMenuRankList() {
		List<MenuRankDto> list = mapper.getMenuRankList();
		Util.convertCategory(list);
		
		return list;
	}

}
