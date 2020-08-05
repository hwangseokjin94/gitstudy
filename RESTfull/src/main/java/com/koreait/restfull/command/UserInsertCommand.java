package com.koreait.restfull.command;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.restfull.dao.UserDao;
import com.koreait.restfull.dto.UserDto;

public class UserInsertCommand implements UserCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {
		Map<String, Object> map = model.asMap();
		UserDto userDto = (UserDto)map.get("userDto");
		
		UserDao uDao = sqlSession.getMapper(UserDao.class);
		Map<String, Object> resultMap = new HashMap<String, Object>();
		//insert 결과는 정수
		resultMap.put("result", uDao.insertUser(userDto));
		
		return resultMap;
	}

}
