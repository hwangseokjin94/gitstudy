package com.koreait.rest.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.koreait.rest.dto.PersonDTO;

@RestController
public class RestController2 {

	//request (파라미터 처리)
	
	//REST방식에서는  URI 경로의 일부를 파라미터로 사용
	
	//1.@PathVariable
	// 1)일반 Controller보다 RestController 에서 주로 사용한다.
	// 2)URI경로 일부를  {파라미터}로 처리하여 변수로 사용할수 있다.
	//.../{category}/{pno}  =======sport/1000
	
	@GetMapping(value="user/{id}")
	public String getId(@PathVariable("id") String id) {
		return id;
	}
	
	@GetMapping(value="product/{category}/pno/{pno}")
	public String getProduct(@PathVariable("category") String category,
							@PathVariable("pno") int pno) {
		
		String product="category :"+category+",pno : "+ pno;		
		return product;		
	}
	
	//2.@RequestBody
	//	1)request를  body에 실어서 요청  
	//  2)post방식으로 처리
	//  3)클라이언트가 JSON데이터를 서버에 보낼때 주로 사용
	
	@PostMapping(value="person",
				produces="application/json; charset = utf-8")
	public PersonDTO getDTO(@RequestBody PersonDTO pDTO) {//@RequestBody body에실려있는 데이터야 자바스크립트는DTO사용못하니깐 ㅠ
		return pDTO;
	}
}
