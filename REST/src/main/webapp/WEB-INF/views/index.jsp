<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>



<script type="text/javascript">
$(document).ready(function(){
	 $('#weatherBtn').click(function(){
	var City = $( '#SearchCity option:selected' ).val();
	var apiURI = "http://api.openweathermap.org/data/2.5/weather?q="+City+"&appid=f3635800e8b413f86942d920dd11a061";
		$.ajax({
			url: apiURI,
			dataType:"json",
			type:"GET",
			async:"false",
			success:function(resp){
	var imgURL = "http://openweathermap.org/img/w/" + resp.weather[0].icon + ".png";
				   console.log(resp);				   
	               console.log("현재온도 : "+ (resp.main.temp- 273.15) );
	               console.log("현재습도 : "+ resp.main.humidity);
	               console.log("날씨 : "+ resp.weather[0].main );
	               console.log("상세날씨설명 : "+ resp.weather[0].description );
	               console.log("날씨 이미지 : "+ resp.weather[0].icon );
	               console.log("바람   : "+ resp.wind.speed );
	               console.log("나라   : "+ resp.sys.country );
	               console.log("도시이름  : "+ resp.name );
	               console.log("구름  : "+ (resp.clouds.all) +"%" );
	               
	               $('#mainTemp').text(resp.main.temp- 273.15);
	               $('#mainHumidity').text(resp.main.humidity);
	               
	               $('#weatherMain').text(resp.weather[0].main);
	               $('#weatherDescription').text(resp.weather[0].description);
	               
	               //$('#weatherIcon').text(resp.weather[0].icon);
	               $('#weatherMain').attr("src",imgURL);
	               $('#weatherDescription').attr("src",imgURL);
	               $('#weatherIcon').attr("src",imgURL);
	               
	               $('#WindSpeed').text(resp.wind.speed );
	               $('#sysCountry').text(resp.sys.country);
	               $('#respName').text(resp.name);
	               $('#CloudAll').text((resp.clouds.all) +"%");
	               
			},error : function() {
	    		alert('ajax통신오류');
	    
	    	}
		
		});
	 });//btn
});//ready

</script>
</head>
<body>
<select id="SearchCity">
	<option value="Seoul">서울</option>
	<option value="Incheon">인천</option>
</select>


<input type="button" value="검색하기" id="weatherBtn"><br/><br/>
현재온도<span id="mainTemp"></span><br/><br/>
현재습도<span id="mainHumidity"></span><br/><br/>

날씨<span id="weatherMain"></span><br/><br/>
상세설명<span id="weatherDescription"></span><br/><br/>
날씨이미지<img src="" id="weatherIcon"></span><br/><br/>
바람<span id="WindSpeed"></span><br/><br/>
나라<span id="sysCountry"></span><br/><br/>
도시이름<span id="respName"></span><br/><br/>
구름<span id="CloudAll"></span><br/><br/>

<form action="NaverSearch">
<input type="text" name="query">
<input type="submit" value="검색">
</form>

<input type="button" onclick="location.href='index2'">






</body>
</html>