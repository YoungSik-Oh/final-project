<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Footer Contents -->
<br/>
<div class="container text-center fixed-bottom">


<table class="table table-borderless ">
  <thead>
    <tr>
      <th scope="col"><a href="${pageContext.request.contextPath }/notice/list.do">공지사항</a></th>
      <th scope="col"><a href="${pageContext.request.contextPath }/operation/operation_policy.do"></a>운영정책</th>
      <th scope="col"><a target="_blank" href="${pageContext.request.contextPath }/operation/access_terms.do">이용약관</a></th>
      <th scope="col"><a target="_blank" href="${pageContext.request.contextPath }/operation/privacy.do">개인정보처리방침</a></th>
    </tr>
  </thead>
  <tbody>
  	
  	<tr>
      <td>
      	<a href="${pageContext.request.contextPath }/"> <img
		class="img-fluid"
		src="${pageContext.request.contextPath }/resources/images/logo_umarket.png"
		alt="Acorn ShoppingMall Logo" />
		</a>
	  </td>
    </tr>
    <tr>
      <td> 대표이사: 4조    </td>
      <td> 개인정보보호 담당자: acorn </td>
      <td> 사업자등록번호 : 123-45-67890    </td>
      <td> 통신판매업신고:2020-서울강남-9999</td>
    </tr>
    <tr>
      <td>주소: 서울특별시 강남구 삼원타워</td>
      <td>고객센터 대표번호 : 112</td>
      <td>고객센터 운영시간, 점심시간 : 00:00 ~ 00:00  </td>
    </tr>
  </tbody>
</table>
  <p>COPYRIGHT © 2020 ACORN SHOPPINGMALL KOREA. All Rights Reserved.</p>
</div>


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
	}else{
		return false;
	}
});
</script>
</script>