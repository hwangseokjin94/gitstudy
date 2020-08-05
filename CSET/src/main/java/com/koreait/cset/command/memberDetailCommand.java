package com.koreait.cset.command;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.koreait.cset.common.CsetCommand;
import com.koreait.cset.dao.MemberDAO;
import com.koreait.cset.dto.MemberDTO;

public class memberDetailCommand implements CsetCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		HttpServletResponse response = (HttpServletResponse)map.get("response");
		RedirectAttributes rttr = (RedirectAttributes) map.get("rttr");
		int mNo = Integer.parseInt( request.getParameter("mNo"));
		
		
		MemberDAO mDAO = sqlSession.getMapper(MemberDAO.class);
		
		MemberDTO mDTO = mDAO.memberselectByNo(mNo);
		rttr.addFlashAttribute("mDTO",mDTO);
		
		//model.addAttribute("mDTO", mDTO);
		
	}

}
