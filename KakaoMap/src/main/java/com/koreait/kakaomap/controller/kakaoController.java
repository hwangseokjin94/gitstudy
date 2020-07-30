package com.koreait.kakaomap.controller;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koreait.kakaomap.command.KoronaCommand;
import com.koreait.kakaomap.command.koronaList;

@Controller
public class kakaoController {
	@Autowired
	private SqlSession sqlSession;
	private KoronaCommand koronaCommand;
	
	
	@RequestMapping("/")
	public String goIndex() {
		return "index";
	}
	@RequestMapping("index2")
	public String goIndex2() {
		return "index2";
	}
	@RequestMapping(value="korona",method=RequestMethod.GET, produces="application/json; charset = utf-8")
	@ResponseBody
	public Map<String, Object>  selectKoronaList(Model model){
		koronaCommand = new koronaList();
		Map<String, Object> map = koronaCommand.execute(sqlSession, model);
		koronaCommand.execute(sqlSession, model);
		return map;
			
	}
	
	
	
	
	
}
