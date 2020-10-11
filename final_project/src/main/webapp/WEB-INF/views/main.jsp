<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
   <title>Acorn ShoppingMall</title>
   <!-- 부트스트랩 CSS import -->
   <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
   <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap-grid.css" />
   <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
   <style>
      #notice{
         margin-top : 20px;
         margin-bottom : 20px;
      }
   </style>
</head>

<%
   //네이버 로그인 시 로그인 컨트롤러를 탈 수 없으므로 파라미터로 id를 넘겨줘서 session에 담아준다.
   String id = request.getParameter("id");
   if(id != null){
      session.setAttribute("id", id);
   }
%>
<script>
   //관리자 페이지에서 정지먹은 회원은 isPause 라는 session 값을 가지고 있다.
   //만약 로그인 시 해당 아이디가 isPause 이라는 값을 가지고 있으면 경고창을 띄우고 강제 로그아웃 시킨다.
   var isPause = "${isPause}";
   
   if(isPause == "yes"){
      alert("해당 아이디는 정지상태입니다. 해당 이메일로 문의주세요  email : qorxjaos45@naver.com");
      
      $.ajax({
         url : '${pageContext.request.contextPath }/isPuaseUser.do',
         success : function(data){
            location.reload();
         }
      });
   }
</script>
<style>
   .container{
      margin-top : 20px;
      margin-bottom : 20px;
   }
</style>
<body>
<div id="mainPage">
   <div class="container">

      <%@ include file="/include/header.jsp" %>

      <div class="container">
         <!-- Carousel Images -->
         <div id="carouselExampleIndicators" class="carousel slide"
            data-ride="carousel">
            <ol class="carousel-indicators">
               <li data-target="#carouselExampleIndicators" data-slide-to="0"
                  class="active"></li>
               <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
               <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
               <div class="carousel-item active">
                  <a href="${pageContext.request.contextPath}/notice/list.do"> <img
                     class="d-block w-100 h-50"
                     src="${pageContext.request.contextPath }/resources/images/twice.jpg"
                     alt="First slide">
                  </a>
               </div>
               <div class="carousel-item">
                  <img class="d-block w-100 h-50"
                     src="${pageContext.request.contextPath }/resources/images/momo.jpg"
                     alt="Second slide">
               </div>
               <div class="carousel-item">
                  <img class="d-block w-100 h-50"
                     src="${pageContext.request.contextPath }/resources/images/dahyun.jpg"
                     alt="Third slide">
               </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators"
               role="button" data-slide="prev"> <span
               class="carousel-control-prev-icon" aria-hidden="true"></span> <span
               class="sr-only">Previous</span>
            </a> <a class="carousel-control-next" href="#carouselExampleIndicators"
               role="button" data-slide="next"> <span
               class="carousel-control-next-icon" aria-hidden="true"></span> <span
               class="sr-only">Next</span>
            </a>
         </div>
            
         <div class="card" id="notice">
           <div class="card-header">
           <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-bell" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
             <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2z"/>
             <path fill-rule="evenodd" d="M8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z"/>
           </svg>
            최신 공지사항
           </div>
           <ul class="list-group list-group-flush">
              <c:forEach var="tmp" items="${list }">
                 <li class="list-group-item">
                   <a href="${pageContext.request.contextPath }/notice/detail.do?nNo=${tmp.nNo }" style="display : inline-block;">${tmp.nTitle }</a>
                   <p style="display : inline-block; float : right;">${tmp.regdate }</p>
                </li>
              </c:forEach>
           </ul>
         </div>
         <h2 style="margin-top : 20px; margin-bottom : 20px;">▼최근 등록 물품▼</h2>
         <div class="row mt-3">
            <c:forEach var="tmp" items="${categoryList }">
               <div class="col-md-3">
                   <div class="card mb-4 shadow-sm">
                      <div class="card-img-top">
                         <a href="${pageContext.request.contextPath }/product/productdetail.do?pNo=${tmp.pNo}">
                         	<img src="${pageContext.request.contextPath }/upload/${tmp.saveFileName}" style="width : 248px; height : 250px;">
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
                  <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/main.do?pageNum=${startPageNum-1 }">Prev</a></li>
               </c:if>
               <c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
                  <c:choose>
                     <c:when test="${i eq pageNum }">
                        <li class="page-item active"><a class="page-link" href="${pageContext.request.contextPath }/main.do?pageNum=${i }">${i }</a></li>
                     </c:when>
                     <c:otherwise>
                        <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/main.do?pageNum=${i }">${i }</a></li>
                     </c:otherwise>
                  </c:choose>
               </c:forEach>
               <c:if test="${endPageNum lt totalPageCount }">
                  <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/main.do?pageNum=${endPageNum+1 }">Next</a></li>
               </c:if>
            </ul>   
         </div>
      </div>
   </div>
   <%@ include file="/include/footer.jsp" %>
</div>
   <!-- Body Contents End -->
   <!-- Script -->
   <script
      src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
   <script
      src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
   <!-- Script End -->
   <script>
   $('#logout').on('click',function(){
      var isLogout = confirm("로그아웃 하시겠습니까?");
      if(confirm){
         sessionStorage.clear();
         location.href="${pageContext.request.contextPath }/users/logout.do";
      }
   });
</script>
</body>
</html>