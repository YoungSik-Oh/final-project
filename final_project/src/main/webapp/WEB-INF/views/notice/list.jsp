<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 목록</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<style>
	ul{
		padding:0;
	}
	ul li {
		list-style:none;
	}
	.isShow{
		padding-right:50px;
		float:right;
	}
	.notice-detail{
		display:none; 
	}
	
	#adminHead{
		color : green;
	}
	
	#userHead{
		margin-top : 20px;
		margin-bottom : 20px;
	}
	
	.container{
		margin-top : 20px;
	}
	
	.notice{
		padding : 20px;
	}
</style>
</head>
<body>
<%@ include file="/include/header.jsp" %>
<div class="container">
	<c:if test="${not empty isAdmin }">
		<a href="${pageContext.request.contextPath }/admin/main.do"><h1 class="text-center" id="adminHead">관리자 페이지</h1></a>
	</c:if>
	<c:if test="${not empty isAdmin }">
			<a href="insertform.do" class="float-right btn btn-outline-info">공지사항 작성 </a>
	</c:if>
		<nav>
		  <div class="nav nav-tabs" id="nav-tab" role="tablist">
		    <a class="nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">공지사항</a>
		  </div>
		</nav>
		<div class="tab-content" id="nav-tabContent">
		  <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
		  	<svg width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-bell" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
			  <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2z"/>
			  <path fill-rule="evenodd" d="M8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z"/>
			</svg>
		    <h1 style="display : inline-block;" id="userHead">공지사항</h1>
			<br/>
			<ul class="card">
				<c:forEach var="tmp" items="${list }">
					<li id="comment${tmp.nNo }" class="notice"> 
						<div>
							<p style="margin-bottom : 10px;">조회수 : ${tmp.nViewCount }</p>
							<h3 class="card-title"><a href="detail.do?nNo=${tmp.nNo }" style="color : black;">${tmp.nTitle }</a></h3> 
							<span class="float-right">작성날짜 : ${tmp.regdate } </span>
						</div>
					</li>
					<hr/>
				</c:forEach>
			</ul>
		 </div>
	</div>
	<div class="page-display">
		<ul class="pagination pagination-sm">
			<c:if test="${startPageNum ne 1 }">
				<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/notice/list.do?pageNum=${startPageNum-1 }">Prev</a></li>
			</c:if>
			<c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
				<c:choose>
					<c:when test="${i eq pageNum }">
						<li class="page-item active"><a class="page-link" href="${pageContext.request.contextPath }/notice/list.do?pageNum=${i }">${i }</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/notice/list.do?pageNum=${i }">${i }</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${endPageNum lt totalPageCount }">
				<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/notice/list.do?pageNum=${endPageNum+1 }">Next</a></li>
			</c:if>
		</ul>	
	</div>
	<%@ include file="/include/footer.jsp" %>
</div>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.form.min.js"></script>
<script>
	$(document).on("click", ".isShow", function(){
		var num="#comment"+$(this).attr("data-num");
		$(num)
		.find(".notice-detail")
		.slideToggle();
	});
</script>
</body>
</html>