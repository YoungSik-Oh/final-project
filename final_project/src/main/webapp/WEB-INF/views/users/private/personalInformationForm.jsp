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
<style>
	.card{
		width : 70%;
		margin-left: auto;
		margin-right : auto;
		padding : 20px;
		background-color : #F6F6F6;
	}
	
	h1{
		text-align : center;
		color : green;
	}
	
	.form-control{
		height : 50px;
	}
</style>
</head>
<body>
	<div class="container">
		<a href="${pageContext.request.contextPath }/home.do" class="btn btn-outline-primary">메인페이지</a>
		<div class="card">
			<h1>개인정보 수정 페이지 입니다.</h1>
			<div class="card-body">
				<form action="${pageContext.request.contextPath }/users/private/personalInformation.do" method="post" id="myForm">
					<div class="alert alert-danger" role="alert">
					 	아이디와 이름은 수정하실 수 없습니다.
					</div>	
					<div class="form-group col-md-5">
						<label for="id">아이디</label>
						<input type="hidden" name="id" class="form-control"value="${dto.id }"/>
						<input type="text" class="form-control"value="${dto.id }" disabled/>
					</div>
					<div class="form-group col-md-5">
						<label for="id">이름</label>
						<input type="text" class="form-control" value="${dto.name }" disabled/>
					</div>
					<div class="form-group col-md-5">
						<label for="phone">휴대전화</label>
						<input type="text" name="phone" id="phone" class="form-control" value="0${dto.phone }"/>
						<small class="form-text text-muted">- 는 뺴고 입력 바랍니다. ex)01011112222</small>
						<div class="invalid-feedback">
							휴대폰 번호 형식을 맞춰주세요.
						</div>
					</div>
					<div class="col-md-8">
						<label for="email">이메일</label>
						<input type="text" name="email" id="email" class="form-control" value="${dto.email }"/>
						<small class="form-text text-muted">ex) qorxjaos45@naver.com // @와 .은 포함되어야 합니다.</small>
						<div class="invalid-feedback">
						이메일 형식을 맞춰주세요.
						</div>
					</div>
					<div class="formg-roup col-md-10">
						<label for="addr">주소</label>
						<input type="text" name="addr" id="addr" class="form-control" value="${dto.addr }"/>
					</div>
					<hr>
					<button type="submit" class="btn btn-outline-primary">수정</button>
					<button type="reset" class="btn btn-outline-danger">취소</button>
				</form>
			</div>
		</div>
	</div>
<script>
	//휴대폰 검증
	var isPhoneValid = true;
	//이메일 검증
	var isEmailValid = true;
	
	//010시작 네글자씩
	var reg_phone = /^010[0-9]{8}$/;
	//aa01@aa.aa
	var reg_email = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
	
	//폼 검증
	$('#myForm').on('submit',function(){
		var isAllValid = isPhoneValid && isEmailValid;
		
		if(!isAllValid){
			if(!isPhoneValid){
				alert("휴대전화 번호를 확인해 주세요.");
				$('#phone').focus();
			}else if(!isEmailValid){
				alert("이메일을 확인해 주세요.");
				$('#email').focus();
			}
			
			return false;
		}else{
			var isSubmit = confirm("개인정보를 수정하시겠습니까?");
			
			if(!isSubmit){
				return false;
			}
		}
	});
	
	//휴대전화 검증
	$('#phone').on('input',function(){
		isPhoneValid = false;
		
		var inputPhone = $('#phone').val();
		
		var resultPhone = reg_phone.test(inputPhone);
	
		$('#phone').removeClass('is-invalid');
		
		if(!resultPhone){
			$('#phone').addClass('is-invalid');
			$('#phone').focus();
		}else{
			isPhoneValid = true;
		}
	});
	
	//이메일 검증
	$('#email').on('input',function(){
		isEmailValid = false;
		var inputEmail = $('#email').val();
		
		var resultEmail = reg_email.test(inputEmail);
		
		$('#email').removeClass('is-invalid');
		
		if(!resultEmail){
			$('#email').addClass('is-invalid');
		}else{
			isEmailValid = true;
		}
	});
</script>
</body>
</html>