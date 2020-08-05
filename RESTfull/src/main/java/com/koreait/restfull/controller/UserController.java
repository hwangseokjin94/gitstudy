package com.koreait.restfull.controller;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koreait.restfull.command.UserCommand;
import com.koreait.restfull.command.UserDeleteCommand;
import com.koreait.restfull.command.UserInsertCommand;
import com.koreait.restfull.command.UserListCommand;
import com.koreait.restfull.command.UserUpdateCommand;
import com.koreait.restfull.command.UserViewCommand;
import com.koreait.restfull.dto.UserDto;

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
	   	   
	   	   URI는  URL 의 상위 개념
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
	
	// 요청 GET users/{userId}
	// 응답 {"result":true,"userDto":{"userId":"user2","userName":"사만다","gender":"여","address":"경기"}}
	//경로에 포함된 변수는 @PathVaiable 로 받을 수있다.
	@RequestMapping(value="users/{userId}",method=RequestMethod.GET, produces="application/json; charset = utf-8")
	@ResponseBody
	public Map<String, Object> selectByUserId( @PathVariable("userId") String userId
															,Model model){
		model.addAttribute("userId",userId);
		userCommand = new UserViewCommand();
		return	userCommand.execute(sqlSession, model);
		
	}
	//body에실려있는 데이터를 받아오는것 @RequestBody 로받으면 ajax에서 contentType기재
	@RequestMapping(value="users",method=RequestMethod.POST, produces="application/json; charset = utf-8")
	@ResponseBody
	public Map<String, Object> insertUser(@RequestBody UserDto userDto,Model model){
		if(userDto != null) {			
			model.addAttribute("userDto",userDto);
			userCommand = new UserInsertCommand();
		}
		return	userCommand.execute(sqlSession, model);
		
	}
	
	@RequestMapping(value="users",method=RequestMethod.PUT, produces="application/json; charset = utf-8")
	@ResponseBody
	public Map<String, Object> updateUser(@RequestBody UserDto userDto,Model model){
		if(userDto != null) {			
			model.addAttribute("userDto",userDto);
			userCommand = new UserUpdateCommand();
		}
		return	userCommand.execute(sqlSession, model);
		
	}
	@RequestMapping(value="users/{userId}",method=RequestMethod.DELETE, produces="application/json; charset = utf-8")
	@ResponseBody
	public Map<String, Object> deleteUser( @PathVariable("userId") String userId
													,Model model){		
			model.addAttribute("userId",userId);
			userCommand = new UserDeleteCommand();
		
		return	userCommand.execute(sqlSession, model);
		
	}
	
	@RequestMapping("index2")
	public String index2() {
		return"index2";
	}	
	@RequestMapping("index3")
	public String index3() {
		return"index3";
	}	
	
	
}
