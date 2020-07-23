package com.koreait.rest.dto;

public class NaverDTO {

	private int total,disolay;
	private String title,link,description,bloggername,bloggerlink;
	public NaverDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public NaverDTO(int total, int disolay, String title, String link, String description, String bloggername,
			String bloggerlink) {
		super();
		this.total = total;
		this.disolay = disolay;
		this.title = title;
		this.link = link;
		this.description = description;
		this.bloggername = bloggername;
		this.bloggerlink = bloggerlink;
	}

	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getDisolay() {
		return disolay;
	}
	public void setDisolay(int disolay) {
		this.disolay = disolay;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getBloggername() {
		return bloggername;
	}
	public void setBloggername(String bloggername) {
		this.bloggername = bloggername;
	}
	public String getBloggerlink() {
		return bloggerlink;
	}
	public void setBloggerlink(String bloggerlink) {
		this.bloggerlink = bloggerlink;
	}
	
}
