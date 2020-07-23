package com.koreait.cset.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.cset.common.CsetCommand;
import com.koreait.cset.dao.MemberDAO;

public class memberDeleteCommand implements CsetCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		String mId = request.getParameter("mId");
		
		MemberDAO mDAO = sqlSession.getMapper(MemberDAO.class);
		mDAO.memeberDelete(mId);
		//회원탈퇴가되면서 기존에 로그인되어있는 아이디 세션아웃 
		HttpSession session = request.getSession();
		session.invalidate();
	}

}
