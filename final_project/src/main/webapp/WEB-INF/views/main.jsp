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
			</div>
		</div>
		<!-- Top Contents End -->
		<!-- Main Contents -->
		<div class="container">
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
