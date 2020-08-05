<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>





<body>
<h1>코로나동선지도</h1>
<div id="map" style="width:800px;height:700px;"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d369b5be45f5c57eb9fb2f86fcb0fc05"></script>
<script>
	$(function() {
		
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};
		var map = new kakao.maps.Map(container, options);
		koronaList();

		
	});
	
	/*사용자 목록  가저오기*/
	function koronaList() {
		$.ajax({
			url: 'korona',
			type: 'get',
			dataType: 'json',
			success:function(response){			
				if(response.result == true){				
					koronaListResult(response);
				}	
			},
			error:function(){
				alert('에러발생');
			}		
		});
	}
	
	/*2.사용자 목록 테이블 만들기  */
	function koronaListResult (response) {
		$('tbody').empty();
		var koronaList = response.koronaList;
		$.each(koronaList,function(i, korona){
			
			var latitude = korona.kLatitude;
			var longtitude = korona.kLongitude;
			var content =korona.kContent;
			
			$('<tr>')
			.append($('<td>').html(korona.kNo) )
			.append($('<td>').html(korona.kRegdate) )			
			.append($('<td>').html(korona.kRegion) )
			.append($('<td>').html(korona.kContent) )
			.append($('<td>').html(korona.kLatitude) )
			.append($('<td>').html(korona.kLongitude) )
			.append($('<td>').html('<button id="btnSelect">조회</button>') )
			.append($('<td>').html('<button id="btnDelete">삭제</button>') )
			.append($('<input type = "hidden" id ="hidden_kNo"/>').val(korona.kNo))
			.append($('<input type = "hidden" id ="hidden_kLatitude"/>').val(korona.kLatitude))
			.append($('<input type = "hidden" id ="hidden_kLongitude"/>').val(korona.kLongitude))
			.append($('<input type = "hidden" id ="hidden_kContent"/>').val(korona.kContent))
			/* .append($('<input type = "hidden" id="hidden_userId"/>')).val(user.userId) */
			.appendTo('tbody')
	/* 		showLocation(latitude, longtitude, content);
			 */
			
		});
	}
	

		
		$('body').on('click','#btnSelect',function(){
			
			var latitude = $(this).closest('tr').find('#hidden_kLatitude').val();			
			var longtitude = $(this).closest('tr').find('#hidden_kLongitude').val();		
			var content = $(this).closest('tr').find('#hidden_kContent').val();		
			showLocation(latitude, longtitude, content);
		});
		
	
	
	
	
	
	function showLocation(latitude, longtitude, content){
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(latitude, longtitude),
			level: 3
		};
		var map = new kakao.maps.Map(container, options);
		
		var markerPosition  = new kakao.maps.LatLng(latitude, longtitude); 

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
		
		var iwContent = '<div style="padding:5px;">'+content+'</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	    iwPosition = new kakao.maps.LatLng(latitude, longtitude), //인포윈도우 표시 위치입니다
	    iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
		
		// 인포윈도우를 생성하고 지도에 표시합니다
		var infowindow = new kakao.maps.InfoWindow({
		    map: map, // 인포윈도우가 표시될 지도
		    position : iwPosition, 
		    content : iwContent,
		    removable : iwRemoveable
		});
	}
	
	
	      
	</script>


<h3>코로나19 </h3>
<input type="button" value="이동" onclick="location.href='index2'">
<div class="wrap">
	<div class="left">
		<table>		
		<thead>
			<tr>
				<td>연번</td>			
				<td>확진일자</td>						
				<td>지역</td>			
				<td>발생경위</td>			
				<td>경도</td>			
				<td>위도</td>			
						
			</tr>	
		</thead>
		<tbody ></tbody>
	</table>
		
	</div>
	<div class="right">
	
	</div>
	
</div>





</body>
</html>