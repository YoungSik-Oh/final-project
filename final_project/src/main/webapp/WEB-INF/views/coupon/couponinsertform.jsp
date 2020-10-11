<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠폰 등록 폼</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap-grid.css" />
</head>
<body>
	<%@ include file="/include/header.jsp" %>
	<div class="container">
		<h1 class="text-center mt-5">쿠폰 등록 폼</h1>
		<form action="upload.do" method="post">
			<div class="form-group">
				<label for="coupon_name">쿠폰 명</label>
				<input type="text" class="form-control" name="coupon_name" id="coupon_name" />
			</div>
			<div class="form-group">
				<label for="coupon_serial_number">쿠폰 번호</label>
				<input type="text" class="form-control" name="coupon_serial_number" id="coupon_serial_number" />
			</div>
			<div class="form-group">
				<label for="discount_amount">할인 액(률)</label>
				<input type="text" class="form-control" name="discount_amount" id="discount_amount" placeholder="숫자만 입력해 주세요"/>
			</div>
			<div class="form-group">
				<input type="hidden" class="form-control" name="coupon_isused" id="coupon_isused" value="0"/>
			</div>
			<div class="form-group">
				<p class="h5 text-danger">※ 등록된 쿠폰의 기본 유효기간은 발급일로부터 180일 까지 입니다.</p>
			</div>
		</form>
		<button type="submit" class="btn btn-primary">발급</button>
	</div>
	<%@ include file="/include/footer.jsp" %>
</body>
</html>