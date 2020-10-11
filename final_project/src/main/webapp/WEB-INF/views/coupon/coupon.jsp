<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>할인쿠폰</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
</head>
<body>
	<!-- header -->
	<%@ include file="/include/header.jsp" %>
	<!-- header end -->
	<!-- main contents -->
	<div class="container">
		<!-- top contents -->
		<div class="row">
			<h3>할인쿠폰</h3>
			<p> 할인쿠폰은 구매조건에 따라 상품 결제 시 적용할 수 있습니다.</p>
			<!-- 팝업으로 띄우기 -->
			<button class="btn btn-outline-primary">쿠폰 이용 안내</button>
		</div>
		<div class="row row-cols-1 row-cols-md-2 text-center">
			<div class="col mb-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">사용가능 할인쿠폰</h5>
						<!-- 남은갯수 확인 가능하게 button 팝업 -->
						<p>? 개</p>
					</div>
				</div>
			</div>
			<div class="col mb-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">마감임박 할인쿠폰</h5>
						<h5 style="color:gray"> > 24시간 이내</h5>
						<!-- 남은갯수 확인 가능하게 button 팝업 -->
						<p>? 개</p>
					</div>
				</div>
			</div>
		</div>
		<!-- 할인쿠폰 교환권 등록 폼 -->
		<div class="row">
			<div class="col">
				<form class="form-inline">
					<div class="form-group mb-2">
						<label for="discount-coupon">할인쿠폰 교환권 등록 </label>
						<input type="text" class="form-control"  id="discount-coupon" placeholder="쿠폰번호 입력..."/>
					</div>
					<button type="submit" class="btn btn-primary mb-2">입력하기</button>
				</form>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<h5>사용가능</h5>
			</div>
			<div class="col">
				<h5>사용완료/기간만료</h5>
			</div>
		</div>
		<!-- 할인쿠폰 교환권 등록 폼 -->
		<!-- top contents end -->
		<!-- bottom contents -->
		<div class="row t3">
			<div class="col">
				<table class="table">
					<thead class="thead-light">
						<tr>
							<th scope="col">쿠폰명</th>
							<th scope="col">할인액(율)</th>
							<th scope="col">유효기간</th>
							<th scope="col">쿠폰종류</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">가입축하 전품목 50% 할인쿠폰</th>
							<td>50%</td>
							<td>2020-10-31</td>
							<td>할인</td>							
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!-- bottom contents end-->
	</div>
	<!-- main contents end -->
	<!-- footer -->
	<%@ include file="/include/footer.jsp" %>
	<!-- footer end -->
</body>
</html>