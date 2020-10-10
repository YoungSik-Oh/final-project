<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!-- Top Contents -->
		<div class="container">
			<div class="row">
				<div class="col">
					<a href="${pageContext.request.contextPath }/"> <img
						class="img-fluid"
						src="${pageContext.request.contextPath }/resources/images/logo_umarket.png"
						alt="Acorn ShoppingMall Logo" />
					</a>
				</div>
				<div class="col">
					<form class="form-inline my-2 my-lg-0">
						<input class="form-control mr-sm-2" type="search"
							placeholder="찾고싶은 상품을 검색하세요" aria-label="Search">
						<button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
					</form>
				</div>
				<div class="col">
					<c:choose>
						<c:when test="${empty id }">
							<a href="${pageContext.request.contextPath }/users/loginForm.do" class="btn btn-outline-primary">로그인/회원가입</a>		
						</c:when>
						<c:otherwise>
							<strong>${id }</strong>님
							<a href="${pageContext.request.contextPath}/mypage/mypage.do" class="text-dark">마이페이지</a>
							<a href="javascript:" class="text-danger" id="logout">로그아웃</a><br/>
							<c:if test="${not empty isAdmin }"><a href="${pageContext.request.contextPath}/admin/main.do">관리자 페이지</a></c:if>
						</c:otherwise>
					</c:choose>	
				</div>
			</div>
		</div>
		<!-- Top Contents End -->
		<!-- Category Navigation -->
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#categorynavigation"
					aria-controls="categorynavigation" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<a class="navbar-brand" href="#">카테고리</a>
				<div class="collapse navbar-collapse" id="categorynavigation">
					<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
						<li class="nav-item active"><a class="nav-link" href="#">남성의류</a>
						</li>
						<li class="nav-item active"><a class="nav-link" href="#">헬스/건강식품</a>
						</li>
						<li class="nav-item active"><a class="nav-link" href="#">전자기기</a>
						</li>
						<li class="nav-item active"><a class="nav-link" href="#">여성의류</a>
						</li>
						<li class="nav-item active"><a class="nav-link" href="#">여성의류</a>
						</li>
					</ul>
				</div>
			</nav>
		</div>
		<!-- Category Navigation End -->