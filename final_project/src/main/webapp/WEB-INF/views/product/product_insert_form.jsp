<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
</head>
<body>
<%
	//로그인된 회원의 아이디 읽어오기 
	String id=(String)session.getAttribute("id");
%>
<div class="container">
<h1 style="text-align:center;">상품 올리기</h1>
	<form action="product_insert.do" method="post" enctype="multipart/form-data">
		<div class="form-group">
			<input class="form-control" type="hidden" value="<%=id %>" disabled/>
		</div>
	  <div class="form-group">
	    <label for="pCategory">상품카테고리 주르륵</label>
	    <input type="text" class="form-control" id="pCategory" name="pCategory" aria-describedby="emailHelp">
	  </div>
	  <div class="form-group">
	    <label for="pTitle">상품명 string</label>
	    <input type="text" class="form-control" id="pTitle" name="pTitle">
	  </div>
	  <div class="form-group">
	    <label for="pPrice">상품가격 number</label>
	    <input type="text" class="form-control" id="pPrice" name="pPrice">
	  </div>
	  <div class="form-group">
	    <label for="pMainImage">메인 이미지</label>
	    <input class="form-control-file" type="file" id="pMainImage" name="pMainImage">
	  </div>
	   <div class="form-group">
	    <label for="pContents">상품설명</label>
	    <input type="text" class="form-control" id="pContents" name="pContents">
	  </div>
	   <div class="form-group">
	    <label for="pImage1">상품이미지1</label>
	    <input class="form-control-file" type="file" id="pImage1" name="pImage1">
	  </div>
	  <div class="form-group">
	    <label for="pImage2">상품이미지2</label>
	    <input class="form-control-file" type="file" id="pImage2" name="pImage2">
	  </div>
	  <div class="form-group">
	    <label for="pImage3">상품이미지3</label>
	    <input class="form-control-file" type="file" id="pImage3" name="pImage3">
	  </div>
	  <div class="form-group">
	    <label for="pImage4">상품이미지4</label>
	    <input class="form-control-file" type="file" id="pImage4" name="pImage4">
	  </div>
	   <div class="form-group">
	    <label for="pIsUsed">중고여부 Y/N</label>
	    <input type="text" class="form-control" id="pIsUsed" name="pIsUsed">
	  </div>
	  <div class="form-group">
	    <label for="pStock">상품수량 주르륵 숫자</label>
	    <input type="text" class="form-control" id="pStock" name="pStock">
	  </div>
	  
	  <button type="submit" class="btn btn-primary">입력 완료</button>
	  <button type="reset" class="btn btn-danger" >입력 취소</button>
	</form>
</div>
</body>
</html>