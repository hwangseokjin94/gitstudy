package com.koreait.restfull.dao;

import java.util.List;

import com.koreait.restfull.dto.UserDto;

public interface UserDao {

	public List<UserDto> selectUserList();
	
	public UserDto userSelectById();
	
}
