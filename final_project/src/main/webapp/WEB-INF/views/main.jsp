<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>Acorn ShoppingMall</title>
	<!-- 부트스트랩 CSS import -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap-grid.css" />
	<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
	<style>
		#notice{
			margin-top : 20px;
			margin-bottom : 20px;
		}
	</style>
</head>

<%
	//네이버 로그인 시 로그인 컨트롤러를 탈 수 없으므로 파라미터로 id를 넘겨줘서 session에 담아준다.
	String id = request.getParameter("id");
	if(id != null){
		session.setAttribute("id", id);
	}
%>
<script>
	//관리자 페이지에서 정지먹은 회원은 isPause 라는 session 값을 가지고 있다.
	//만약 로그인 시 해당 아이디가 isPause 이라는 값을 가지고 있으면 경고창을 띄우고 강제 로그아웃 시킨다.
	var isPause = "${isPause}";
	
	if(isPause == "yes"){
		alert("해당 아이디는 정지상태입니다. 해당 이메일로 문의주세요  email : qorxjaos45@naver.com");
		
		$.ajax({
			url : '${pageContext.request.contextPath }/isPuaseUser.do',
			success : function(data){
				location.reload();
			}
		});
	}
</script>
<body>
	<!-- Body Contents -->
	<div class="container">
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
				<div cl]ass="col">
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
							<a href="mypage/mypage.do" class="text-dark">마이페이지</a>
							<c:if test="${not empty isAdmin }">
								<a href="${pageContext.request.contextPath }/admin/main.do">관리자</a>
							</c:if>
							<a href="javascript:" class="text-danger" id="logout">로그아웃</a>
							<a href="product/productInsertform.do ">상품 등록</a>
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
					</ul>
				</div>
			</nav>
		</div>
		<!-- Category Navigation End -->
		<!-- Main Contents -->
		<div class="container">
			<!-- Carousel Images -->
			<div id="carouselExampleIndicators" class="carousel slide"
				data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0"
						class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<a href="${pageContext.request.contextPath}/notice/list.do"> <img
							class="d-block w-100"
							src="${pageContext.request.contextPath }/resources/images/twice.jpg"
							alt="First slide">
						</a>
					</div>
					<div class="carousel-item">
						<img class="d-block w-100"
							src="${pageContext.request.contextPath }/resources/images/momo.jpg"
							alt="Second slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100"
							src="${pageContext.request.contextPath }/resources/images/dahyun.jpg"
							alt="Third slide">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
				
			<div class="card" id="notice">
			  <div class="card-header">
			  <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-bell" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
			    <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2z"/>
			    <path fill-rule="evenodd" d="M8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z"/>
			  </svg>
			   최신 공지사항
			  </div>
			  <ul class="list-group list-group-flush">
			  	<c:forEach var="tmp" items="${list }">
			  		<li class="list-group-item">
			    		<a href="${pageContext.request.contextPath }/notice/detail.do?nNo=${tmp.nNo }" style="display : inline-block;">${tmp.nTitle }</a>
			    		<p style="display : inline-block; float : right;">${tmp.regdate }</p>
			    	</li>
			  	</c:forEach>
			  </ul>
			</div>
		
			<!-- Carousel Images End-->
			<!-- Order By -->
			<div class="row mt-3">
				<div class="col">
					<p class="h2">Order By</p>
					<a href="#">인기순</a> <b> | </b> <a href="#">신상품순</a> <b> | </b> <a
						href="#">낮은 가격순</a> <b> | </b> <a href="#">높은 가격순</a>
				</div>
			</div>
			<!-- Order By End -->
			<!-- Item List -->
			<div class="row mt-3">
				<c:forEach var="tmp" items="${plist}">
					<div class="col-3">
					<div class="card">
						<img class="card-img-top"
							src="${pageContext.request.contextPath }/upload/${tmp.saveFileName }"
							alt="첫번째 상품">
							<div class="card-body">			
								<input type="hidden" name="pTitle" value="${tmp.pTitle}"/>
								<input type="hidden" name="pNo" value="${tmp.pNo}"/>
								<input type="hidden" name="pPrice" value="${tmp.pPrice} "/>
							   	<h5 class="card-title" >${tmp.pTitle}</h5>
						  		<p class="card-text">${tmp.pContents}</p>
						 		<p class="card-text">${tmp.pPrice }</p>
			  					<a class="btn btn-primary" href="#">상품 보기</a>		
							</div>
					</div>
				</div>	
				</c:forEach>	
			</div>
			<!-- Item List End -->
			<!-- Category -->
			<div class="row mt-3">
				<div class="col">
					<p class="h2">카테고리 별 인기상품</p>
					<a href="#">남성의류</a> <b> | </b> <a href="#">헬스/건강식품</a> <b> | </b>
					<a href="#">전자기기</a> <b> | </b> <a href="#">여성의류</a> <b> | </b> <a
						href="#">가구</a>
				</div>
			</div>
			<!-- Order By End -->
			<!-- Item List -->
			<div class="row mt-3">
				<div class="col">
					<div class="card">
						<img class="card-img-top"
							src="${pageContext.request.contextPath }/resources/images/category1.jpg"
							alt="첫번째 상품">
						<div class="card-body">
							<h5 class="card-title">상품명</h5>
							<p class="card-text">상품간단설명</p>
							<a href="#" class="btn btn-primary">구매하기</a>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card">
						<img class="card-img-top"
							src="${pageContext.request.contextPath }/resources/images/category2.jpg"
							alt="두번째 상품">
						<div class="card-body">
							<h5 class="card-title">상품명</h5>
							<p class="card-text">상품간단설명</p>
							<a href="#" class="btn btn-primary">구매하기</a>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card">
						<img class="card-img-top"
							src="${pageContext.request.contextPath }/resources/images/category3.jpg"
							alt="세번째 상품">
						<div class="card-body">
							<h5 class="card-title">상품명</h5>
							<p class="card-text">상품간단설명</p>
							<a href="#" class="btn btn-primary">구매하기</a>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card">
						<img class="card-img-top"
							src="${pageContext.request.contextPath }/resources/images/category4.jpg"
							alt="네번째 상품">
						<div class="card-body">
							<h5 class="card-title">상품명</h5>
							<p class="card-text">상품간단설명</p>
							<a href="#" class="btn btn-primary">구매하기</a>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card">
						<img class="card-img-top"
							src="${pageContext.request.contextPath }/resources/images/category5.jpg"
							alt="네번째 상품">
						<div class="card-body">
							<h5 class="card-title">상품명</h5>
							<p class="card-text">상품간단설명</p>
							<a href="#" class="btn btn-primary">구매하기</a>
						</div>
					</div>
				</div>
			</div>
			<!-- Category End -->
			<!-- Footer Contents -->
			<div class="container text-center">
				<div class="row">
					<div class="col mt-3">
						<a href="#">공지사항</a> <b> | </b> <a href="${pageContext.request.contextPath }/operation/operation_policy.do">운영정책</a> <b> | </b> <a
							target="_blank" href="${pageContext.request.contextPath }/operation/access_terms.do">이용약관</a> <b> | </b> <a target="_blank" href="${pageContext.request.contextPath }/operation/privacy.do">개인정보처리방침</a>
					</div>
				</div>
				<div class="row">
					<div class="col mt-3">
						<p>COPYRIGHT © 2020 ACORN SHOPPINGMALL KOREA. All Rights
							Reserved.</p>
					</div>
				</div>
			</div>
			<!-- Footer Contents End -->
		</div>
		<!-- Main Contents End -->
	</div>
	<!-- Body Contents End -->
	<!-- Script -->
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
	<!-- Script End -->
	<script>
	$('#logout').on('click',function(){
		var isLogout = confirm("로그아웃 하시겠습니까?");
		if(confirm){
			sessionStorage.clear();
			location.href="${pageContext.request.contextPath }/users/logout.do";
		}
	});
</script>
</body>
</html>