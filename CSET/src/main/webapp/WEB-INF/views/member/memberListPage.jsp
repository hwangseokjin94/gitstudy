<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function fn_memberOrderTotalListPage(f) {
	f.action='memberOrderTotalListPage';
	f.submit();
}
</script>
<body>
<table border="1">
<!-- 관리자입장에서 보는 회원목록입니다. -->
<h1>클로셋 회원목록입니다.</h1>
	<form>
	조회할날짜를 입력하세요 ex) 2020-07-06
	<input type="text" name="date1"/>
	<input type="button" value="주문목록" onclick="fn_memberOrderTotalListPage(this.form)" />
	</form>

		<thead>
			<tr>
				<td>번호</td>
				<td>성명</td>
				<td>전화</td>
				<td>주소</td>
				<td>이메일</td>
				<td>가입일</td>
			</tr>
		</thead>
		<tbody>
			<c:if test="${empty list}">
				<tr>
					<td colspan="6">연락처 없음</td>
				</tr>
			</c:if>
			<c:if test="${not empty list}">
				<c:forEach var="mDTO" items="${list}">
					<tr>
						<td>${mDTO.mNo}</td>
						<td><a href="memberDetailPage?mNo=${mDTO.mNo}">${mDTO.mName}</a></td>
						<td>${mDTO.mPhone}</td>
						<td>${mDTO.mAddr}</td>
						<td>${mDTO.mEmail}</td>
						<td>${mDTO.mRegdate}</td>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="6">
					<input type="button" value="어떤기능을넣을까?" onclick="location.href='''" />					
				</td>
			</tr>
		</tfoot>
	</table>
</body>
</html>