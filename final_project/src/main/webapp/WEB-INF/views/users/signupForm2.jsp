<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
</head>
<body>
	<div class="container">
		<a href="${pageContext.request.contextPath }/home.do" class="btn btn-outline-primary">메인페이지</a>
		<form action="${pageContext.request.contextPath }/users/signup.do" method="post" id="myForm">
			<div class="form-group col-md-5">
				<label for="id">아이디</label>
				<input type="text" class="form-control" name="id" id="id"/>
				<small class="form-text text-muted">8~15자의 영 대,소문자, 숫자와 특수기호(_),(-)만 사용</small>
				<div class="invalid-feedback">
					아이디 형식을 맞춰주세요.
				</div>
				<a id="checkId" href="javascript:" class="btn btn-outline-primary">중복확인</a>
			</div>
			<div class="form-group row">
				<div class="col">
					<label for="pwd">비밀번호</label>
					<input type="password" name="pwd" id="pwd" class="form-control" />
					<small class="form-text text-muted">비밀번호는 8자 이상이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함</small>
					<div class="invalid-feedback">
					비밀번호 형식을 맞춰주세요!
					</div>
				</div>
				<div class="col">
					<label for="pwd2">비밀번호 확인</label>
					<input type="password" name="pwd2" id="pwd2" class="form-control" />
					<div class="invalid-feedback">
					비밀번호를 다시 확인해 주세요.
					</div>
					<div class="valid-feedback">
					비밀번호가 일치합니다.
					</div>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-md-3">
					<label for="name">이름</label>
					<input type="text" name="name" id="name" class="form-control"/>
					<div class="invalid-feedback">
					한글만 입력해주세요.
					</div>
				</div>
				<div class="col-md-4">
					<label for="email">이메일</label>
					<input type="text" name="email" id="email" class="form-control"/>
					<small class="form-text text-muted">ex) qorxjaos45@naver.com // @와 .은 포함되어야 합니다.</small>
					<div class="invalid-feedback">
					이메일 형식을 맞춰주세요.
					</div>
				</div>
			</div>
			<div class="form-group col-md-3">
				<label for="phone">휴대전화</label>
				<input type="text" name="phone" id="phone" class="form-control"/>
				<small class="form-text text-muted">- 는 뺴고 입력 바랍니다. ex)01011112222</small>
				<div class="invalid-feedback">
					휴대폰 번호 형식을 맞춰주세요.
				</div>
			</div>
			<div class="formg-roup col-md-6">
				<label for="addr">주소</label>
				<input type="text" name="addr" id="addr" class="form-control"/>
			</div>
			<hr/>
			<button type="submit" class="btn btn-outline-primary">회원가입</button>
		</form>
	</div>
<script>
	//myForm의 검증을 위해 코드를 다 작성하고 boolean값 도출해내기
	//id 검증
	var isIdValid = false;
	//pwd 검증
	var isPwdValid = false;
	//이름 검증
	var isNameValid = false;
	//이메일 검증
	var isEmailValid = false;
	//휴대폰 검증
	var isPhoneValid = false;
	
	//myForm 제출
	$('#myForm').on('submit',function(){
		var allValid = isIdValid && isPwdValid && isNameValid && isEmailValid && isPhoneValid;
		console.log("allValid "+allValid);
		if(!allValid){
			if(!isIdValid){
				alert("아이디를 중복확인을 해 주세요");
				$('#id').focus();
			}else if(!isPwdValid){
				alert("비밀번호를 확인해 주세요");
				$('#pwd').focus();
			}else if(!isNameValid){
				alert("이름을 확인해 주세요.");
				$('#name').focus();
			}else if(!isEmailValid){
				alert("이메일을 확인해 주세요.");
				$('#email').focus();
			}else if(!isPhoneValid){
				alert("휴대전화 번호를 확인해 주세요.");
				$('#phone').focus();
			}	
			return false;
		}else{
			var isSubmit = confirm("회원가입을 하시겠습니까?");
			
			if(!isSubmit){
				return false;
			}
		}
	});
	
	//정규 표현식
	//8~15자의 영 대,소문자, 숫자와 특수기호(_),(-)만 사용
	var reg_id = /^[A-Za-z0-9_\-]{8,15}$/;
	//비밀번호는 8자 이상이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함
	var reg_pwd = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
	//한글만
	var reg_name = /^[가-힣]+$/;
	//010시작 네글자씩
	var reg_phone = /^010[0-9]{8}$/;
	//aa01@aa.aa
	var reg_email = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
	
	var resultId = false;
	var inputId = "";
	
	//id 검증
	$('#id').on('input',function(){
		inputId = $('#id').val();
		resultId = reg_id.test(inputId);
		
		$('#id').removeClass("is-invalid");
		
		if(!resultId){
			$('#id').addClass("is-invalid");
		}
	});
	//id ajax로 중복확인
	$('#checkId').on('click',function(){
		if(resultId){
			$.ajax({
				url : '${pageContext.request.contextPath }/users/checkId.do',
				method : 'get',
				data : 'id='+inputId,
				success : function(data){
					if(data.isValid){
						alert("이미 사용중인 아이디 입니다.");
						$('#id').text("");
						$('#id').focus();
					}else{
						isIdValid = true;
						alert("사용 가능한 아이디 입니다.");
						$('#pwd').focus();
					}
				}
			});
		}
	});
	
	
	
	
	//비밀번호 중복확인
	$('#pwd, #pwd2').on('input',function(){
		var pwd = $('#pwd').val();
		var pwd2 = $('#pwd2').val();
		
		var resultPwd = reg_pwd.test(pwd);
		
		$('#pwd2').removeClass('is-valid is-invalid');
		$('#pwd').removeClass('is-invalid');
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
	
	//이름 검증
	$('#name').on('input',function(){
		var inputName = $('#name').val();

		var resultName = reg_name.test(inputName);
		
		$('#name').removeClass('is-invalid');
		
		if(!resultName){
			$('#name').addClass('is-invalid');
		}else{
			isNameValid = true;
		}
	});
	
	//이메일 검증
	$('#email').on('input',function(){
		var inputEmail = $('#email').val();
		
		var resultEmail = reg_email.test(inputEmail);
		
		$('#email').removeClass('is-invalid');
		
		if(!resultEmail){
			$('#email').addClass('is-invalid');
		}else{
			isEmailValid = true;
		}
	});
	
	//휴대전화 검증
	$('#phone').on('input',function(){
		var inputPhone = $('#phone').val();
		
		var resultPhone = reg_phone.test(inputPhone);
		isPhoneValid = false;

		$('#phone').removeClass('is-invalid');
		
		if(!resultPhone){
			$('#phone').addClass('is-invalid');
			$('#phone').focus();
		}else{
			isPhoneValid = true;
		}
	});
</script>
</body>
</html>