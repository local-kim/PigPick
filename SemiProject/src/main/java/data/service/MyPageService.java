package data.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.MemberDto;
import data.dto.MenuRankDto;
import data.dto.ReviewDto;
import data.mapper.MyPageMapperInter;

@Service
public class MyPageService implements MyPageServiceInter {
	
	@Autowired
	MyPageMapperInter mapper;

	@Override
	public List<MenuRankDto> getMenuRank(String member_id) {
		return mapper.getMenuRank(member_id);
	}
	
	@Override
	public List<ReviewDto> getReviewList(int member_num) {
		return mapper.getReviewList(member_num);
	}
	
	@Override
	public MemberDto getMemberInfo(int member_num) {
		return mapper.getMemberInfo(member_num);
	}
	
	@Override
	public void updateMemberInfo(int member_num, String tel, String address) {
		Map<String, String> map = new HashMap<>();
		
		map.put("num", Integer.toString(member_num));
		map.put("tel", tel);
		map.put("address", address);
		
		mapper.updateMemberInfo(map);
	}
}
