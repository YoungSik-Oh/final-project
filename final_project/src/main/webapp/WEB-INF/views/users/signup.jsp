<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<style>
	.container{
		border : 1px solid black;
		width : 500px;
	}
	
	.card {
		padding : 20px;
	}
	
	a{
		margin-top : 10px;
		margin-bottom : 10px;
	}
	
	h1{
		text-align : center;
		color : green;
		margin-bottom : 20px;
	}
</style>
</head>
<body>
	<div class="container">
		<div class="card">
		    <div class="card-body">
		    	<h1>에이콘 장터</h1>
		    	<div class="alert alert-primary" role="alert">
				  <strong>${id }</strong>님 회원가입을 진심으로 축하드립니다.
				</div>
		    </div>
			<a href="${pageContext.request.contextPath }/users/loginForm.do" class="btn btn-outline-primary">로그인하러 가기</a>
		    <a href="${pageContext.request.contextPath }/main.do" class="btn btn-outline-info">메인페이지</a>
		</div>
		
	</div>
</body>
</html>