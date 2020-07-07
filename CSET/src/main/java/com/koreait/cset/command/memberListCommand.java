package com.koreait.cset.command;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.cset.common.CsetCommand;
import com.koreait.cset.dao.MemberDAO;
import com.koreait.cset.dto.MemberDTO;

public class memberListCommand implements CsetCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		MemberDAO mDAO = sqlSession.getMapper(MemberDAO.class);
		
		ArrayList<MemberDTO> list =mDAO.memberselectList(); 
		
		model.addAttribute("list", list);
		
	}

}
