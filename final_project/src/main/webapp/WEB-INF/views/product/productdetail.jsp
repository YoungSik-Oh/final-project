<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<style>
	#updateA{
		margin-bottom : 15px;
	}
</style>
</head>
<body>
<%@ include file="/include/header.jsp" %>
<div class="container">
<hr/>
	<c:choose>
		<c:when test="${id eq  productdetail.id}">
			<a id="updateA" href="${pageContext.request.contextPath }/product/productUpdateform.do?pNo=${productdetail.pNo}" class="btn btn-outline-warning">수정하기</a>	
		</c:when>
	</c:choose>

	<div class="row no-gutters bg-light position-relative">
	  <div class="col-md-6 mb-md-0 p-md-4">
	      <img src="${pageContext.request.contextPath }/upload/${productdetail.saveFileName}" class="d-block w-50" >
	  </div>
	  <div class="col-md-6 position-static p-4 pl-md-0">
	    <ul class="list-group list-group-flush">
		  <li class="list-group-item">상품명 : ${productdetail.pTitle }</li>
		  <li class="list-group-item">상품 가격 : ${productdetail.pPrice }원</li>
		  <li class="list-group-item">상품 등록날짜 : ${productdetail.pRegdate }</li>
		  <li class="list-group-item">배송비 : 2,500 원</li>
		  <li class="list-group-item btn btn-outline-info">구매하기</li>
		  <li class="list-group-item btn btn-outline-primary">장바구니</li>
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
	  <li class="list-group-item">상품 설명</li>
	  <li class="list-group-item">
	  	<p>${productdetail.pContents }</p>
	  </li>
	</ul>

<%@ include file="/include/footer.jsp" %>
</div>
</body>
</html>