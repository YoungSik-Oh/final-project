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
</head>
<body>
<script>
	var isValid = ${isValid};
	alert("isValid : "+isValid);
	if(isValid){
		alert("${id}님 그동안 에이콘 중고나라를 이용해 주셔서 감사합니다!");
		window.opener.location.href = "${pageContext.request.contextPath }/main.do";
		window.close();
	}else{
		alert("비밀번호를 잘못 입력하셨습니다.");
		location.href="${pageContext.request.contextPath }/users/private/outForm.do";
	}
</script>
</body>
</html>