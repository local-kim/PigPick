package data.mapper;

import org.apache.ibatis.annotations.Mapper;

import data.dto.MenuDto;

@Mapper
public interface AdminMapperInter {
	public void insertMenu(MenuDto menu);
}
