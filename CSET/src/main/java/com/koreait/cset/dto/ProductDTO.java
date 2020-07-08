package com.koreait.cset.dto;

public class ProductDTO {
 private int pNo,pPrice,pDisrate;
 private String pName,pFilename,pCategory,pCategory_sub,pBrand,pSize;
 public ProductDTO() {
	// TODO Auto-generated constructor stub
}
public ProductDTO(int pNo, int pPrice, int pDisrate, String pName, String pFilename, String pCategory,
		String pCategory_sub, String pBrand, String pSize) {
	super();
	this.pNo = pNo;
	this.pPrice = pPrice;
	this.pDisrate = pDisrate;
	this.pName = pName;
	this.pFilename = pFilename;
	this.pCategory = pCategory;
	this.pCategory_sub = pCategory_sub;
	this.pBrand = pBrand;
	this.pSize = pSize;
}
public int getpNo() {
	return pNo;
}
public void setpNo(int pNo) {
	this.pNo = pNo;
}
public int getpPrice() {
	return pPrice;
}
public void setpPrice(int pPrice) {
	this.pPrice = pPrice;
}
public int getpDisrate() {
	return pDisrate;
}
public void setpDisrate(int pDisrate) {
	this.pDisrate = pDisrate;
}
public String getpName() {
	return pName;
}
public void setpName(String pName) {
	this.pName = pName;
}
public String getpFilename() {
	return pFilename;
}
public void setpFilename(String pFilename) {
	this.pFilename = pFilename;
}
public String getpCategory() {
	return pCategory;
}
public void setpCategory(String pCategory) {
	this.pCategory = pCategory;
}
public String getpCategory_sub() {
	return pCategory_sub;
}
public void setpCategory_sub(String pCategory_sub) {
	this.pCategory_sub = pCategory_sub;
}
public String getpBrand() {
	return pBrand;
}
public void setpBrand(String pBrand) {
	this.pBrand = pBrand;
}
public String getpSize() {
	return pSize;
}
public void setpSize(String pSize) {
	this.pSize = pSize;
}
 

 
}
