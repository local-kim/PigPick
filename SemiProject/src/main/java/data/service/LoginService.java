package data.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.mapper.LoginMapperInter;

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

}
