package data.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.MenuRankDto;
import data.mapper.MenuRankMapperInter;

@Service
public class MyPageService implements MyPageServiceInter {
	
	@Autowired
	MenuRankMapperInter mapper;

	@Override
	public List<MenuRankDto> getMenuRank(int member_num) {
		
		
		return mapper.getMenuRank(member_num);
	}
}
