<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script type="text/javascript">
$(function(){
	$('#btn').click( fn_send );
	
	//사용자입력=> JSON변환해서 서버에서 전달
	function fn_send() {
		var name = $('#name').val();
		var age = $('#age').val();
		var obj = {"name":name,
					"age" : age}; //JSON데이터
		$.ajax({
			url: 'person',
			type : 'post',
			data : JSON.stringify(obj), //서버로 보내는 데이터
			contentType :'application/json', //서버로 보내는 데이터타입 @RequestBody로 받을 때 타입의 명시가 필요하다.
			dataTyp :'json', //서버에서 받는 데이터 타입
			success:function(response){
			$('#content').empty();
			$('#content').append('<ul>');
			$('#content').append('<li>이름 :'+response.name +'</li>');
			$('#content').append('<li>나이 :'+response.age +'</li>');
			$('#content').append('</ul>');				
				},
			error:function(){
				alert('오류발생');
			}
		});//ajax
	}//fn_send
	
	
	$('#btnList').on('click',fn_getList); //클릭할떄이용 익명함수를 안쓰는 이유는 모듈화를 하기위해서입니다.
	function fn_getList() {
		$.ajax({			
			url:'getListJSON',
			dataType:'json',
			success:function(response){
				//java's ArrayList => JavaScript's array
				var array = response;
				$('#list').empty();				
				$.each(array , function(i,personDTO){
					$('#list').append('<tr>');
					$('#list').append('<td>'+(i+1)+'</td>');
					$('#list').append('<td>'+personDTO.name+'</td>');
					$('#list').append('<td>'+personDTO.age+'</td>');
					$('#list').append('</tr>');
				});
			},
			error:function(){
				alert('오류발생');
			}
		});
	}
	
	
	
	
	
	
});	
	
	
</script>
</head>
<body>

	<form>
		이름 <input type="text" id="name"/><br/><br/>
		나이 <input type="text" id="age"/><br/><br/>
		<input  type="button" id="btn" value="입력"/> 
	</form>

	<br/><br/>
	
	<div id="content"></div>
	
	
	<!--RestController1의 getListJSON 데어터 받아오기  -->
	<hr/>
	
	<input type="button" id="btnList" value="가져오기"/>
	
	<h3>사용자목록</h3>
	<table>
		<thead>
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>나이</td>
		</tr>
		</thead>
		<tbody id="list"></tbody>
	</table>
	
</body>
</html>