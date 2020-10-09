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
<style>
	.container{
		margin-top : 20px;
	}
	
	#adminHead{
		color : green;
	}
	
	#userHead{
		margin-top : 20px;
		margin-bottom : 20px;
	}
</style>
</head>
<body>
	<%@ include file="/include/header.jsp" %>
	<div class="container">
		<a href="${pageContext.request.contextPath }/admin/main.do"><h1 class="text-center" id="adminHead">관리자 페이지</h1></a>
		<nav>
		  <div class="nav nav-tabs" id="nav-tab" role="tablist">
		    <a class="nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">회원 관리</a>
		  </div>
		</nav>
		<div class="tab-content" id="nav-tabContent">
		  <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
			<h1 id="userHead">회원 목록입니다.</h1>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>아이디</th>
							<th>이름</th>
							<th>전화번호</th>
							<th>이메일</th>
							<th>가입날짜</th>
							<th>글 관리</th>
							<th>정지</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="tmp" items="${list }">
							<tr>
								<td>${tmp.id }</td>
								<td>${tmp.name }</td>
								<td>${tmp.phone }</td>
								<td>${tmp.email }</td>
								<td>${tmp.regdate }</td>
								<td>
									<a href="">
										<svg width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-card-text" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
										  <path fill-rule="evenodd" d="M14.5 3h-13a.5.5 0 0 0-.5.5v9a.5.5 0 0 0 .5.5h13a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z"/>
										  <path fill-rule="evenodd" d="M3 5.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zM3 8a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9A.5.5 0 0 1 3 8zm0 2.5a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5z"/>
										</svg>
									</a>
								</td>
								<td>
									<a href="javascript:deleteUser('${tmp.id }');" style="color : red;">
										<svg width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-trash" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
										  <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
										  <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4L4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
										</svg>
									</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
		<div class="page-display">
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
		</div>
		  </div>
		</div>
		<%@ include file="/include/footer.jsp" %>
	</div>
<script>
	//탈퇴 아이콘 클릭 시 회원 삭제
	function deleteUser(id){
		var isDelet = confirm("해당 회원을 정지시키시겠습니까?"); 
		
		if(isDelet){
			var url = "${pageContext.request.contextPath }/admin/userDelete.do?userId="+id;
			var pop = window.open(url, "", "width=500, height=400, left=500, top=200");
		}
	}
</script>
</body>
</html>