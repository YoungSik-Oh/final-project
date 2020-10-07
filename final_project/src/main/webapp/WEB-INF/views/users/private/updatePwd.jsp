<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	var isValid = "${isValid}";
	console.log(isValid);
	
	if(isValid){
		alert("비밀번호 변경이 완료되었습니다!");
		window.close();
	}else{
		alert("현재 비밀번호를 확인해 주세요.");
		location.href="${pageContext.request.contextPath }/users/private/updatePwdForm.do";
	}
</script>
</body>
</html>