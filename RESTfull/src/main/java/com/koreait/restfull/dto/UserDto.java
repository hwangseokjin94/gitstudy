package com.koreait.restfull.dto;

//lombok라이브러리 사용
//@data :@getter @Setter
//@NoArgsConstructor:디폴트 생성자
//@AllargsConstructor:필드를 이용한생성자

public class UserDto {

	private String userId;
	private String userName;
	private String gender;
	private String address;
	public UserDto() {
		// TODO Auto-generated constructor stub
	}
	public UserDto(String userId, String userName, String gender, String address) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.gender = gender;
		this.address = address;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
	
}
