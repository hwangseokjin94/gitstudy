package com.koreait.rest.controller;

import java.awt.PageAttributes.MediaType;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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
	
	
	//@RestController  리턴하는 게 뷰가아니다. 
	
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

	//3.List 반환
	@GetMapping(value="getListJSON",produces="application/json; charset = utf-8")
	public List<PersonDTO> getListJson(){
		List<PersonDTO> list = new ArrayList<PersonDTO>();
		for(int i =  1 ; i <= 10 ; i ++) {
			list.add(new PersonDTO("user"+i,20+i));			
		}
		return list;
	}
	
	//4.XML 반환
	@GetMapping(value="getListXML",produces="application/xml; charset = utf-8")
	public List<PersonDTO> getListXML(){
		List<PersonDTO> list = new ArrayList<PersonDTO>();
		for(int i =  1 ; i <= 10 ; i ++) {
			list.add(new PersonDTO("user"+i,20+i));			
		}
		return list;
	}
	
	
	// 5. Map 반환
	@GetMapping(value="getMap",
			produces="application/json; charset = utf-8")
	public Map<String, Object> getMap() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("date", new Date(System.currentTimeMillis()));
		map.put("place", "서울시 마포구");
		map.put("wife", new PersonDTO("에밀리", 25));
		map.put("husband", new PersonDTO("데이빗", 30));
		return map;
	}
	//6.ResponseEntity반환
	//ResponseEntity:"데이터"+"상태코드(HttpStatus)"
	//주요 상태코드
	//정상 : 200, HttpStatus.OK
	//잘못된 요청 : 400, HttpStatus.BAD_REQUEST
	//서버오류 : 500 , HttpStatus.INTERNAL_SERVER_ERROR
	
	
	//http://localhost:9090/rest/getCheck.json?name=애밀리&age=20
	//produces는 생략할수있따.
	@GetMapping(value="getCheck")
	public ResponseEntity<PersonDTO> getCheck(String name , int age){
		PersonDTO pDTO = null;
		if(age<0) {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(pDTO);
		}else {
			pDTO = new PersonDTO();
			pDTO.setAge(age);
			pDTO.setName(name);
			return ResponseEntity.status(HttpStatus.OK).body(pDTO);
		}		
	}
	
	
	
}
