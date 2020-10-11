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
	alert("새 비밀번호로 변경되었습니다.!");
	window.opener.location.href="${pageContext.request.contextPath }/users/loginForm.do";
	window.close();
</script>
</body>
</html>