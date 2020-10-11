<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<label for="cName">쿠폰 명</label>
				<input type="text" class="form-control" name="cName" id="cName" />
			</div>
			<div class="form-group">
				<label for="cSerial_Number">쿠폰 번호</label>
				<input type="text" class="form-control" name="cSerial_Number" id="cSerial_Number" />
			</div>
			<div class="form-group">
				<label for="cDiscount_Amount">할인 액(률)</label>
				<input type="text" class="form-control" name="cDiscount_Amount" id="cDiscount_Amount" placeholder="숫자만 입력해 주세요"/>
			</div>
			<div class="form-group">
				<input type="hidden" class="form-control" name="cIsUsed" id="cIsUsed" value="0"/>
			</div>
			<div class="form-group">
				<p class="h5 text-danger">※ 등록된 쿠폰의 기본 유효기간은 발급일로부터 180일 까지 입니다.</p>
			</div>
			<button type="submit" class="btn btn-primary">발급</button>
		</form>
	</div>
	<%@ include file="/include/footer.jsp" %>
</body>
</html>