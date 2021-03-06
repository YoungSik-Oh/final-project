<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypage</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
</head>
<body>
	<%@ include file="/include/header.jsp" %>
	<div class="container">
		<div class="text-center">
			<h1 style="margin-bottom : 30px;">MY PAGE</h1>
		</div>
		<div class="row row-cols-1 row-cols-md-2 text-center">
			<div class="col mb-4">
				<div class="card">
					<div class="card-body">
						<a href="${pageContext.request.contextPath }/users/private/myPage.do"><h5 class="card-title">개인정보 관리</h5></a>
						<p class="card-text">내 개인 정보를 관리합니다.</p>
					</div>
				</div>
			</div>
			<div class="col mb-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">
							<a href="orderlist.do">내 주문내역 조회(구매/판매)</a>
						</h5>
						<p class="card-text">주문내역을 조회합니다.</p>
					</div>
				</div>
			</div>
			<div class="col mb-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">
							<a
								href="${pageContext.request.contextPath}//mypage/myproductList.do">내가 올린 상품</a>
						</h5>
						<p class="card-text">내가 올린 상품을 확인 할 수 있습니다.</p>
					</div>
				</div>
			</div>
			<div class="col mb-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">
							<a href="cart.do">장바구니</a>
						</h5>
						<p class="card-text">장바구니에 담긴 내용을 확인 할 수 있습니다.</p>
					</div>
				</div>
			</div>
			<div class="col mb-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">
							<a href="${pageContext.request.contextPath }/coupon/coupon.do">할인쿠폰</a>
						</h5>
						<p class="card-text">할인쿠폰 등록 및 사용 내역을 조회할 수 있습니다.</p>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="/include/footer.jsp" %>
	</div>
</body>
</html>