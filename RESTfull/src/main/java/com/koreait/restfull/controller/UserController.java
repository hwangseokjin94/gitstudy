package com.koreait.restfull.controller;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koreait.restfull.command.UserCommand;
import com.koreait.restfull.command.UserListCommand;

@Controller
public class UserController {

	
	/*
	      사용자 관리 RESTFUL 웹서비스
	   RESTFUL : URI + Http Method
	   			
	   |	Resource URI    |  HTTP Method  |  기존방식의 URI	   			
 	목록 | 	 users			|  GET 			|  selectUserList
 	보기 |  users/{userId}	|  GET			|  selectByUserId?userId=admin
 	삽입 |	users			|  POST			|  insertUser
 	수정 | 	users			|  PUT			|  updateUser
 	삭제 |  users/{userId}	|  DELETE 		|  deleteUser?userId=admin
	   	   
	  */
	@Autowired
	private SqlSession sqlSession;
	private UserCommand userCommand;
	@RequestMapping("/")
	public String index() {
		return"index";
	}	
	
	@RequestMapping(value="users",method=RequestMethod.GET, produces="application/json; charset = utf-8")
	@ResponseBody
	public Map<String, Object> sellectUserList(Model model){
		userCommand = new UserListCommand();
		Map<String, Object>  map = userCommand.execute(sqlSession, model);
		userCommand.execute(sqlSession, model);
		return map;
	}
	
	
}
