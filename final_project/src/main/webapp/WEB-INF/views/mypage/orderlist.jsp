<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>order list page</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
</head>
<body>
	<div class="container">
		<div class="text-center">
			fixed-top
			<h1>header 부분</h1>
		</div>

		<div class="card">
			<div class="card-header">
				<ul class="nav nav-tabs card-header-tabs">
					<li class="nav-item"><a class="nav-link active" href="#">구매목록</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">판매 목록</a></li>
				</ul>
			</div>
			<div>
				<span class="float:left">주문일 : regdate </span>
					<a href="orderdetail.do" style="float: right">주문 상세보기</a>
			</div>
			<hr />

			c:forEach / 반복문써서 상품 가져오기

			<div class="media position-relative">
				<img src="..." class="mr-3" alt="...">상품 이미지
				<div class="media-body">
					<h5 class="mt-0">상품명</h5>
					<p>금액 / 갯수</p>
				</div>
			</div>
		</div>
		<h1 class="text-center">footer 부분</h1>

	</div>
</body>
</html>