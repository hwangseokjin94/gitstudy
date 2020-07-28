package com.koreait.restfull.dao;

import java.util.List;

import com.koreait.restfull.dto.UserDto;

public interface UserDao {

	public List<UserDto> selectUserList();
	
	public UserDto userSelectById();
	
	public UserDto selectByUserId(String userId);
	
	public int insertUser(UserDto userDto);
	
	public int updateUser(UserDto userDto);
	
	public int deleteUser(String userId);
}
