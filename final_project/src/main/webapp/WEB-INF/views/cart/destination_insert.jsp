<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	alert("배송지 수정이 완료되었습니다!");
	window.close();
	opener.location.replace("${pageContext.request.contextPath }/cart/payment.do");
</script>
</body>
</html>