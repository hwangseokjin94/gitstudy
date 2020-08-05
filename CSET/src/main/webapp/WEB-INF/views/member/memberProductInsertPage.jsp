<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function fn_memberProductInsert(f){
	
	f.action = 'memberProductInsert';
	f.submit();
}
	</script>
</head>
<body>
<h1>물품등록페이지입니다.</h1>

	<form method="POST" enctype="multipart/form-data">
	상품명 <input name="pName"><br><br>
	상품가격 <input name="pPrice"><br><br>
	상품카테고리
	<select name="pCategory">
		<option value="상의">상의</option>
		<option value="하의">하의</option>
		<option value="아우터">아우터</option>
	</select><br><br>
	세부분류<select name="pCategory_sub">
		<option value="티셔츠">티셔츠</option>
		<option value="맨투맨후드">맨투맨후드</option>
		<option value="청바지">청바지</option>
		<option value="슬랙스">슬랙스</option>
		<option value="자켓">자켓</option>
		<option value="코트">코트</option>
	</select><br><br>
	브랜드명<select name="pBrand">
		<option value="나이키">나이키</option>
		<option value="아디다스">아디다스</option>
		<option value="페이탈리즘">페이탈리즘</option>
		<option value="피스워커">피스워커</option>		
	</select><br><br>
		등록할파일 <input type="file" name="files" multiple="multiple"><br> <!-- *여러개 첨부 가능 싱글은 필요없다 -->
		<br><br>
	<input type="button" value="상품등록" onclick="fn_memberProductInsert(this.form)">
	<input type="button" value="리스트로 이동" onclick="location.href='memberProductListPage'">
											
	</form>


</body>
</html>