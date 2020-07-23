package com.koreait.rest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

//@Controller
//난 일반 컨트롤러야
//내가리턴하는 건 "뷰리졸버"에 의해서 View로 해석되지

@Controller
public class HomeController {
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String index() {
		return"index";
	}	
/*	//http://api.openweathermap.org/data/2.5/weather?q=Seoul&appid=f3635800e8b413f86942d920dd11a061
	@ResponseBody
	@RequestMapping(value="searchWeather", method=RequestMethod.POST, produces="application/json; charset=utf-8")
	public String searchWeather(@RequestParam("SearchCity") String SearchCity) {
		
		
		return "weatherPage";
	}*/
}
