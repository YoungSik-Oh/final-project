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
<%	
	String id = request.getParameter("id");
%>
<style>
	.card{
		margin-top : 30px;
	}
	
	#userListHeader{
		text-align : center;
	}
</style>
</head>
<body>
	<div class="container">
		<div class="card">
			<div class="alert alert-primary" role="alert" id="userListHeader">
			  <strong><%=id %></strong>님의 상품 목록입니다
			</div>
			<table class="table">
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">상품 번호</th>
						<th scope="col">상품명</th>
						<th scope="col">등록 일자</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="tmp" items="${userProductList}">
						<tr>
					      <th scope="row">#</th>
					      <td>${tmp.pNo }</td>
					      <td><a target="_blank" href="${pageContext.request.contextPath }/product/productdetail.do?pNo=${tmp.pNo }" style="color : black;">${tmp.pTitle }</a></td>
					      <td>${tmp.pRegdate }</td>
					    </tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="page-display">
			<ul class="pagination pagination-sm">
				<c:if test="${startPageNum ne 1 }">
					<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/admin/openUserProduct.do?pageNum=${startPageNum-1 }&id=<%=id%>">Prev</a></li>
				</c:if>
				<c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
					<c:choose>
						<c:when test="${i eq pageNum }">
							<li class="page-item active"><a class="page-link" href="${pageContext.request.contextPath }/admin/openUserProduct.do?pageNum=${i }&id=<%=id%>">${i }</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/admin/openUserProduct.do?pageNum=${i }&id=<%=id%>">${i }</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${endPageNum lt totalPageCount }">
					<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/admin/openUserProduct.do?pageNum=${endPageNum+1 }&id=<%=id%>">Next</a></li>
				</c:if>
			</ul>	
		</div>
	</div>
	<script>
	</script>
</body>
</html>