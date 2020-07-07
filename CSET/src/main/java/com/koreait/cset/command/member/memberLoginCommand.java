package com.koreait.cset.command.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.cset.common.CsetCommand;
import com.koreait.cset.dao.MemberDAO;
import com.koreait.cset.dto.MemberDTO;

public class memberLoginCommand implements CsetCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model)  {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		HttpServletResponse response = (HttpServletResponse)map.get("response");
		
	
		String mId = request.getParameter("mId");
		String mPw = request.getParameter("mPw");
		
		// MemberDTO
		MemberDTO mDTO = new MemberDTO();
		mDTO.setmId(mId);
		mDTO.setmPw(mPw);
		MemberDAO mDAO = sqlSession.getMapper(MemberDAO.class);
		HttpSession session = null;
		
		
		MemberDTO loginDTO =mDAO.selectBymIdmPw(mDTO);
		
		if(loginDTO != null) { // 검색된 회원이 있으면
			// ** 세션에 회원정보 올리기 **
			session = request.getSession();
			session.setAttribute("loginDTO", loginDTO); // 로그인에 성공하면 회원정보가 session에 저장.
			model.addAttribute("loginDTO",loginDTO);
		}  else {
			PrintWriter out;
			try {
				response.setContentType("text/html; charset=utf-8");
				out = response.getWriter();
				out.println("<script type='text/javascript'>");
				out.println("alert('아이디와 비밀번호를확인해주세요');");
				out.println("history.back();");
				out.println("</script>");
				out.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
	
	}

}
