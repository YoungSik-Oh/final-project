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
	p{
		background-color:gray;
	}
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
</style>
</head>
<body>
<div class="container">
	<h1 class="text-center">header 부분 </h1>
	<h3 class="text-center">공지사항</h3>
	<div class="float-right"> 
	/c:if=${dto.isAdmin==1 }/
		<a href="insertform.do">새글 작성 (관리자만 글 작성 할 수 있음) </a>
	</div>
	<br/>
	<hr/>
	<ul class="card">
		<%-- <c:forEach var="tmp" items="${list }"> --%>
			<li id="comment${tmp.nNo }" > 
				<div>
					<h3 class="card-title"><a href="detail.do?num=${tmp.nNo }">제목 : ${tmp.nTitle }</a></h3>  조회수 : ${tmp.nViewCount }
					<span>작성날짜 : ${tmp.regdate } </span>
					<a data-num="${tmp.nNo }" href="javascript:" class="isShow">더보기</a>
					<p class="notice-detail">/asdfasdfas6732894573298/${tmp.nContent }</p>
				</div>
			</li>
		
		<hr/>
		<%-- </c:forEach> --%>
	</ul>
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