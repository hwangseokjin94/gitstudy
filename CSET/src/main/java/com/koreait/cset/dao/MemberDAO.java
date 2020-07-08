package com.koreait.cset.dao;

import java.util.ArrayList;

import com.koreait.cset.dto.MemberDTO;
import com.koreait.cset.dto.ProductDTO;

public interface MemberDAO {

	//회원가입
	public void memberInsert(String mSno,String mId,String mName,String mPw,String mAddr,int mPno,String mEmail,String mPhone);
	//로그인하기
	public MemberDTO selectBymIdmPw(MemberDTO mDTO);
	//회원목록보기(관리자로그인한에서만)
	public ArrayList<MemberDTO> memberselectList();
	//회원 탈퇴하기
	public void memeberDelete(String mId);
	//회원정보변경하기
	public void memberChange(String mName,String mEmail,String mPhone,String mAddr,int mNo);
	//회원정보회원번호로 보기
	public MemberDTO memberselectByNo(int mNo);
	//아이디조회하기
	public MemberDTO memberselectBymId(String mId);
	//이메일로아이디찾기
	public MemberDTO memberselectBymEmail(String mEmail); 
	//관리자로 상품업로드하기
	//	pName pPrice pCategory pCategory_sub pBrand
	public void memberProductInsert(String pName,String saveFilename,int pPrice,String pCategory,String pCategory_sub,String pBrand);
	//관리자가 상품업로드한페이지보기
	public ArrayList<ProductDTO> selectProductList();
	//관리자가 상품 가격변경하기
	public void memberProductPriceChange(int afterPrice ,int pNo);
}
