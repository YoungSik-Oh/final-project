<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="tmp" items="${plist }">
		<div class="row mt-3">
			<div class="col-3">
				<div class="card">
					<img class="card-img-top" ${dto.saveFileName }>
					<div class="card-body">
						<h5 class="card-title">${tmp.pTitle }</h5>
						<p class="card-text">${tmp.pContents }</p>
						<p class="card-text">${tmp.pPrice }</p>
						<a href="#" class="btn btn-primary">구매하기</a>
					</div>
				</div>
			</div>
	</c:forEach>
	<div class="page-display">
		<ul class="pagination pagination-sm">
			<c:if test="${startPageNum ne 1 }">
				<li class="page-item"><a class="page-link"
					href="list.do?pageNum=${startPageNum-1 }&condition=${condition }&keyword=${encodedK }">Prev</a></li>
			</c:if>
			<c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
				<c:choose>
					<c:when test="${i eq pageNum }">
						<li class="page-item active"><a class="page-link"
							href="list.do?pageNum=${i }&condition=${condition }&keyword=${encodedK }">${i }</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link"
							href="list.do?pageNum=${i }&condition=${condition }&keyword=${encodedK }">${i }</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${endPageNum lt totalPageCount }">
				<li class="page-item"><a class="page-link"
					href="list.do?pageNum=${endPageNum+1 }&condition=${condition }&keyword=${encodedK }">Next</a></li>
			</c:if>
		</ul>
	</div>
</body>
</html>