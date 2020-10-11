<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>order list page</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap-grid.css" />
</head>
<style>
  .ww {
    width: 150px;
  }
</style>
<body>
<!--  PRODUCT 테이블에서 -->

<!--  PSTATE = EX) NULL = 구매X     1 = 구매 -->

<!-- PSTATE가 1이고 pBuyer가 세션 ID와 일치하는 상품을 가져와서 -->

<!-- 나열하기 -->

	<div class="container">
		<div class="text-center">
			fixed-top
			<h1>header 부분</h1>
		</div>

		<div class="card">
			<div class="card-header">
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item" role="presentation">
						구매목록
					</li>
				</ul>
			</div>
			<table class="table">
			<thead>
				<tr>
					<th class="ww">상품이미지</th>
					<th>상품이름</th>
					<th>상품가격</th>
				</tr>
			</thead>
			<c:forEach var="tmp" items="${clist2}">
			<tbody>
				<tr>
					<td><img style="width:150px; height:100px;" src="${pageContext.request.contextPath }/upload/${tmp.saveFileName}"></td>
					<td><h5 class="mt-0">${tmp.pTitle }</h5></td>
					<td><p>${tmp.pPrice }</p></td>
				</tr>
			</tbody>
			</c:forEach>
			</table>
		</div>
		<br />
		<div class="card">
			<div class="card-header">
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item" role="presentation">
						판매목록
					</li>
				</ul>
			</div>
			<table class="table">
			<thead>
				<tr>
					<th class="ww">상품이미지</th>
					<th>상품이름</th>
					<th>상품가격</th>
				</tr>
			</thead>
			<c:forEach var="tmp2" items="${slist}">
			<tbody>
				<tr>
					<td><img style="width:150px; height:100px;" src="${pageContext.request.contextPath }/upload/${tmp2.saveFileName}" class="mr-3"></td>
					<td><h5 class="mt-0">${tmp2.pTitle }</h5></td>
					<td><p>${tmp2.pPrice }</p></td>
				</tr>
			</tbody>
			</c:forEach>
			</table>
		</div>
	</div>
	<%@ include file="/include/footer.jsp" %>
</body>
</html>