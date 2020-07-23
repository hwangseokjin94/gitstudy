package com.koreait.rest.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
/*
  
  1.@RestController
    1)난 RestController야
    2)난 @ResponseBody가 없어도 그방식으로 동작할거야  =>전용컨트롤러
   
  2.@RequestBody
    1)JSON, XML ->java Bean
    2)클라이언트가 전송한 JSON,XML등을Controller에서 Java Bean으로 변환해준다.
     
  3.@ResponseBody
  	1)Java Bean -> JSON, XML
    2)Controller가 Java Bean을 클라이언트에게 JSON  , XML등으로 변환해서 전송해준다.
  
  4.jackson라이브러리가 Java Bean <-> JSON,XML의 변환을 처리한다.
    dependency 에 jackson-databind 를 추가한다.
  
 */

import com.koreait.rest.command.ApiExamSearchBlog;
import com.koreait.rest.common.RestCommand;
import com.koreait.rest.dto.PersonDTO;

@RestController
public class RestController1 {
	private RestCommand restcommand;

	//여기서는@ResponseBody
	
	//1.텍스트 반환
	/*@RequestMapping(value="getText",
					method=RequestMethod.GET,
					produces="text/plain; charset = utf-8")					
	아래꺼와 같은것임.*/
	
	@GetMapping(value="getText",
				produces="text/plain; charset = utf-8")
	public String getText() {
		return "안녕하세요";	
	}
	
	// 2.Java Bean( DTO ) 반환 
	//produces 둘중에 하나를 이용하라 
	@GetMapping(value="getDTO",
			produces= {"application/json; charset = utf-8" ,
						"application/xml; charset = utf-8"})
	public PersonDTO getDTO() {
		return new PersonDTO("애밀리",25);
	}

	//produces 둘중에 하나를 이용하라 
	@GetMapping(value="NaverSearch", produces="application/json; charset = utf-8")
	public String NaverSearch( @RequestParam("query") String query
			,Model model) throws UnsupportedEncodingException {
		
	
		model.addAttribute(query);
		 
		ApiExamSearchBlog command = null;
		command.execute(model);
		return "naverSearchPage";
	}
	
	//일반컨트롤러안에 response바디에붇여서 사용
	

}
