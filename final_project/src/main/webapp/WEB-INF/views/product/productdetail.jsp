<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
</head>
<body>
<%@ include file="/include/header.jsp" %>
<div class="container">
<hr/>
	<div class="row no-gutters bg-light position-relative">
	  <div class="col-md-6 mb-md-0 p-md-4">
	  	<div id="carouselExampleInterval" class="carousel slide" data-ride="carousel">
		  <div class="carousel-inner">
		    <div class="carousel-item active" data-interval="10000">
		      <img src="..." class="d-block w-100" alt="...">
		    </div>
		    <div class="carousel-item" data-interval="2000">
		      <img src="..." class="d-block w-100" alt="...">
		    </div>
		    <div class="carousel-item">
		      <img src="..." class="d-block w-100" alt="...">
		    </div>
		    	상품 이미지 ... on
		   </div>
		  <a class="carousel-control-prev" href="#carouselExampleInterval" role="button" data-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="carousel-control-next" href="#carouselExampleInterval" role="button" data-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>
	  </div>
	  
	  <div class="col-md-6 position-static p-4 pl-md-0">
	    <ul class="list-group list-group-flush">
		  <li class="list-group-item">${productdetail.pTitle }</li>
		  <li class="list-group-item">${productdetail.pPrice }</li>
		  <li class="list-group-item">${productdetail.pRegdate }</li>
		  <li class="list-group-item">2,500 원</li>
		  <li class="list-group-item">장바구니</li>
		</ul>
	  </div>	  
	  
	</div>
	<hr/>
	
	<div class="text-center border border-secondary rounded">
	    <div class="row">
	      <div class="col-sm">
			상품정보
	      </div>
	      <div class="col-sm">
			상품후기
	      </div>
	      <div class="col-sm">
			상품 문의
	      </div>
	    </div>
    </div>
	<hr/>
	
	<ul class="list-group">
	  <li class="list-group-item"></li>
	  <li class="list-group-item">${productdetail.pContents }</li>
	  <li class="list-group-item">상품 문의</li>
	  <li class="list-group-item">판매자의 다른 상품</li>
	</ul>

<%@ include file="/include/footer.jsp" %>
</div>
</body>
</html>