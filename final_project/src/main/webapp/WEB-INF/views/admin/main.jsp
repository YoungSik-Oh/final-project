<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<style>
	h1{
		margin-top : 15px;
		margin-bottom : 15px;
		color : green;
	}
</style>
</head>
<body>
<%@ include file="/include/header.jsp" %>
<div class="container">
	<h1 class="text-center">관리자 페이지</h1>
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
	</div>
	<%@ include file="/include/footer.jsp" %>
</div>
</body>
</html>