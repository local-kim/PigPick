package data.service;

import java.util.List;

import data.dto.MenuDto;

public interface MenuServiceInter {
	public List<MenuDto> getRecommendList(int category, int type, int spicy);
}
