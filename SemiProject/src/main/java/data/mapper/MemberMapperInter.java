package data.mapper;

import org.apache.ibatis.annotations.Mapper;

import data.dto.MemberDto;

@Mapper
public interface MemberMapperInter {
	public void insertMember(MemberDto member);
	public int checkId(String id);
}
