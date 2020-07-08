<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script type="text/javascript">
// AJAX 를 통해 아이디를 찾는다.
// controller를 거치지 않고 따로 서블릿을 생성하여 별도의 처리를 한다.
	$(document).ready(function(){
	$('#findIdBtn').click(function(){
		$.ajax({
			url: 'memberFindId',
			type: 'POST',
			dataType: 'text',
			data: 'mEmail=' + $('#mEmail').val(),
			success: function(responseText) {
				if ( responseText.trim() != "NO" ) {
					$('#findIdResult').text('회원님의 아이디는 ' + responseText + '입니다.');
					$('#findIdResult').css('color', 'blue').css('font-weight', 'bold');
					swal({
					    title: "회원님의 아이디는",
					    text: responseText +"입니다",
					    icon: "success" //"info,success,warning,error" 중 택1
					});
					
				} else {
					$('#findIdResult').text('이메일정보를다시확인해주세요.');
					$('#findIdResult').css('color', 'red').css('font-weight', 'bold');
				}
			},
			
			error: function() {
				alert('AJAX 통신이 실패했습니다.');
			}
		});
	});
	});
</script>



</head>
<body>
<div class="find-id-box">
	<form method="POST">
		<table>
			<tbody>
				<tr>
					<td>가입 당시 이메일</td>
					<td><input id="mEmail" type="text" name="mEmail" autofocus /></td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="2">
						<input id="findIdBtn" type="button" value="아이디찾기" />
						&nbsp;&nbsp;
						<input type="button" value="로그인하러 가기" onclick="" />
					</td>
				</tr>
			</tfoot>
		</table>
	</form>
	<br><br>
	<div id="findIdResult"></div> 
</div>
</body>
</html>