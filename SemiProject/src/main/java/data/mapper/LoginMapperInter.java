package data.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LoginMapperInter {
	public int login(Map<String, String> map);
	public String getLoginName(String id);
}
