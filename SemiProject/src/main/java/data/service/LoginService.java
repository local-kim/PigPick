package data.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.mapper.LoginMapperInter;
import util.Util;

@Service
public class LoginService implements LoginServiceInter {
	
	@Autowired
	private LoginMapperInter mapper;

	@Override
	public boolean login(String id, String password) {
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("password", password);
		
		return mapper.login(map) == 1 ? true : false;
	}
	
	@Override
	public List<Map<String, Object>> getLoginInfo(String id) {
		
		return mapper.getLoginInfo(id);
	}

	@Override
	public int checkKakaoMember(String id) {
		return mapper.checkKakaoMember(id);
	}
	
	@Override
	public boolean checkPassword(String name, String id, String email) {
		Map<String, String> map = new HashMap<>();
		
		map.put("name", name);
		map.put("id", id);
		map.put("email", email);
		
		return (mapper.checkPassword(map) == 1) ? true : false;
	}
	
	@Override
	public boolean checkId(String name, String email) {
		Map<String, String> map = new HashMap<>();
		
		map.put("name", name);

		map.put("email", email);
		
		return (mapper.checkId(map) == 1) ? true : false;
	}
	
	
	
	
	@Override
	public void changePassword(String id, String password) {
		Map<String, String> map = new HashMap<>();
		
		map.put("id", id);
		map.put("password", Util.encode(password));
		
		mapper.changePassword(map);
	}

	@Override
	public String findId(String name, String email) {
		// TODO Auto-generated method stub
		Map<String, String> map = new HashMap<>();
		
		map.put("name", name);

		map.put("email", email);
		return mapper.findId(map);
	}
}
