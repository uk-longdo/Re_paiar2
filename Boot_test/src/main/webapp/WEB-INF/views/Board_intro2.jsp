<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회사 소개</title>
<jsp:include page="Boot.jsp"></jsp:include>
</head>
<body>
<jsp:include page="Top.jsp"></jsp:include>
<jsp:include page="Login.jsp"></jsp:include>
<jsp:include page="Header.jsp"></jsp:include>
<section class="py-5">
	<div class="container">
	  <div class="row">
	    <div class="col-sm-2">
	    	<h4 style="text-align: center;"> 회사소개</h4>
	    	<hr class="my-2">
			<div class="list-group" style="text-align: center;">		  
			  <a href="Board_intro" class="list-group-item list-group-item-action">인사말</a>
			  <a href="Board_intro2" class="list-group-item list-group-item-action active">오시는 길</a>
			</div>
	    </div>
	    <div class="col-sm-10">
	    	<h4>오시는 길</h4>
	    	<hr class="my-2">
	    	<table class="table">
				<tbody class="text-center">
				   <tr>
				     <td>오시는길</td>
				     <td>경상남도 창원시 성산구 가음정동 가음로 100 남창원 농협 3층</td>
				   </tr>
				   <tr>
				     <td>전화번호</td>
				     <td >055-000-000, 010-0000-0000</td>
				   </tr>
				   <tr>
				     <td>영업시간</td>
				     <td >10:00~20:00</td>
				   </tr>
				   <tr>
				     <td colspan="2">
				     	<div id="map" style="width:100%;height:400px;"></div>
		           		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	c3b3507f32f41d920727289d208f16af"></script>
				      	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c3b3507f32f41d920727289d208f16af&libraries=clusterer"></script>
				       	<script>
						var container = document.getElementById('map');
						var options = {
							center: new kakao.maps.LatLng(35.204087829777905, 128.7031264268702),
							level: 4
						};
				
						var map = new kakao.maps.Map(container, options);
						var markerPosition  = new kakao.maps.LatLng(35.204087829777905, 128.7031264268702);
						var marker = new kakao.maps.Marker({
						    position: markerPosition
						});
						
						// 마커가 지도 위에 표시되도록 설정합니다
						marker.setMap(map);
						map.setZoomable(false);    //지도 확대축소 막음
						
						</script>
				     </td>
				   </tr>
				</tbody>
	    	</table>
	    	
	    </div>
	  </div>
	</div>
</section>
<!-- 푸터 -->
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>