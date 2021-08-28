<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>공지사항</title>
<jsp:include page="Boot.jsp"></jsp:include>
</head>
<body>
<jsp:include page="Top.jsp"></jsp:include>
<jsp:include page="Login.jsp"></jsp:include>
<jsp:include page="Header.jsp"></jsp:include>

<section class="py-5">
	<div class="container">
	  <div class="row">
	    <div class="col-md-2">
	    	<h4 style="text-align: center;">커뮤니티11</h4>
	    	<hr class="my-2">
			<div class="list-group" style="text-align: center;">		  
			  <a href="Board_notice" class="list-group-item list-group-item-action">공지사항</a>
			  <a href="Board_call" class="list-group-item list-group-item-action">고객센터</a>
			  <a href="Board_free" class="list-group-item list-group-item-action active">자유 게시판</a>
			</div>
	    </div>
	    <div class="col-md-10">
	    	<div class="container">
	    		<div class="row">
	    		<div class="col-md-10 justify-content-md-start">
		    	<h4>자유 게시판</h4>
		    	</div>
		    	<div class="col-md-2 justify-content-md-end">
		    	<button type="button" class="btn btn-outline-secondary btn-sm ">글쓰기</button>
		    	</div>
		    	</div>
	    	</div>
	    	<hr class="my-2">
	    	
	    	<div class="container">
		    	<div class="table">
				<table class="table">
				  <thead>
				    
				<tr style="text-align: center;">
					<th class ="d-none d-lg-table-cell" width="8%"><div>번호</div></th>
					<th width="64%"><div>제목</div></th>
					<th class ="d-none d-lg-table-cell" width="13%"><div>작성일</div></th>
					<th class ="d-none d-sm-table-cell" width="7%"><div>작성자</div></th>
					<th class ="d-none d-sm-table-cell" width="8%"><div>조회</div></th>
				</tr>
				    
				  </thead>
				  <tbody>
				    <tr>
					    <td class ="d-none d-lg-table-cell" width="8%" style="text-align: center;"><div>1</div></td>
						<td width="64%"><div>고객님의 개인적 취향과 디자인을 고려하여 만족하시는 제품을 만나보실 수 있습니다.</div></td>
						<td class ="d-none d-lg-table-cell" width="13%" style="text-align: center;"><div>2021.08.04</div></td>
						<td class ="d-none d-sm-table-cell" width="7%" style="text-align: center;"><div>관리자</div></td>
						<td class ="d-none d-sm-table-cell" width="8%" style="text-align: center;"><div>1</div></td>
				    </tr>
				     
				  </tbody>
				  
				</table>
				<div class="container" style="align-items: center;">
				<jsp:include page="Page_bar.jsp"></jsp:include>
				</div>
				</div>
			</div>
	    </div>
	  </div>
	</div>
	
</section>

	<jsp:include page="Footer.jsp"></jsp:include>

</body>
</html>