<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	border-collapse: ;
	border-bottom: 1px solid black;
	border-top: 1px solid black;
}
td {
	padding: 5px 10px;
	text-align: center;
		
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		userList();
	});
	/*사용자 목록  가저오기*/
	function userList() {
		$.ajax({
			url: 'users',
			type: 'get',
			dataType: 'json',
			success:function(response){
				//response
				//{	"result" :true , "userList":[{"userId":"user1","userName":"에밀리","gender":"여","address":"서울"}{}{}{}{}]}
				if(response.result == true){				
					userListResult(response);//결과 테이ㅣ블읠 생성하는 함수
				}	
			},
			error:function(){
				alert('에러발생');
			}		
		});
	}
	/*2.사용자 목록 테이블 만들기  */
	function userListResult (response) {
		$('tbody').empty();
		var userList = response.userList;
		$.each(userList,function(i,user){
			$('<tr>')
			.append($('<td>').html(user.userId) )
			.append($('<td>').html(user.userName) )
			.append($('<td>').html(user.gender) )
			.append($('<td>').html(user.address) )
			.append($('<td>').html('<button id="btnSelect">조회</button>') )
			.append($('<td>').html('<button id="btnDelete">삭제</button>') )
			.append($('<input type = "hidden" id="hidden_userId"/>')).val(user.userId)
			.appendTo('tbody')
		});
	}

	
	
	
	
</script>
</head>
<body>

	<h3>사용자 목록 </h3>
	<table>		
		<thead>
			<tr>
				<td>아이디</td>			
				<td>이름</td>			
				<td>성별</td>			
				<td>주소</td>			
				<td>조회</td>			
				<td>삭제</td>			
			</tr>	
		</thead>
		<tbody ></tbody>
	</table>

</body>
</html>