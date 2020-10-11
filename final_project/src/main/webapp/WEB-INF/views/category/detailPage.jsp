<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
<style>
	.bd-placeholder-img {
	    font-size: 1.125rem;
	    text-anchor: middle;
	    -webkit-user-select: none;
	    -moz-user-select: none;
	    -ms-user-select: none;
	    user-select: none;
     }
     
     .card-img-top{
     	text-align : center;
     }
     
     h3{
     	margin-bottom : 20px;
     }
</style>
<%	
	String pCategory = request.getParameter("pCategory");
	request.setAttribute("pCategory", pCategory);
%>
</head>
<body>
	<%@ include file="/include/header.jsp" %>
	<main role="main">
	  <div class="album py-5">
	    <div class="container">
	      	<c:choose >
	      		<c:when test="${pCategory eq 'a'}">
	      			<h3>카테고리 - 남성의류</h3>
	      		</c:when>
	      		<c:when test="${pCategory eq 'b'}">
	      			<h3>카테고리 - 여성의류</h3>
	      		</c:when>
	      		<c:when test="${pCategory eq 'c'}">
	      			<h3>카테고리 - 헬스/건강식품</h3>
	      		</c:when>
	      		<c:when test="${pCategory eq 'd'}">
	      			<h3>카테고리 - 전자기기</h3>
	      		</c:when>
	      		<c:when test="${pCategory eq 'e'}">
	      			<h3>카테고리 - 기타잡품</h3>
	      		</c:when>
	      	</c:choose>
	      <div class="row">
	      	<c:forEach var="tmp" items="${categoryList }">
		        <div class="col-md-3">
		          <div class="card mb-4 shadow-sm">
		          	<div class="card-img-top">
		          		<a href="${pageContext.request.contextPath }/product/productdetail.do?pNo=${tmp.pNo}">
		          			<img src="${pageContext.request.contextPath }/upload/${tmp.saveFileName}" style="width : 255px; height : 250px;">
		          		</a>
		          	</div>
		            <div class="card-body">
		              <div class="card-text">
		              	<p>${tmp.pTitle }</p>
		              	<p>가격 : ${tmp.pPrice }원</p>
		              </div>
		              <div class="d-flex justify-content-between align-items-center">
		                <div class="btn-group">
		                  <a type="button" class="btn btn-sm btn-outline-primary"style="display : inline-block; margin-right : 10px;">구입하기</a>
		                  <a type="button" class="btn btn-sm btn-outline-info">장바구니</a>
		                </div>
		              </div>
		            </div>
		          </div>
		        </div>
	        </c:forEach>
	      </div>
	      <div class="page-display">
			<ul class="pagination pagination-sm">
				<c:if test="${startPageNum ne 1 }">
					<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/category/detailPage.do?pageNum=${startPageNum-1 }&pCategory=<%=pCategory%>">Prev</a></li>
				</c:if>
				<c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
					<c:choose>
						<c:when test="${i eq pageNum }">
							<li class="page-item active"><a class="page-link" href="${pageContext.request.contextPath }/category/detailPage.do?pageNum=${i }&pCategory=<%=pCategory%>">${i }</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/category/detailPage.do?pageNum=${i }&pCategory=<%=pCategory%>">${i }</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${endPageNum lt totalPageCount }">
					<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/category/detailPage.do?pageNum=${endPageNum+1 }&pCategory=<%=pCategory%>">Next</a></li>
				</c:if>
			</ul>	
		</div>
	    </div>
	  </div>
	  <%@ include file="/include/footer.jsp" %>
	</main>
</body>
</html>