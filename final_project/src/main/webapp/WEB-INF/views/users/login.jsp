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
	//filter에 정의한다음에 controller에서 loginform부터 url을 들고와, login까지 전달해준다.
	var isValid = ${isValid};
	console.log(isValid);
	if(isValid){
		var id = "${id}";
		alert(id+"님 안녕하세요 ㅎㅎ");
		location.href="${pageContext.request.contextPath}/main.do";
	}else{
		alert("아이디 혹은 비밀번호를 확인해주세요..");
		location.href="${pageContext.request.contextPath}/users/loginForm.do";
	}
	
</script>
</body>
</html>