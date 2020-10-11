<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록 </title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap-grid.css" />
<style>
	#headerProduct{
		margin-top : 20px;
		margin-bottom : 20px;
		margin-right : 30px;
		display : inline-block;
	}
	
	.mgbt{
		margin-bottom : 20px;
	}
</style>
</head>
<%@ include file="/include/header.jsp" %>
<body>
<div class="container">
   <h1 id="headerProduct">상품 등록</h1><a  target="_blank" href="prohibit.do" class="text-danger">※거래금지품목</a>
   <form action="upload.do" method="post" enctype="multipart/form-data">
      <div class="form-group">
         <label for="pTitle"><b>제목(설명)</b></label>
         <input class="form-control" type="text" name="pTitle" id="pTitle"/>
      </div>
      <div class="form-group mgbt">
         <label for="myFile">첨부 파일</label><br/>
         <input type="file" name="myFile" id="myFile"/>
      </div>
      <div class="mgbt">
           <label for="pCategory"><b>카테고리</b></label>
         <select class="form-control" name="pCategory" id="pCategory">
            <option value="">카테고리를 선택</option>
            <option value="a">남성의류</option>
            <option value="b">여성의류</option>
            <option value="c">헬스/건강식품</option>
            <option value="d">전자기기</option>
            <option value="e">기타 잡화</option>
         </select>
      </div>
      <!-- 상품가격 -->
      <div class="mgbt form-group">
          <label for="pPrice" style="margin-right : 15px;">가격</label>
          <input type="number" min="0" inputmode="numeric" pattern="[0-9]*" placeholder="숫자만 입력해 주세요." id="pPrice" name="pPrice" />
          	<b>원</b>
      </div>
      <!-- 배송비 -->
      <div class="mgbt">
         <label for="pShipping" ><b>배송비 포함</b></label>
         <input id="pShipping" type="checkbox" name="pShipping" id="pShipping" value="pShipping" checked/>
      </div>
      <div><b>중고 여부</b>
         <div class="mgbt">
             <label>중고상품 </label>
             <input type="radio" name="pIsUsed" value="s1" />
             <label>새상품</label> 
             <input type="radio" name="pIsUsed" value="s2" />
         </div>
       </div>
         <!-- 교환 -->
      <div class="mgbt"><b>교환</b>
      	<div>
           <label>교환불가 </label>
           <input type="radio" name="pChange" value="c1" />
           <label>교환가능</label>
           <input type="radio" name="pChange" value="c2" />
        </div>
      </div>
      <!-- 상품소개 -->
      <div class="mgbt">
          <label for="pContents"><b>상품 설명</b></label>
          <textarea class="form-control" placeholder="상품 설명을 입력해주세요." rows="5" cols="50" id="pContents" name="pContents"></textarea>
      </div>
      <button class="btn btn-outline-primary"  type="submit">업로드</button>
   </form>
</div>
 <%@ include file="/include/footer.jsp" %>
</body>
</html>