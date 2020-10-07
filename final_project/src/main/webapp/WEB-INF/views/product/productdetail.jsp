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
<div class="container">
<div class="text-center"> fixed-top
	<h1 >header 부분</h1>
</div>

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
		  <li class="list-group-item">상품 이름</li>
		  <li class="list-group-item">상품 가격</li>
		  <li class="list-group-item">등록 날짜</li>
		  <li class="list-group-item">배송비/거래지역</li>
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
	 <!-- div로 각자 해야하는건지 .... 잘 모르겠구만 ... ㅠ -->
	  <li class="list-group-item">상품 정보</li>
	  <li class="list-group-item">상품 후기</li>
	  <li class="list-group-item">상품 문의</li>
	  <li class="list-group-item">판매자의 다른 상품</li>
	</ul>


<h1 class="text-center">footer 부분 </h1>

</div>
</body>
</html>