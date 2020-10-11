<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세 </title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<style>
	h1{
		margin-top : 30px;
	}
</style>
</head>
<body>
<%@ include file="/include/header.jsp" %>
<div class="container">
	<h1 class="text-center"><a href="${pageContext.request.contextPath }/notice/list.do" style="color : black;">공지사항</a> </h1>
	<c:if test="${not empty isAdmin }">
		<a href="delete.do?nNo=${dto.nNo}" id="isDelete" class="float-right btn btn-outline-danger" style="margin-left : 10px;">삭제</a>
		<a href="updateform.do?nNo=${dto.nNo }" class="btn btn-outline-warning float-right">수정하기</a>
	</c:if>
		<nav>
		  <div class="nav nav-tabs" id="nav-tab" role="tablist">
		    <a class="nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">공지사항</a>
		  </div>
		</nav>
		<div class="tab-content" id="nav-tabContent">
		  <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
			<div class="card border-dark" >
			  <div class="card-header">
			     글번호 : ${dto.nNo }
			  <span style="float:right; margin-left : 10px;"> 조회수 ${dto.nViewCount }</span>
	     	  <span style="float:right"> 등록일자 ${dto.regdate }</span>
			  </div>
			  <div class="card-body text-info">
			 	제목 : ${dto.nTitle }
			 	<hr/>
			 	<p class="card-text">내용
			 	<hr/>
			 	${dto.nContent }</p>
		  	  </div>
			</div>
		</div>
	</div>
</div>
<%@ include file="/include/footer.jsp" %>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.form.min.js"></script>
	<script>
	$('#isDelete').on('click', function(){
		var isDelete=confirm("해당 게시글을 삭제하시겠습니까?");
		if(!isDelete){
			return false;
		}
	}); 
	</script>
</body>
</html>