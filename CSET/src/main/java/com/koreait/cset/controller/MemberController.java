package com.koreait.cset.controller;

import java.nio.channels.FileChannel.MapMode;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.koreait.cset.command.memberChangeCommand;
import com.koreait.cset.command.memberDeleteCommand;
import com.koreait.cset.command.memberDetailCommand;
import com.koreait.cset.command.memberIdCheck;
import com.koreait.cset.command.memberInsertCommand;
import com.koreait.cset.command.memberListCommand;
import com.koreait.cset.command.memberLoginCommand;
import com.koreait.cset.command.memberLogoutCommand;

import com.koreait.cset.common.CsetCommand;
import com.koreait.cset.dao.MemberDAO;
import com.koreait.cset.dto.MemberDTO;

@Controller
public class MemberController {
	
	@Autowired
	private SqlSession sqlSession;
	private CsetCommand memberCommand;
	
	@RequestMapping("/")
	public String goIndex() {
		return"index";
	}
	
	@RequestMapping("index")
	public String goIndex1() {
		return"index";
	}
	
	@RequestMapping("memberInsertPage")
	public String memberInsertPage() {
		return "member/memberInsertPage";
	}
	//1.회원가입하기
	@RequestMapping(value="memberInsert",method=RequestMethod.POST)
	public String memberJoin(HttpServletRequest request ,Model model) {
		model.addAttribute("request",request);
		memberCommand = new memberInsertCommand();
		memberCommand.execute(sqlSession, model);	
		return"redirect:index";
	}
	//2.회원가입 아이디 유무확인
	@ResponseBody
	@RequestMapping(value="memberIdCheck", produces="application/json; charset=utf-8")
	public String memberIdCheck(@RequestParam("mId") String mId,
				HttpServletRequest request,
				Model model){
		JSONObject obj = new JSONObject();
		MemberDTO mDTO = new MemberDTO();
		MemberDAO mDAO = sqlSession.getMapper(MemberDAO.class);
		mDTO = mDAO.memberselectBymId(mId);
		
		if ( mDTO != null ) {
			obj.put("result", "EXIST");
		} else {
			obj.put("result", "");
		}
		
		return obj.toJSONString();
	}
	//3.로그인페이지로이동하기
	@RequestMapping("memberLoginPage")
	public String memberLoginPage() {
		return"member/memberLoginPage";
	}
	
	//4.로그인 하기
	@RequestMapping(value="memberLogin",method=RequestMethod.POST)
	public String memberLogin(HttpServletRequest request ,
							HttpServletResponse response,
							Model model) {
		model.addAttribute("request",request);
		model.addAttribute("response",response);
		memberCommand = new memberLoginCommand();
		memberCommand.execute(sqlSession, model);
		return"redirect:index";
	}
	
	//5.회원목록가기(관리자입장에서)
	@RequestMapping("memberListPage")
	public String memberListPage(Model model) {
		memberCommand = new memberListCommand();
		memberCommand.execute(sqlSession, model);
		return"member/memberListPage";
	}
	//6.로그아웃하기
	@RequestMapping("memberLogout")
	public String memberLogout(HttpServletRequest request ,
								HttpServletResponse response,
								Model model) {
		model.addAttribute("request",request);
		model.addAttribute("response",response);
		memberCommand = new memberLogoutCommand();
		memberCommand.execute(sqlSession, model);
		return"redirect:index";
	}
	//7.마이페이지
	@RequestMapping("memberViewPage")
	public String memberViewPage() {
		return"member/memberViewPage";
	}
	//8.회원탈퇴 페이지로이동하기
	@RequestMapping("memberLeavePage")
	public String memberLeavePage() {
		return"member/memberLeavePage";
	}
	
	//9.회원탈퇴하기
	@RequestMapping("memberLeave")
	public String memberLeave(HttpServletRequest request ,
								HttpServletResponse response,
								Model model) {
		model.addAttribute("request",request);
		model.addAttribute("response",response);
		
		memberCommand = new memberDeleteCommand();
		memberCommand.execute(sqlSession, model);
		return"redirect:index";
	}

	//10.회원정보 페이지로이동하기
	@RequestMapping("memberChangePage")
	public String memberChangePage() {
		return"member/memberChangePage";
	}
	
	//11.회원정보변경하기 
	@RequestMapping("memberChange")
	public String memberChange(HttpServletRequest request ,
								HttpServletResponse response,
										Model model) {
		model.addAttribute("request",request);
		model.addAttribute("response",response);
		
		memberCommand = new memberChangeCommand();
		memberCommand.execute(sqlSession, model);
		return"redirect:index";
	}
	//12.회원정보 세부페이지로이동하기
	@RequestMapping("memberDetailPage")
	public String memberDetailPage(HttpServletRequest request ,
									RedirectAttributes rttr,
											Model model
											) {
		model.addAttribute("request",request);
		model.addAttribute("rttr",rttr);
		
		memberCommand = new memberDetailCommand();
		memberCommand.execute(sqlSession, model);
		return"member/memberDetailPage";
	}
	
	//13.회원아이디찾기페이지로이동하기
	@RequestMapping("memberFindIdPage")
	public String memberFindIdPage() {
		return"member/memberFindIdPage";
	}
	//14.아이디찾기
		@ResponseBody
		@RequestMapping(value="memberFindId",  produces="text/html; charset=utf-8")
		public String memberFindId(@RequestParam("mEmail") String mEmail,
					HttpServletRequest request,
					Model model){			
			MemberDTO mDTO = new MemberDTO();
			MemberDAO mDAO = sqlSession.getMapper(MemberDAO.class);
			mDTO = mDAO.memberselectBymEmail(mEmail);
			
			String responseText = null;
			if (mDTO != null) {
				responseText = mDTO.getmId();
			} else {
				responseText = "NO";  // 이메일과 일치하는 회원이 없을 때 응답결과는 스스로 정한다.
			}
			
			
			return responseText;
		}
	
/*	//회원탈퇴하기
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping("memberLeave")
	public String memberLeave(HttpServletRequest request ,
			HttpServletResponse response,
			Model model) {
		model.addAttribute("request",request);
		model.addAttribute("response",response);
	
		memberCommand.execute(sqlSession, model);
		return"";
	}*/
	
	
	
	
	
	
	
	
	/*
	@RequestMapping(value="memberOrderTotalListPage",method=RequestMethod.POST)
	public String memberOrderTotalListPage(HttpServletRequest request ,Model model) {
		model.addAttribute("request",request);
		memberCommand.execute(sqlSession, model);
		return"member/memberOrderTotalListPage";
	}
	*/
}
