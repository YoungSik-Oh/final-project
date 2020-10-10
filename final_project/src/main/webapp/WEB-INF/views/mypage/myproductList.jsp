<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
	<%-- 	<div class="page-display">
			<ul class="pagination pagination-sm">
				<c:if test="${startPageNum ne 1 }">
					<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/admin/userAdmin.do?pageNum=${startPageNum-1 }">Prev</a></li>
				</c:if>
				<c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
					<c:choose>
						<c:when test="${i eq pageNum }">
							<li class="page-item active"><a class="page-link" href="${pageContext.request.contextPath }/admin/userAdmin.do?pageNum=${i }">${i }</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/admin/userAdmin.do?pageNum=${i }">${i }</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${endPageNum lt totalPageCount }">
					<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/admin/userAdmin.do?pageNum=${endPageNum+1 }">Next</a></li>
				</c:if>
			</ul>	
		 </div>--%>
		</div> 
	</div>
</div>
</body>
</html>