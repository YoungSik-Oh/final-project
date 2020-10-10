<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
</head>
<body>
<div class="container">
		<div class="tab-content" id="nav-tabContent">
		  <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
		  	<a href="${pageContext.request.contextPath }/main.do" id="logo">
				<img class="img-fluid" src="${pageContext.request.contextPath }/resources/images/logo_umarket.png" alt="Acorn ShoppingMall Logo" />
			</a>
			<h1>내가 올린 상품.</h1>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>사진</th>
					<th>상품 제목</th>
					<th>상품가격</th>
					<th>등록일자</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="tmp" items="${productList }">
					<tr>
						<td>${tmp.orgFileName}</td>
						<td>${tmp.pTitle}</td>
						<td>${tmp.pPrice}</td>
						<td>${tmp.pRegdate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
			<div class="page-display">
			   <ul class="pagination pagination-sm">
			      <c:if test="${startPageNum ne 1 }">
			         <li class="page-item"><a class="page-link" href="productList.do?pageNum=${startPageNum-1 }&condition=${condition }&keyword=${encodedK }">Prev</a></li>
			      </c:if>
			      <c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
			         <c:choose>
			            <c:when test="${i eq pageNum }">
			               <li class="page-item active"><a class="page-link" href="productList.do?pageNum=${i }&condition=${condition }&keyword=${encodedK }">${i }</a></li>
			            </c:when>
			            <c:otherwise>
			               <li class="page-item"><a class="page-link" href="productList.do?pageNum=${i }&condition=${condition }&keyword=${encodedK }">${i }</a></li>
			            </c:otherwise>
			         </c:choose>
			      </c:forEach>
			      <c:if test="${endPageNum lt totalPageCount }">
			         <li class="page-item"><a class="page-link" href="productList.do?pageNum=${endPageNum+1 }&condition=${condition }&keyword=${encodedK }">Next</a></li>
			      </c:if>
			   </ul>   
			</div>
		</div> 
	</div>
		<hr style="clear:left;"/>
	<form action="myproductList.do" method="get">
		<label for="condition">검색조건</label>
		<select name="condition" id="condition">
			<option value="title_filename" <c:if test="${condition eq 'title_filename' }">selected</c:if>>제목+파일명</option>
			<option value="pTitle" <c:if test="${condition eq 'pTitle' }">selected</c:if>>제목</option>
			<option value="pWriter" <c:if test="${condition eq 'pWriter' }">selected</c:if>>작성자</option>
		</select>
		<input value="${keyword }" type="text" name="keyword" placeholder="검색어..."/>
		<button type="submit">검색</button> 
	</form> 
</div>
</body>
</html>