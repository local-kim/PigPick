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
	public List<MenuDto> getRecommendList(int category, int type, int spicy) {
		Map<String, Integer> map = new HashMap<>();
		map.put("category", category);
		map.put("type", type);
		map.put("spicy", spicy);
		
		return mapper.getRecommendList(map);
	}

}
