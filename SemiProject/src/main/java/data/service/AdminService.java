package data.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.MenuDto;
import data.mapper.AdminMapperInter;

@Service
public class AdminService implements AdminServiceInter {
	
	@Autowired
	private AdminMapperInter mapper;

	@Override
	public void insertMenu(MenuDto menu) {
		mapper.insertMenu(menu);
	}

}
