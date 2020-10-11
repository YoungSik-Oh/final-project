<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<style>
   .container{
      margin-top : 20px;
      margin0bottom : 20px;
   }
   
   .headerA{
      display : inline-block;
      margin-right : 5px;
      margin-bottom : 5px;
   }
</style>    
<!-- Top Contents -->
      <div class="container">
         <div class="row">
            <div class="col">
               <a href="${pageContext.request.contextPath }/"> <img
                  class="img-fluid"
                  src="${pageContext.request.contextPath }/resources/images/logo_umarket.png"
                  alt="Acorn ShoppingMall Logo" />
               </a>
            </div>
            <div class="col">
					<form action="${pageContext.request.contextPath }/product/searchProduct.do" class="form-inline my-2 my-lg-0">
 					<label for="condition"></label> 
					<select name="condition" id="condition" style="display:none"> 
 						<option value="a" <c:if test="${condition eq 'a' }">selected</c:if>>남성의류</option>
 						<option value="b" <c:if test="${condition eq 'b' }">selected</c:if>>여성의류</option>
 						<option value="c" <c:if test="${condition eq 'c' }">selected</c:if>>헬스/건강식품</option>
						<option value="d" <c:if test="${condition eq 'd' }">selected</c:if>>전자기기</option>
 					</select>
						<input value="${keyword }" type="text" name="keyword"  class="form-control mr-sm-2"
 							placeholder="찾고싶은 상품을 검색하세요">
						<button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
					</form>
				</div>
            <div class="col">
               <c:choose>
                  <c:when test="${empty id }">
                     <a href="${pageContext.request.contextPath }/users/loginForm.do" class="btn btn-outline-primary">로그인/회원가입</a>      
                  </c:when>
                  <c:otherwise>
                     <strong>${id }</strong>님
                     <a href="${pageContext.request.contextPath}/mypage/mypage.do" class="text-dark headerA">마이페이지</a>
                     <a href="javascript:" class="text-danger" id="logout">로그아웃</a><br/>
                     <c:if test="${not empty isAdmin }">
                        <a href="${pageContext.request.contextPath}/admin/main.do" class="text-warning headerA">관리자 페이지</a>
                     </c:if>
                     <a href="${pageContext.request.contextPath }/product/productInsertform.do" class="text-info headerA">상품 등록</a>
                  </c:otherwise>
               </c:choose>   
            </div>
         </div>
      </div>
      <!-- Top Contents End -->
      <!-- Category Navigation -->
      <div class="container">
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse"
               data-target="#categorynavigation"
               aria-controls="categorynavigation" aria-expanded="false"
               aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="#">카테고리</a>
            <div class="collapse navbar-collapse" id="categorynavigation">
               <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                  <li class="nav-item active">
                     <a class="nav-link" href="${pageContext.request.contextPath }/category/detailPage.do?pCategory=a">
                        <c:choose>
                           <c:when test="${pCategory eq 'a'}">
                              <strong>남성의류</strong>
                           </c:when>
                           <c:otherwise>
                              남성의류
                           </c:otherwise>
                        </c:choose>
                      </a>
                  </li>
                  <li class="nav-item active">
                     <a class="nav-link" href="${pageContext.request.contextPath }/category/detailPage.do?pCategory=b">
                        <c:choose>
                           <c:when test="${pCategory eq 'b'}">
                              <strong>여성의류</strong>
                           </c:when>
                           <c:otherwise>
                              여성의류
                           </c:otherwise>
                        </c:choose>
                     </a>
                  </li>
                  <li class="nav-item active">
                     <a class="nav-link" href="${pageContext.request.contextPath }/category/detailPage.do?pCategory=c">
                        <c:choose>
                           <c:when test="${pCategory eq 'c'}">
                              <strong>헬스/건강식품</strong>
                           </c:when>
                           <c:otherwise>
                              헬스/건강식품
                           </c:otherwise>
                        </c:choose>
                     </a>
                  </li>
                  <li class="nav-item active">
                     <a class="nav-link" href="${pageContext.request.contextPath }/category/detailPage.do?pCategory=d">
                        <c:choose>
                           <c:when test="${pCategory eq 'd'}">
                              <strong>전자기기</strong>
                           </c:when>
                           <c:otherwise>
                              전자기기
                           </c:otherwise>
                        </c:choose>
                     </a>
                  </li>
                  <li class="nav-item active">
                     <a class="nav-link" href="${pageContext.request.contextPath }/category/detailPage.do?pCategory=e">
                        <c:choose>
                           <c:when test="${pCategory eq 'e'}">
                              <strong>기타 잡품</strong>
                           </c:when>
                           <c:otherwise>
                              기타 잡품
                           </c:otherwise>
                        </c:choose>
                     </a>
                  </li>
               </ul>
            </div>
         </nav>
      </div>
      <!-- Category Navigation End -->