package data.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.MemberDto;
import data.mapper.MemberMapperInter;

@Service
public class MemberService implements MemberServiceInter {
	
	@Autowired
	private MemberMapperInter mapper;

	@Override
	public void insertMember(MemberDto member) {
		mapper.insertMember(member);
	}
	
	@Override
	public int checkId(String id) {
		return mapper.checkId(id);
	}

}
