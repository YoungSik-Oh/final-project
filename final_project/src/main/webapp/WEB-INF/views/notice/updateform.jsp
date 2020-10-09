<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정 </title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
</head>
<body>
<%@ include file="/include/header.jsp" %>
<div class="container">
	<h1 class="text-center">공지사항 수정</h1>
	<form action="update.do" method="post">
	<input type="hidden" name="nNo" value="${dto.nNo }"/>
		<div class="form-group">
			<label for="nTitle">제목</label>
			<input class="form-control" type="text" name="nTitle" id="nTitle" value="${dto.nTitle }"/> 
		</div>
		<div class="form-group">
			<label for="nContent">내용</label>
			<textarea class="form-control" name="nContent" id="nContent" cols="30" rows="10">${dto.nContent }</textarea>
		</div>
		<div class="float-right">
			<button class="btn btn-outline-primary" type="submit" onclick="submitContents(this);">수정하기</button>
			<button class="btn btn-outline-warning" type="reset">취소</button>
		</div>
	</form>
</div>
<%@ include file="/include/footer.jsp" %>
</body>
</html>