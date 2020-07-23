package com.koreait.rest.dto;

//lombok은 생성자 ,Getter,Setter등을 자동으로 생성해준다.

//@Getter// Getter자동생성해주세요
//@Setter//Setter자동생성해주세요
//@Data//Getter,Setter 자동생성해주세요
//@AllArgsConstructor//필드를 이용한 생성자를 만들어주세요ㅗ
//@NoArgsConStructor // 디폴트 생성자를 만들어주세요
public class PersonDTO {

	//lombok을 사용할땐 필드만 추가한다.
	private String name;
	private int age;
	public PersonDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public PersonDTO(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}


	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	
}
