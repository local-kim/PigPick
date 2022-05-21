package data.service;

import java.util.List;

import data.dto.MenuRankDto;

public interface MyPageServiceInter {

	public List<MenuRankDto> getMenuRank(int member_num);
}
