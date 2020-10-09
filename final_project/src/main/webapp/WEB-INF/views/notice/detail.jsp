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

</head>
<body>
<%@ include file="/include/header.jsp" %>
<div class="container">
	<h1 class="text-center">공지사항 상세 페이지 </h1>
	<a href="updateform.do?nNo=${dto.nNo }">수정하기</a>
	<div class="card border-dark" >
	  <div class="card-header">
	    글번호 : ${dto.nNo }  			<a href="delete.do?nNo=${dto.nNo}" id="isDelete">삭제</a>				
      <hr/>
	  <br/>
	  	제목 : ${dto.nTitle }
	  	<span style="float:right"> 등록일자 ${dto.regdate }</span>
	  </div>
	  <div class="card-body text-dark">
	  	<span style="float:right"> 조회수 ${dto.nViewCount }</span></br>
	    <p class="card-text">내용 : ${dto.nContent }</p>
  	  </div>
	</div>
</div>
<%@ include file="/include/footer.jsp" %>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.form.min.js"></script>
	<script>
	$('#isDelete').on('click', function(){
		var isDelete=confirm("삭제?");
		if(!isDelete){
			return false;
		}
	}); 
	</script>
</body>
</html>