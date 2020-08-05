<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style type="text/css">
	div { 
		width: 500px;
		margin: auto;
	}
	table {
		width: 500px;
		border-collapse: collapse;
	}
	td {
		border: 1px solid black;
		padding: 10px;
	}
	td:nth-child(1) {
		width: 150px;
	}
	td:nth-child(2) {
		width: 350px;
	}
</style>
<script type="text/javascript">
	function fn_memberInsert(f) {
	 
		if (f.mId.value == "") {
			swal( "아이디를확인하세요","","info" );
			
			f.mId.focus();
			return;
		}
		
		if (f.mPw.value == "") {
			swal({
			    title: "비밀번호를 입력한 뒤 확인하세요.",
			    text: "",
			    icon: "warning" //"info,success,warning,error" 중 택1
			});
			f.mPw.focus();
			return;
		}
		
		if (f.mPw.value != f.mPw2.value) {
			
			swal({
			    title: "비밀번호가 일치하지않습니다.",
			    text: "",
			    icon: "error" //"info,success,warning,error" 중 택1
			});
			f.mPw.focus();
			return;
		}
		
		
		f.action = 'memberInsert';
		f.submit();
	}

</script>

<script type="text/javascript">
	$(function(){
		//아이디여부확인
		$('#idcheckBtn').click(function () {
			$.ajax({
				url: 'memberIdCheck',
				type: 'GET',
				dataType: 'JSON',
				data: 'mId=' + $('#mId').val(),
				success: function(responseObject) {
					if ( responseObject.result == 'EXIST' ) {
						$('#idCheckResult').text('이미 가입된 아이디입니다.');
						$('#idCheckResult').css('color', 'red');
						
						swal({
						    title: "불가능한아이디입니다.",
						    text: "",
						    icon: "warning" //"info,success,warning,error" 중 택1
						});
					}else{
						$('#idCheckResult').text('사용할 수 있는 아이디입니다.');
						$('#idCheckResult').css('color', 'blue').css('font-weight', 'bold');
						swal({
						    title: "사용가능한아이디입니다.",
						    text: "",
						    icon: "success" //"info,success,warning,error" 중 택1
						});
					}
					
				},
				error: function(){
					alert("ajax통신실패");
				}
			
			});
				
		});
		
		
		
	});
</script>

<!--  지도-->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
 
                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
 
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }
 
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
                document.getElementById('sample4_jibunAddress').value = data.jibunAddress;
 
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
 
                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
 
                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
    }
</script>
</head>
<body>


<div>
		<%
			request.setCharacterEncoding("utf-8");
			String useId = request.getParameter("useId"); // 아이디 중복 체크 후 사용 가능한 아이디면 전달되는 파라미터
		%>
		<h1 style="text-align: center;">클로셋회원 가입 페이지</h1>
		<form method="post">
			<table>
				<tr>
					<td>아이디*</td>
					<td>
						<input id="mId" type="text" name="mId" autofocus />
						<input id="idcheckBtn" type="button" value="아이디체크하기" />
						<span id="idCheckResult"></span>
					</td>
					
				</tr>
				<tr>
					<td>비밀번호*</td>
					<td><input type="password" name="mPw" /></td>
				</tr>
				<tr>
					<td>비밀번호확인</td>
					<td><input type="password" name="mPw2" /></td>
				</tr>
			
				<tr>
					<td>성명*</td>
					<td><input type="text" name="mName" /></td>
				</tr>
				<tr>
					<td>주민등록번호</td>
					<td><input type="text" name="mSno" /></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" name="mPhone" /></td>
				</tr>
				
				<tr>
					<td>이메일</td>
					<td><input type="text" name="mEmail" /></td>
				</tr>
				<tr>
					<td>주소검색</td>
					<td> <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br></td>
				</tr>
				<tr>
					<td>우편번호</td>
					<td> <input type="text" name="mPno" id="sample4_postcode" placeholder="우편번호"></td>
				</tr>
				<tr>
					<td>도로명주소</td>
					<td> <input type="text" name="mAddr1" id="sample4_roadAddress" placeholder="도로명주소"></td>
				</tr>
				<tr>
					<td>지번주소</td>
					<td> <input type="text" name="mAddr2" id="sample4_jibunAddress" placeholder="지번주소"> </td>
				</tr>
				<tr>
					<td>상세주소주소</td>
					<td><input type="text" name="mAddr" /></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center">
						<input type="button" value="가입" onclick="fn_memberInsert(this.form)" />&nbsp;&nbsp;
						<input type="reset" value="취소" />&nbsp;&nbsp;
						<input type="button" value="로그인 하러 가기" onclick="location.href='memberLoginPage'" />
					</td>
				</tr>
			</table>
		</form>
	</div>
	
</body>
</html>