package com.koreait.cset.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.cset.common.CsetCommand;
import com.koreait.cset.dao.MemberDAO;

public class memberChangeCommand implements CsetCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		int mNo = Integer.parseInt(request.getParameter("mNo"));
		String mName = request.getParameter("mName");
		String mEmail = request.getParameter("mEmail");
		String mPhone = request.getParameter("mPhone");
		String mAddr = request.getParameter("mAddr");
		
		
		MemberDAO mDAO = sqlSession.getMapper(MemberDAO.class);
		
		mDAO.memberChange( mName, mEmail, mPhone, mAddr,mNo);
	}

}
