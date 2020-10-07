<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<style>
	h1{
		margin-top : 30px;
		margin-bottom : 30px;
		text-align : center;
	}
	
	.form-control{
		height : 50px;
	}
	body{
		background-color : #EEEFF1;
	}
	
	button{
		
	}
</style>
</head>
<body>
	<div class="container">
		<h1>비밀번호 변경</h1>
		<form action="${pageContext.request.contextPath }/users/private/updatePwd.do" class="text-center" id="myForm">
			<div class="form-group col-md-3">
				<input type="password" name="pwd" placeholder="현재 비밀번호" class="form-control"/>
			</div>
			<div class="form-group col-md-3">
				<input type="password" name="newPwd" placeholder="새 비밀번호" class="form-control" id="newPwd"/>
			</div>
			<div class="form-group col-md-3">
				<input type="password" placeholder="새 비밀번호 확인" class="form-control" id="newPwd2"/>
			</div>
			<button type="submit" class="btn btn-info form-control">변경하기</button>
		</form>
	</div>
<script>
	//pwd 검증
	var isPwdValid = false;
	
	//비밀번호는 8자 이상이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함
	var reg_pwd = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
	
	$('#myForm').on('submit',function(){
		if(!isPwdValid){
			alert("새 비밀번호를 다시 확인해주세요!");
			$('#newPwd').focus();
			return false;
		}
	});
	
	//비밀번호 확인
	$('#newPwd, #newPwd2').on('input',function(){
		isPwdValid = false;
		
		var newPwd = $('#newPwd').val();
		var newPwd2 = $('#newPwd2').val();
		
		var resultPwd = reg_pwd.test(newPwd);
		
		if(resultPwd){
			if(newPwd == newPwd2){
				isPwdValid = true;
			}
		}
	});
</script>
</body>
</html>