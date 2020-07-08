<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function fn_memberLeavePage(f){
	if(confirm('정말 회원탈퇴 하시겠습니까?')){
		f.action = 'memberLeavePage';
		f.submit();
	}
}
function fn_memberChangePage(){
	if(confirm('회원변경페이지로 이동하시겠습니까?')){
		location.href = 'memberChangePage';
		
	}
}
</script>
</head>
<body>

<div class="my-box">
	<h1>마이페이지</h1>
    <form id="f" method="POST">
    	<h1>${loginDTO.mName}님 회원정보입니다.</h1>
		<table>
			<tbody>
				<tr>
					<td>회원번호</td>
					<td><input id="mNo" type="text" name="mNo" value="${loginDTO.mNo}" readonly /></td>
				</tr>
				<tr>
					<td>아이디</td>
					<td><input id="mId" type="text" name="mId" value="${loginDTO.mId}" readonly /></td>
				</tr>
				<tr>
					<td>성명</td>
					<td><input id="mName" type="text" name="mName" value="${loginDTO.mName}" /></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input id="mEmail" type="text" name="mEmail" value="${loginDTO.mEmail}" /></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input id="mPhone" type="text" name="mPhone" value="${loginDTO.mPhone}" /></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input id="mAddress" type="text" name="mAddr" value="${loginDTO.mAddr}" /></td>
				</tr>
				<tr>
					<td>등급</td>
					<td><input id="mGrade" type="text" name="mGrade" value="${loginDTO.mGrade}"readonly /></td>
				</tr>
				<tr>
					<td>포인트</td>
					<td><input id="mPoint" type="text" name="mPoint" value="${loginDTO.mPoint}"readonly /></td>
				</tr>
				<tr>
					<td>가입일</td>
					<td>${loginDTO.mRegdate}
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="2">
						<input id="updateBtn" type="button" value="회원정보수정하기" onclick="fn_memberChangePage()"/>
						<input id="changePwBtn" type="button" value="비밀번호수정하기" />
						<input id="member" type="button" value="회원탈퇴하기" onclick="fn_memberLeavePage(this.form)" />
					</td>
				</tr>
			</tfoot>
		</table>
	</form>
</div>


</body>
</html>