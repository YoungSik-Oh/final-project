<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<h1 id="headerProduct">상품 수정</h1><a  target="_blank" href="prohibit.do" class="text-danger">※거래금지품목</a>
   <form action="update.do" method="post" enctype="multipart/form-data">
   
      <div class="form-group mgbt">
         <label for="pTitle"><b>제목(설명)</b></label>
         <input class="form-control" type="text" name="pTitle" id="pTitle" value="${productdetail.pTitle}"/>
      </div>
      <div class="form-group mgbt">
         <label for="myFile">첨부 파일</label><br/>
         <input type="file" name="myFile" id="myFile" value="${productdetail.saveFileName}"/>
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
      <div class="mgbt">
          <label for="pPrice" style="margin-right : 15px;">가격</label>
          <input type="number" min="0" inputmode="numeric" pattern="[0-9]*" placeholder="숫자만 입력해 주세요." id="pPrice" name="pPrice" value="${productdetail.pPrice}"/>
          	<b>원</b>
      </div>
      <!-- 배송비 -->
      <div class="mgbt">
         <label for="pShipping" ><b>배송비 포함</b></label>
		 <input id="pShipping" type="checkbox" name="pShipping" id="pShipping" checked/>
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
           <c:if test="">
           	
           </c:if>
           <input type="radio" name="pChange" value="c1" />
           <label>교환가능</label>
           <input type="radio" name="pChange" value="c2" />
        </div>
      </div>
      <!-- 상품소개 -->
      <div class="mgbt">
          <label for="pContents"><b>상품 설명</b></label>
          <textarea class="form-control" placeholder="상품 설명을 입력해주세요." rows="5" cols="50" id="pContents" name="pContents">${productdetail.pContents}</textarea>
      </div>
      <button class="btn btn-outline-primary"  type="submit">수정하기</button>
   </form>
</div>
 <%@ include file="/include/footer.jsp" %>
  <%--
	[ SmartEditor 를 사용하기 위한 설정 ]
	
	1. WebContent 에 SmartEditor  폴더를 복사해서 붙여 넣기
	2. WebContent 에 upload 폴더 만들어 두기
	3. WebContent/WEB-INF/lib 폴더에 
	   commons-io.jar 파일과 commons-fileupload.jar 파일 붙여 넣기
	4. <textarea id="content" name="content"> 
	   content 가 아래의 javascript 에서 사용 되기때문에 다른 이름으로 바꾸고 
	      싶으면 javascript 에서  content 를 찾아서 모두 다른 이름으로 바꿔주면 된다. 
	5. textarea 의 크기가 SmartEditor  의 크기가 된다.
	6. 폼을 제출하고 싶으면  submitContents(this) 라는 javascript 가 
	      폼 안에 있는 버튼에서 실행되면 된다.
 --%>
<!-- SmartEditor 에서 필요한 javascript 로딩  -->
<script src="${pageContext.request.contextPath }/SmartEditor/js/HuskyEZCreator.js"></script>
<script>
	var oEditors = [];
	
	//추가 글꼴 목록
	//var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];
	
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: "pContents",
		sSkinURI: "${pageContext.request.contextPath}/SmartEditor/SmartEditor2Skin.html",	
		htParams : {
			bUseToolbar : true,				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseVerticalResizer : true,		// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseModeChanger : true,			// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
			//aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
			fOnBeforeUnload : function(){
				//alert("완료!");
			}
		}, //boolean
		fOnAppLoad : function(){
			//예제 코드
			//oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
		},
		fCreator: "createSEditor2"
	});
	
	function pasteHTML() {
		var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
		oEditors.getById["pContents"].exec("PASTE_HTML", [sHTML]);
	}
	
	function showHTML() {
		var sHTML = oEditors.getById["pContents"].getIR();
		alert(sHTML);
	}
		
	function submitContents(elClickedObj) {
		oEditors.getById["pContents"].exec("UPDATE_CONTENTS_FIELD", []);	// 에디터의 내용이 textarea에 적용됩니다.
		
		// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("content").value를 이용해서 처리하면 됩니다.
		
		try {
			elClickedObj.form.submit();
		} catch(e) {}
	}
	
	function setDefaultFont() {
		var sDefaultFont = '궁서';
		var nFontSize = 24;
		oEditors.getById["pContents"].setDefaultFont(sDefaultFont, nFontSize);
	}
</script>
</body>
</html>