<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.wrap{
	display: flex;
}
.left{
	width:500px;
	
}
.right{
	width:600px;
}
label{
	display: block;
	margin-top: 10px;
	margin-bottom: 3px;
}
input[type=text],select{
	width:400px;
	height: 20px;
}
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
		userSelect();
		userInsert();
		userUpdate();
		userDelete();
		init();
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
	/*2.사용자 목록 테이블 만들기   동적버튼*/
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
			.append($('<input type = "hidden" id="hidden_userId"/>').val(user.userId))
			.appendTo('tbody')
		});
	}
	 /* 동적버튼 $('#btnSelect').click(); 동적으로 만든버튼은 이벤트 동작하지않음... 
	 $().on('click',function(){}); 
	 $().on('click','selector',function(){}); */
	 
	/*해결해야될점 줄마다다른데이터가 있지만 id는 btnSelect다동일하다
		버튼의tr을 찾아서 히든 유저 아이디값을 꺼내와서 어떤버튼을눌렀을때
		부모를 찾아가기떄문에 정보가 다르게 꺼내올수있다.
		parents()   closest() 메소드를 이용하면된다.*/
	
	/* 3.사용자 정보가저오기*/
	function userSelect() {
		//ajax를 통해서 동적으로 추가된 버튼은 $().click()이 불가능 하다.		
		//동적으로 추가된 요소에 이벤트를 바인딩 하려면 $().on()을 사용한다. 
		//테이블이 부모가 많으면많거나 테이블안에있응면 parents부적절
		//closest는 가장가까운 tr을 찾는다.
		$('body').on('click','#btnSelect',function(){
			
			//var userId = $(this).parents('tr').find('#hidden_userId').val(); 
			var userId = $(this).closest('tr').find('#hidden_userId').val();			
			$.ajax({
				url: 'users/'+userId,   //@RequestMappin(value="users/{userId}")
				type: 'get',
				dataType: 'json',
				success: function (response) {
					//response
					//{"result":true,"userDto":{"userId":"user2","userName":"사만다","gender":"여","address":"경기"}}					
					if(response.result ==true ){
						userSelectResult(response);						
					}
				},
				error:function(){
					alert('에러발생');
				}		
			});
			
		});
		
	}
	/* 4.사용자 정보 출력하기 */
	function userSelectResult(response){
		var user = response.userDto;
		//$('input[type=text][name="userId"]')
		$('input:text[name="userId"]').val(user.userId);
		$('input:text[name="userName"]').val(user.userName);
		$('input:radio[name="gender"][value="'+user.gender+'"]').prop('checked',true);
		$('select[name="address"]').val(user.address).prop('selected',true);
		//$('select[name="address"][value="'+user.address+'"]').prop('selected','selected');
		//$('input:radio[name="gender"]').val(user.gender).prop('checked',true);
	}
	
	/* 5.사용자 등록 나중에 댓글등록 유용 */
	function userInsert() {
		$('#btnInsert').click(function(){
			var userId = $('input:text[name="userId"]').val();
			var userName = $('input:text[name="userName"]').val();
			var gender = $('input:radio[name="gender"]:checked').val();
			var address = $('select[name="address"]').val();
			var obj = {"userId":userId,"userName":userName,"gender":gender,"address":address};
			$.ajax({
				url:'users',
				type: 'post', //@RequestBody UserDto usreDto
				contentType :'application/json; charset = utf-8',//data를 @RequestBody가 받을 때 작성			
				data: JSON.stringify(obj),
				dataType: 'json',
				success: function (response) {
					//response
					//{"result" : 1}
					if(response.result == 1){
						alert('삽입되었습니다.');						
						userList();
					}
				},
				error:function(){
					alert('에러발생');
				}		
			});
		});		
		
	}
	//6.사용자 수정
	function userUpdate() {
		$('#btnUpdate').click(function(){
			var userId = $('input:text[name="userId"]').val();
			var userName = $('input:text[name="userName"]').val();
			var gender = $('input:radio[name="gender"]:checked').val();
			var address = $('select[name="address"]').val();
			var obj = {"userId":userId,"userName":userName,"gender":gender,"address":address};
			$.ajax({
				url:'users',
				type:'put',
				data:JSON.stringify(obj),
				contentType :'application/json; charset = utf-8',//data를 @RequestBody가 받을 때 작성
				dataType: 'json',
				success: function (response) {
					//response
					//{"result" : 1}
					if(response.result == 1){
						alert('사용자정보업데이트되었습니다..');						
						userList();
					}
				},
				error:function(){
					alert('에러발생');
				}		
			});
		});
	}
	//7.사용자삭제
	function userDelete() {
		$('body').on('click','#btnDelete',function(){
			var userId = $(this).closest('tr').find('#hidden_userId').val();
			var check = confirm(userId+'님정보를 삭제할까요?');
			if(check){
				$.ajax({
					url:'users/'+userId,
					type:'delete',
					dataType:'json',
					success:function(response){
						if(response.result == 1){
							alert(userId+'님의 정보가 삭제되었습니다.');						
							userList();
						}
					},
					error:function(){
						alert('에러발생');
					}
				});
			}
			
		});
	}
	//8.초기화
	function init() {		
			$('#btnInit').click(function(){
			$('input:text[name="userId"]').val('');
			$('input:text[name="userName"]').val('');
			$('input:radio[name="gender"]').prop('checked',false);
			$('select[name="address"]').val('');
			userList();
		});
	}
</script>
</head>
<body>

	<div class="wrap">
		<div class="left">
		<h3>사용자등록/수정</h3>
			<label>아이디</label>
			<input type="text" name="userId"/><br/>
			
			<label>이름</label>
			<input type="text" name="userName"/><br/>
			
			<label>성별</label>
			<input type="radio" name="gender" value="남"/>남<br/>
			<input type="radio" name="gender" value="여"/>여<br/>
			
			<label>주소</label>
			<select name="address">
				<option value="서울">서울</option>
				<option value="경기">경기</option>
				<option value="인천">인천</option>
				<option value="부산">부산</option>
				<option value="제주">제주</option>
			</select>
			<br/><br/>
			<input type="button" value="등록" id="btnInsert"/><!-- 정적버튼 $('#btnInsert').click(); --> 
			<input type="button" value="수정" id="btnUpdate"/> 
			<input type="button" value="초기화" id="btnInit"/> 
			
			<input type="button" value="이동" onclick="location.href='index2'"/> 
			

		</div>
		
		<div class="rtight">
	
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
			
			
		</div>
	</div>

</body>
</html>