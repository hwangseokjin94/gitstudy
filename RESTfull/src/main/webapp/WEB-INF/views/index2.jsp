<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('#searchbtn').click(function(){
	
			var t_code = $('#t_code').val();
			var t_invoice =$('#t_invoice').val();
			var apiURI ="https://info.sweettracker.co.kr/api/v1/trackingInfo?t_key=7mIE6iC8OfDeYXc7qyi6ug&t_code="+t_code+"&t_invoice="+t_invoice;
			console.log(t_code);
			console.log(t_invoice);
			$.ajax({
				url: apiURI,
				type:'get',
				dataType:'json',
				async:"false",
				contentType :'application/json; charset = utf-8',
				success:function(response){	
					alert(response.msg);
					console.log(response.trackingDetails[0].timeString);
					//$('#invoice').text(response.invoiceNo);					
					var trackingDetails = response.trackingDetails;
					$.each(trackingDetails,function(i,t){
						$('<tr>')
						.append($('<td>').html(t.timeString) )										
						.append($('<td>').html(t.where) )										
						.append($('<td>').html(t.kind) )										
						.appendTo('tbody')
					});
					
				      
					
				},
				error:function(){
					alert('에러발생');
				}		
			});
		
	});
	
});
</script>
</head>
<body>
<!-- 
//  var popUrl ="index3";
					 // var popOption = "width=650px, height=550px, resizable=no, location=no, top=300px, left=300px;"
						        
					 // window.open(popUrl,"타이틀들어갈제목 ",popOption);   
						
					//console.log(response.trackingDetails[0].timeString); -->
	<label>택배사코드</label>
	<input type="text" name="t_code" id="t_code"/><br/>
	<label>운송장번호</label>
	<input type="text" name="t_invoice" id= "t_invoice"/><br/>
	<input type="button" id="searchbtn" value="조회하기">
	
	<table>
		<span id="invoice">송장정보</span>
		<thead>
			<tr>
				<td>처리일시</td>
				<td>현재위치</td>
				<td>배송상태</td>		
			</tr>
		</thead>
		<tbody>		
		</tbody>
	</table>		
			
</body>
</html>