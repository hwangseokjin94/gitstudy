<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

	function fn_memberLeave(f) {
		
			alert('정말로탈퇴하시겠습니까?');
		
		f.action='memberLeave';
		f.submit();
	}


</script>
</head>
<body>
<style>
	.leave-box table {
		border-collapse: collapse;
		width: 400px;
		margin: auto;
	}
	.leave-box table td {
		border: 1px solid black;
		padding: 5px;		
	}
	.leave-box table tfoot {
		text-align: center;
	}
</style>

 
<div class="leave-box">
	<form method="POST">
		<table>
			<tbody>
				<tr>
					<td>탈퇴 아이디</td>
					<td><input id="mId" type="text" name="mId" value="${loginDTO.mId}"></td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
					<td><input id="mPw" type="password" name="mPw"></td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="2">
						<input type="hidden" name="mNo" value="${loginDTO.mNo}">
						<input type="button" value="회원탈퇴" onclick="fn_memberLeave(this.form)" />
					</td>
				</tr>
			</tfoot>
		</table>
	</form>
</div>
	
</body>
</html>