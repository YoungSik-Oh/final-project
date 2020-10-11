<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
</head>
<body>
<%@ include file="/include/header.jsp" %>
<div class="container">
<hr/>
	 <a href="${pageContext.request.contextPath }/product/productUpdateform.do?pNo=${productdetail.pNo}" >수정하기</a>
	 
	<div class="row no-gutters bg-light position-relative">
	  <div class="col-md-6 mb-md-0 p-md-4">
	      <img src="${pageContext.request.contextPath }/upload/${productdetail.saveFileName}" class="d-block w-100" alt="...">
	  </div>
	  <div class="col-md-6 position-static p-4 pl-md-0">
	    <ul class="list-group list-group-flush">
		  <li class="list-group-item">${productdetail.pTitle }</li>
		  <li class="list-group-item">${productdetail.pPrice }</li>
		  <li class="list-group-item">${productdetail.pRegdate }</li>
		  <li class="list-group-item">2,500 원</li>
		  <li class="list-group-item">장바구니</li>
		</ul>
	  </div>	  
	</div>
	<hr/>
	<div class="text-center border border-secondary rounded">
	    <div class="row">
	      <div class="col-sm">
			상품정보
	      </div>
	    </div>
    </div>
	<hr/>
	<ul class="list-group">
	  <li class="list-group-item"></li>
	  <li class="list-group-item">${productdetail.pContents }</li>
	</ul>

<%@ include file="/include/footer.jsp" %>
</div>
</body>
</html>