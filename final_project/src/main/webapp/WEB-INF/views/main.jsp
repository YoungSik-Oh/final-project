<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
	<title>Acorn ShoppingMall</title>
	<!-- 부트스트랩 CSS import -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
</head>
<body>
	<!-- Body Content -->
	<div class="container">
		<!-- Top Content -->
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
					<a href="회원가입 페이지 링크">회원가입/로그인</a>
				</div>
			</div>
		</div>
		<!-- Top Content End -->
	</div>
	<!-- Body Content End -->
</body>
</html>
