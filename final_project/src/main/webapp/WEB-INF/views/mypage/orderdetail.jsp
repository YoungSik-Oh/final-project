<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>주문상세</title>
	<!-- 부트스트랩 CSS import -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap-grid.css" />
</head>
<body>
	<div class="container">
		<div class="container">
			<div class="row">
				<div class="col">
					<h2>주문상세</h2>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<b>주문일자 : 20201007</b>
					<b>주문번호 : 20abcdef</b>
					<button class="btn btn-danger">주문내역삭제</button>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col">
						<img class="img-thumbnail" src="${pageContext.request.contextPath }/resources/images/product_thumbnail1.jpeg" alt="상품이미지 썸네일" />
					</div>
					<div class="col">
						<p>상품명 : </p>
						<span>금액 : </span><br /><span>갯수 : </span>
					</div>
					<div class="col">
						<p>배송상태 : </p>
						<p>도착 예정 일자 /p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>