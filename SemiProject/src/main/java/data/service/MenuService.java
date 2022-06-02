package data.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.MenuDto;
import data.mapper.MenuMapperInter;

@Service
public class MenuService implements MenuServiceInter {
	
	@Autowired
	private MenuMapperInter mapper;
	
	@Override
	public List<MenuDto> getMenu() {
		return mapper.getMenu();
	}

	@Override
	public List<MenuDto> getRecommendList(int category, int type, int spicy) {
		Map<String, Integer> map = new HashMap<>();
		map.put("category", category);
		map.put("type", type);
		map.put("spicy", spicy);
		
		return mapper.getRecommendList(map);
	}
	
	@Override
	public int checkMenuRank(int memberNum, int menuNum) {
		Map<String, Integer> map = new HashMap<>();
		map.put("member_num", memberNum);
		map.put("menu_num", menuNum);
		
		return mapper.checkMenuRank(map);
	}
	
	@Override
	public void insertMenuCount(int memberNum, int menuNum) {
		Map<String, Integer> map = new HashMap<>();
		map.put("member_num", memberNum);
		map.put("menu_num", menuNum);
		
		mapper.insertMenuCount(map);
	}

	@Override
	public void increaseMenuCount(int memberNum, int menuNum) {
		Map<String, Integer> map = new HashMap<>();
		map.put("member_num", memberNum);
		map.put("menu_num", menuNum);
		
		mapper.increaseMenuCount(map);
	}
}
