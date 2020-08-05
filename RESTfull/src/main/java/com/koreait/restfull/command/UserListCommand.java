package com.koreait.restfull.command;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.restfull.dao.UserDao;
import com.koreait.restfull.dto.UserDto;

public class UserListCommand implements UserCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {
		
		UserDao uDAO = sqlSession.getMapper(UserDao.class);
		List<UserDto> userList = uDAO.selectUserList();
		Map<String, Object> map =new HashMap<String, Object>();
		map.put("userList", userList);
		map.put("result", true);
		
		return map;
	}

}
