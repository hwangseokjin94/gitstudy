package com.koreait.cset.command.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.cset.common.CsetCommand;
import com.koreait.cset.dao.MemberDAO;

public class memberInsertCommand implements CsetCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		HttpServletResponse response = (HttpServletResponse)map.get("response");
		
		
		String mSno = request.getParameter("mSno");
		String mId = request.getParameter("mId");
		String mName = request.getParameter("mName");
		String mPw = request.getParameter("mPw");
		String mAddr = request.getParameter("mAddr");
		String mEmail = request.getParameter("mEmail");
		String mPhone = request.getParameter("mPhone");
		int mPno =Integer.parseInt(request.getParameter("mPno"));
		
		 
		String mAddr1 = request.getParameter("mAddr1");
		String mAddr2 = request.getParameter("mAddr2");
		
		mAddr="".concat(mAddr1).concat(mAddr2).concat(mAddr);
		
		
		MemberDAO mDAO = sqlSession.getMapper(MemberDAO.class);
		
		mDAO.memberInsert(mSno, mId, mName, mPw, mAddr,mPno, mEmail, mPhone);
		PrintWriter out;
		response.setContentType("text/html; charset=utf-8");
		try {
			out = response.getWriter();
			out.println("<script type='text/javascript'>");
			out.println("alert('홈페이지로이동합니다 로그인버튼을눌러로그인해주세요');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
