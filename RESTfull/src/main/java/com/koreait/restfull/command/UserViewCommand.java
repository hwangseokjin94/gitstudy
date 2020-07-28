package com.koreait.restfull.command;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.restfull.dao.UserDao;

public class UserViewCommand implements UserCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {
			Map<String, Object> map = model.asMap();
			String userId = (String) map.get("userId");
			UserDao uDao = sqlSession.getMapper(UserDao.class);
			
			Map<String, Object> resultMap = new HashMap<String, Object>();
			resultMap.put("userDto", uDao.selectByUserId(userId));
			resultMap.put("result", true);
		return resultMap;
	}

}
