package data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.MenuRankDto;

@Mapper
public interface MenuRankMapperInter {

	public List<MenuRankDto> getMenuRank(int member_num);
}
