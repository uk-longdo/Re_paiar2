<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html> 
<html lang="ko"> 
<head> 
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>창원 옷수선</title>
<jsp:include page="Boot.jsp"></jsp:include>
</head>

<body>
<!-- Navigation-->
<jsp:include page="Top.jsp"></jsp:include>
<jsp:include page="Login.jsp"></jsp:include>
<jsp:include page="Header.jsp"></jsp:include>

<!-- Page Content -->
<section class="py-5">
<div class="container">
  <div class="row">
    <!-- Team Member 1 -->
    <div class="col-xl-3 col-md-6 mb-4 ">
      <div class="card border-0 shadow" >
        <a href="Board_intro">
        	<img src="./resources/img/bgHome2.jpg/" class="card-img-top" style="height:350px">
        </a>
        <div class="card-body text-center">
          <h5 class="card-title mb-0">인사말</h5>
          <div class="card-text text-black-50">Web Developer</div>
        </div>
      </div>
    </div>
    <!-- Team Member 2 -->
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-0 shadow">
        <img src="./resources/img/bgHome3.jpg" class="card-img-top" style="height:350px">
        <div class="card-body text-center">
          <h5 class="card-title mb-0">오시는 길</h5>
          <div class="card-text text-black-50">Web Developer</div>
        </div>
      </div>
    </div>
    <!-- Team Member 3 -->
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-0 shadow">
        <img src="./resources/img/bgHome6.jpg/" class="card-img-top" style="height:350px">
        <div class="card-body text-center">
          <h5 class="card-title mb-0">Team Member</h5>
          <div class="card-text text-black-50">Web Developer</div>
        </div>
      </div>
    </div>
    <!-- Team Member 4 -->
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-0 shadow">
        <img src="./resources/img/bgHome7.jpg/" class="card-img-top" style="height:350px">
        <div class="card-body text-center">
          <h5 class="card-title mb-0">Team Member</h5>
          <div class="card-text text-black-50">Web Developer</div>
        </div>
      </div>
    </div>
  </div>
  <!-- /.row -->

</div>
</section>
    <section class="page-section " id="map2">
        <div class="container text-center">
            <h2 class="mb-4" >찾아 오시는길</h2>
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
        </div>
    </section>
        <!-- Footer-->
       	<jsp:include page="Footer.jsp"></jsp:include> 
        <!-- Bootstrap core JS-->
        
        
    </body>
</html>


