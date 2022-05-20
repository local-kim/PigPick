package data.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import data.dto.MenuDto;

@Mapper
public interface MenuMapperInter {
	public List<MenuDto> getRecommendList(Map<String, Integer> map);
}
