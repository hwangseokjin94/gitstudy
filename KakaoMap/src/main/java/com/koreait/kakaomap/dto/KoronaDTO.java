package com.koreait.kakaomap.dto;

import java.sql.Date;

public class KoronaDTO {
	private int kNo,kSubno;
	private Date kRegdate;
	private String kRegion,kContent,kSubcontent,kLatitude,kLongitude;
	public KoronaDTO() {
		// TODO Auto-generated constructor stub
	}
	public KoronaDTO(int kNo, int kSubno, Date kRegdate, String kRegion, String kContent, String kSubcontent,
			String kLatitude, String kLongitude) {
		super();
		this.kNo = kNo;
		this.kSubno = kSubno;
		this.kRegdate = kRegdate;
		this.kRegion = kRegion;
		this.kContent = kContent;
		this.kSubcontent = kSubcontent;
		this.kLatitude = kLatitude;
		this.kLongitude = kLongitude;
	}
	public int getkNo() {
		return kNo;
	}
	public void setkNo(int kNo) {
		this.kNo = kNo;
	}
	public int getkSubno() {
		return kSubno;
	}
	public void setkSubno(int kSubno) {
		this.kSubno = kSubno;
	}
	public Date getkRegdate() {
		return kRegdate;
	}
	public void setkRegdate(Date kRegdate) {
		this.kRegdate = kRegdate;
	}
	public String getkRegion() {
		return kRegion;
	}
	public void setkRegion(String kRegion) {
		this.kRegion = kRegion;
	}
	public String getkContent() {
		return kContent;
	}
	public void setkContent(String kContent) {
		this.kContent = kContent;
	}
	public String getkSubcontent() {
		return kSubcontent;
	}
	public void setkSubcontent(String kSubcontent) {
		this.kSubcontent = kSubcontent;
	}
	public String getkLatitude() {
		return kLatitude;
	}
	public void setkLatitude(String kLatitude) {
		this.kLatitude = kLatitude;
	}
	public String getkLongitude() {
		return kLongitude;
	}
	public void setkLongitude(String kLongitude) {
		this.kLongitude = kLongitude;
	}
	
	
}
