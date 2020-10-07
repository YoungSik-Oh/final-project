<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세 </title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
</head>
<body>
<div class="container">

	<h1 class="text-center">header 부분 </h1>
	<h1 class="text-center">공지사항 상세 페이지 </h1>
	<a href="">수정하기</a>
	<div class="card border-dark" >
	  <div class="card-header">
	  	제목 : ${dto.nTitle }
	  	<span style="float:right"> 등록일자 ${dto.regdate }</span>
	  
	  </div>
	  <div class="card-body text-dark">
	  	<span style="float:right"> 조회수 ${dto.nViewCount }</span></br>
	    <p class="card-text">내용 : ${dto.nContent }</p>
  	  </div>

</div>
</div>
</body>
</html>