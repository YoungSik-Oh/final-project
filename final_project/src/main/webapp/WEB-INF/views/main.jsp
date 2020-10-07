<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
	<title>Acorn ShoppingMall</title>
	<!-- 부트스트랩 CSS import -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap-grid.css" />
</head>
<body>
	<!-- Body Contents -->
	<div class="container">
		<!-- Top Contents -->
		<div class="container">
			<div class="row">
				<div class="col">
					<a href="${pageContext.request.contextPath }/">
						<img class="img-fluid" src="${pageContext.request.contextPath }/resources/images/logo_umarket.png" alt="Acorn ShoppingMall Logo" />
					</a>
				</div>
				<div class="col">
					<form class="form-inline">
						<input class="form-control" type="text" placeholder="검색어를 입력하세요.." aria-label="Search"/>
						<button class="btn btn-outline-primary" type="submit">검색</button>
					</form>
				</div>
				<div class="col">
					<a href="회원가입 페이지 링크">로그인/회원가입</a>
				</div>
				<a href="${pageContext.request.contextPath }/product/product_insert_form.do">등록하기 연습</a>
			</div>
		</div>
		<!-- Top Contents End -->
		<!-- Main Contents -->
		<div class="container">
			<!-- Carousel Images -->
			<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
				  <ol class="carousel-indicators">
				    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
				    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				  </ol>
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img class="d-block w-100" src="${pageContext.request.contextPath }/resources/images/twice.jpg" alt="First slide">
				    </div>
				    <div class="carousel-item">
				      <img class="d-block w-100" src="${pageContext.request.contextPath }/resources/images/momo.jpg" alt="Second slide">
				    </div>
				    <div class="carousel-item">
				      <img class="d-block w-100" src="${pageContext.request.contextPath }/resources/images/dahyun.jpg" alt="Third slide">
				    </div>
				  </div>
				  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="sr-only">Previous</span>
				  </a>
				  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="sr-only">Next</span>
				  </a>
			</div>
			<!-- Carousel Images End-->
			<!-- Order By -->
			<div class="row mt-3">
				<div class="col">
					<p class="h2">Order By</p>
					<a href="#">인기순</a>
					<b> | </b>
					<a href="#">신상품순</a>
					<b> | </b>
					<a href="#">낮은 가격순</a>
					<b> | </b>
					<a href="#">높은 가격순</a>
				</div>
			</div>
			<!-- Order By End -->
			<!-- Item List -->
			<div class="row mt-3">
				<div class="col-3">
					<div class="card">
						<img class="card-img-top" src="${pageContext.request.contextPath }/resources/images/item1.jpg" alt="첫번째 상품">
						<div class="card-body">
				    		<h5 class="card-title">상품명</h5>
				    		<p class="card-text">상품간단설명테스트</p>
				    		<a href="#" class="btn btn-primary">구매하기</a>
						</div>
					</div>
				</div>
				<div class="col-3">
					<div class="card">
						<img class="card-img-top" src="${pageContext.request.contextPath }/resources/images/item2.jpg" alt="두번째 상품">
						<div class="card-body">
				    		<h5 class="card-title">상품명</h5>
				    		<p class="card-text">상품간단설명</p>
				    		<a href="#" class="btn btn-primary">구매하기</a>
						</div>
					</div>
				</div>
				<div class="col-3">
					<div class="card">
						<img class="card-img-top" src="${pageContext.request.contextPath }/resources/images/item3.jpg" alt="세번째 상품">
						<div class="card-body">
				    		<h5 class="card-title">상품명</h5>
				    		<p class="card-text">상품간단설명</p>
				    		<a href="#" class="btn btn-primary">구매하기</a>
						</div>
					</div>
				</div>
				<div class="col-3">
					<div class="card">
						<img class="card-img-top" src="${pageContext.request.contextPath }/resources/images/item4.jpg" alt="네번째 상품">
						<div class="card-body">
				    		<h5 class="card-title">상품명</h5>
				    		<p class="card-text">상품간단설명</p>
				    		<a href="#" class="btn btn-primary">구매하기</a>
						</div>
					</div>
				</div>
			</div>
			<!-- Item List End -->
			<!-- Category -->
			<div class="row mt-3">
				<div class="col">
					<p class="h2">카테고리 별 인기상품</p>
					<a href="#">남성의류</a>
					<b> | </b>
					<a href="#">헬스/건강식품</a>
					<b> | </b>
					<a href="#">전자기기</a>
					<b> | </b>
					<a href="#">여성의류</a>
					<b> | </b>
					<a href="#">가구</a>
				</div>
			</div>
			<!-- Order By End -->
			<!-- Item List -->
			<div class="row mt-3">
				<div class="col">
					<div class="card">
						<img class="card-img-top" src="${pageContext.request.contextPath }/resources/images/category1.jpg" alt="첫번째 상품">
						<div class="card-body">
				    		<h5 class="card-title">상품명</h5>
				    		<p class="card-text">상품간단설명</p>
				    		<a href="#" class="btn btn-primary">구매하기</a>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card">
						<img class="card-img-top" src="${pageContext.request.contextPath }/resources/images/category2.jpg" alt="두번째 상품">
						<div class="card-body">
				    		<h5 class="card-title">상품명</h5>
				    		<p class="card-text">상품간단설명</p>
				    		<a href="#" class="btn btn-primary">구매하기</a>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card">
						<img class="card-img-top" src="${pageContext.request.contextPath }/resources/images/category3.jpg" alt="세번째 상품">
						<div class="card-body">
				    		<h5 class="card-title">상품명</h5>
				    		<p class="card-text">상품간단설명</p>
				    		<a href="#" class="btn btn-primary">구매하기</a>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card">
						<img class="card-img-top" src="${pageContext.request.contextPath }/resources/images/category4.jpg" alt="네번째 상품">
						<div class="card-body">
				    		<h5 class="card-title">상품명</h5>
				    		<p class="card-text">상품간단설명</p>
				    		<a href="#" class="btn btn-primary">구매하기</a>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card">
						<img class="card-img-top" src="${pageContext.request.contextPath }/resources/images/category5.jpg" alt="네번째 상품">
						<div class="card-body">
				    		<h5 class="card-title">상품명</h5>
				    		<p class="card-text">상품간단설명</p>
				    		<a href="#" class="btn btn-primary">구매하기</a>
						</div>
					</div>
				</div>
			</div>
			<!-- Category End -->
			<!-- Footer Contents -->
			<div class="container text-center">
				<div class="row">
					<div class="col mt-3">
						<a href="#">공지사항</a>
						<b> | </b>
						<a href="#">운영정책</a>
						<b> | </b>
						<a href="#">이용약관</a>
						<b> | </b>
						<a href="#">개인정보처리방침</a>
					</div>
				</div>
				<div class="row">
					<div class="col mt-3">
						<p>COPYRIGHT © 2020 ACORN SHOPPINGMALL KOREA. All Rights Reserved.</p>
					</div>
				</div>
			</div>
			<!-- Footer Contents End -->
		</div>
		<!-- Main Contents End -->
	</div>
	<!-- Body Contents End -->
	<!-- Script -->
	<script src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
	<!-- Script End -->
</body>
</html>
