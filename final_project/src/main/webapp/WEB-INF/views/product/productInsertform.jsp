<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록 </title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap-grid.css" />
</head>
<%@ include file="/include/header.jsp" %>
<body>
<div class="container">
   <form action="upload.do" method="post" enctype="multipart/form-data">
   
      <div class="form-group">
         <label for="pTitle"><b>제목(설명)</b></label>
         <input class="form-control" type="text" name="pTitle" id="pTitle"/>
      </div>
      <div class="form-group">
         <label for="myFile">첨부 파일</label><br/>
         <input type="file" name="myFile" id="myFile"/>
      </div>
      <div>
      	  <label for="pCategory"><b>카테고리</b></label>
	      <select class="form-control" name="pCategory" id="pCategory">
	      	<option value="">카테고리를 선택</option>
	      	<option value="a">a</option>
	      	<option value="b">b</option>
	      	<option value="c">c</option>
	      	<option value="d">d</option>
	      	<option value="e">e</option>
	      </select>
      </div>
      <!-- 상품가격 -->
      <div>
          <label for="pPrice"></label>
          <input type="number" min="0" inputmode="numeric" pattern="[0-9]*" placeholder="숫자만 입력해 주세요." id="pPrice" name="pPrice" />
          	<b>원</b>
      </div>
      <!-- 배송비 -->
      <div>
         <label for="pShipping" ><b>배송비 포함</b></label>
         <input id="pShipping" type="checkbox" name="pShipping" id="pShipping" value="pShipping" />
      </div>
      <div><b>중고 여부</b>
         <div>
             <label>중고상품 </label>
             <input type="radio" name="pIsUsed" value="s1" />
             <label>새상품</label> 
             <input type="radio" name="pIsUsed" value="s2" />
         </div>
       </div>
         <!-- 교환 -->
      <div><b>교환</b>
      	<div>
           <label>교환불가 </label>
           <input type="radio" name="pChange" value="c1" />
           <label>교환가능</label>
           <input type="radio" name="pChange" value="c2" />
        </div>
      </div>
      <!-- 상품소개 -->
      <div>
          <label for="pContents"><b>상품 설명</b></label>
          <textarea class="form-control" placeholder="상품 설명을 입력해주세요." rows="5" cols="50" id="pContents" name="pContents"></textarea>
      </div>
      <a  target="_blank" href="prohibit.do">거래금지품목</a>
      <button class="btn btn-outline-primary"  type="submit">업로드</button>
   </form>
</div>
 <%@ include file="/include/footer.jsp" %>
</body>
</html>