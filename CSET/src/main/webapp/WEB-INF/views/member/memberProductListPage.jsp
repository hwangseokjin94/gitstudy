<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">
 /* $(document).ready( function(){
	 
	
	
	$('#updatePriceBtn'+k).click(function(){
		$.ajax({
			url:'memberUpdatePrice',
			type:'POST',
			dataType:'json',
			data:'afterPrice='+ $('#afterPrice'+k).val() +'&pNo='+ $('#pNo'+k).val(),
			success : function(responseObject) {
				if(true){
					
				}else{
					
				}
			},
			error: function() {
				alert('AJAX 통신이 실패했습니다.');
			}
		});
	});
 }); */

</script>
</head>
<body>
<table border="1">
	<caption>상품목록</caption>
	<thead>
	<tr>
		<td>상품번호</td>
		<td>상품이름</td>
		<td>파일이름</td>
		<td>가격</td>
		<td>대분류</td>
		<td>소분류</td>
		<td>브랜드</td>
		<td>할인율</td>
		<td>사이즈</td>
	</tr>
	</thead>
	<tbody>
		<c:if test="${empty plist}">
				<tr>
					<td colspan="9">이미지글이 없습니다.</td>
				</tr>
		</c:if>
		<c:if test="${not empty plist}">
				<c:forEach var="pDTO" items="${plist}" varStatus="k">
					<form>
					<script type="text/javascript">
						 $(document).ready( function(){
							 
							var k = '${k.index }';
							
						/* 	$('#pNo'+k).text(k+"번째 아이템");
							$('#afterPrice'+k).val('12345'); */
							
						//제품가격변경하기
							
							$('#updatePriceBtn'+k).click(function(){
								$.ajax({
									url:'memberUpdatePrice',
									type:'POST',
									dataType:'json',
									data:'afterPrice='+ $( '#afterPrice'+k ).val() +'&pNo='+ $( '#pNo'+k ).val(),
									success : function(responseObject) {
										if(true){
											
										}else{
											
										}
									},
									error: function() {
										alert('AJAX 통신이 실패했습니다.');
									}
								});
							});
							
							
							
							
						 });

					</script>
						<tr>							
							<td>
								<span>${pDTO.pNo}</span>
								<input type="hidden" id="pNo${k.index}" value="${pDTO.pNo}"/>
							</td>
							<td>${pDTO.pName}</td>
							
							<td><img alt="${pDTO.pFilename}" style="width: 245px; height: 260px;" src="${pageContext.request.contextPath }/resources/storage/${pDTO.pFilename}"></td>
							<td><span id="beforPrice">${pDTO.pPrice}</span><br/>
								<span><input id="updatePriceBtn${k.index }" type="button" value="가격변경"></span>
								<span><input id="afterPrice${k.index }" name="afterPrice" type="text"></span>
								<div id="updatePrice"></div>
							</td>
							<td>${pDTO.pCategory}</td>
							<td>${pDTO.pCategory_sub}</td>
							<td>${pDTO.pBrand}</td>
							<td>${pDTO.pDisrate}</td>
							<td>${pDTO.pSize}</td>						
						</tr>
					</form>
				</c:forEach>
			</c:if>
	</tbody>

</table>
</body>
</html>