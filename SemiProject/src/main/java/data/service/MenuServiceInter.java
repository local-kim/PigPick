package data.service;

import java.util.List;

import data.dto.MenuDto;

public interface MenuServiceInter {
	public List<MenuDto> getMenu();
	public List<MenuDto> getRecommendList(int category, int type, int spicy);
	public int checkMenuRank(int memberNum, int menuName);
	public void insertMenuCount(int memberNum, int menuName);
	public void increaseMenuCount(int memberNum, int menuName);
}
