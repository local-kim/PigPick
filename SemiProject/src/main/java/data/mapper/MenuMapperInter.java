package data.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import data.dto.MenuDto;

@Mapper
public interface MenuMapperInter {
	public List<MenuDto> getRecommendList(Map<String, Integer> map);
	public int checkMenuRank(Map<String, Integer> map);
	public void insertMenuCount(Map<String, Integer> map);
	public void increaseMenuCount(Map<String, Integer> map);
}
