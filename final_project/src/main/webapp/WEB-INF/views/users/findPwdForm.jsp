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
<%
	String email = request.getParameter("email");
	if(email != null){
		session.setAttribute("email", email);
	}
%>
<style>
	h1{
		margin-top : 30px;
		margin-bottom : 30px;
		text-align : center;
		color : green;
	}
	
	.form-control{
		height : 50px;
		margin-bottom : 15px;
	}
	
	.card{
		margin-top : 40px;
		padding : 20px;
	}
	
	button{
		margin-top : 15px;
		margin-bottom : 30px;
	}
</style>
<body>
	<div class="container">
		<div class="card">
			<h1>새 비밀번호 입력</h1>
			<form action="${pageContext.request.contextPath }/users/updateFindNewPwd.do" class="text-center" id="myForm">
				<input type="hidden" name="email" value="${email }"/>
				<div class="form-group col-md-3">
					<input type="password" name="pwd" placeholder="새 비밀번호" class="form-control" id="pwd"/>
					<small class="form-text text-muted">비밀번호는 8자 이상이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함</small>
					<div class="invalid-feedback">
						비밀번호 형식을 맞춰주세요!
					</div>	
				</div>
				<div class="form-group col-md-3">
					<input type="password" placeholder="새 비밀번호 확인" class="form-control" id="pwd2"/>
					<div class="invalid-feedback">
					비밀번호를 다시 확인해 주세요.
					</div>
					<div class="valid-feedback">
					비밀번호가 일치합니다.
					</div>
				</div>
				<button type="submit" class="btn btn-info form-control">변경하기</button>
			</form>
		</div>
	</div>
<script>
	//pwd 검증
	var isPwdValid = false;
	
	//비밀번호는 8자 이상이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함
	var reg_pwd = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
	
	$('#myForm').on('submit',function(){
		if(!isPwdValid){
			alert("새 비밀번호를 다시 확인해주세요!");
			$('#pwd').focus();
			return false;
		}
	});
	
	//비밀번호 확인
	$('#pwd, #pwd2').on('input',function(){
		isPwdValid = false;
		
		$('#pwd2').removeClass('is-valid is-invalid');
		$('#pwd').removeClass('is-invalid');
		
		var pwd = $('#pwd').val();
		var pwd2 = $('#pwd2').val();
		
		var resultPwd = reg_pwd.test(pwd);
		
		if(resultPwd){
			if(pwd != pwd2){
				$('#pwd2').addClass('is-invalid');
			}else{
				$('#pwd2').addClass('is-valid');
				isPwdValid = true;
			}
		}else{
			$('#pwd').addClass('is-invalid');
		}
	});
</script>
</body>
</html>