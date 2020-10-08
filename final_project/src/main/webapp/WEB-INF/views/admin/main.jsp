<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
</head>
<body>
<div class="container">
	<h1 class="text-center">header 부분 </h1>
	<h1 class="text-center">관리자 페이지 메인</h1>
	<div class="card-group">
	  <div class="card" >
	    <div  class="card-body text-center">
	      <h3 class="card-title"><a href="${pageContext.request.contextPath }/admin/userAdmin.do">USERS</a></h3>
	      <p class="card-text">회원 관리</p>
	      <p class="card-text"><small class="text-muted">회원의 정보를 관리합니다.</small></p>
	    </div>
	  </div>
	  <div class="card">
	    <div class="card-body text-center">
	      <h3 class="card-title"><a href="${pageContext.request.contextPath }/notice/list.do">NOTICE</a></h3>
	      <p class="card-text">공지사항</p>
	      <p class="card-text"><small class="text-muted">공지사항을 입력하여 회원들에게 정보를 전달합니다.</small></p>
	    </div>
	  </div>
	  <div class="card">
	    <div class="card-body text-center">
	      <h3 class="card-title">PRODUCT</h3>
	      <p class="card-text">상품 글 관리</p>
	      <p class="card-text"><small class="text-muted">회원들이 올린 상품을 관리합니다.</small></p>
	    </div>
	  </div>
	</div>
</div>
</body>
</html>