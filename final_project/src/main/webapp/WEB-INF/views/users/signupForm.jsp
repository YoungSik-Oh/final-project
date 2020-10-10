<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<style>
	.container{
		width : 800px;
	}

	#checkId{
		margin-top : 10px;
	}
	
	.card{
		padding : 20px;
		background-color : #FFFFF6;
	}
	
	.form-control{
		height : 40px;
	}
	
	#emailConfirm{
		margin-top : 10px;
	    margin-bottom : 10px;
	}
	
	#ctForm{
		display : none;
	}
</style>
</head>
<body>
	<div class="container">
		<a href="${pageContext.request.contextPath }/main.do" class="btn btn-outline-info">메인페이지</a>
		<c:choose>
			<c:when test="${login eq null }">
				<div class="card">
					<div class="card-body">
						<h1 style="text-align : center; margin-bottom : 20px;">회원 가입</h1>
						<form action="${pageContext.request.contextPath }/users/signup.do" method="post" id="myForm">
							<div class="form-group col-md-8">
								<label for="id">아이디</label>
								<input type="text" class="form-control" name="id" id="id"/>
								<small class="form-text text-muted">8~15자의 영 대,소문자, 숫자와 특수기호(_),(-)만 사용</small>
								<div class="invalid-feedback">
									아이디 형식을 맞춰주세요.
								</div>
								<a id="checkId" href="javascript:" class="btn btn-outline-success">중복확인</a>
							</div>
							<div class="form-group col-md-8">								
								<label for="pwd">비밀번호</label>
								<input type="password" name="pwd" id="pwd" class="form-control" />
								<small class="form-text text-muted">비밀번호는 8자 이상이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함</small>
								<div class="invalid-feedback">
								비밀번호 형식을 맞춰주세요!
								</div>								
							</div>
							<div class="form-group col-md-8">
								<label for="pwd2">비밀번호 확인</label>
								<input type="password" name="pwd2" id="pwd2" class="form-control" />
								<div class="invalid-feedback">
								비밀번호를 다시 확인해 주세요.
								</div>
								<div class="valid-feedback">
								비밀번호가 일치합니다.
								</div>
							</div>
							<div class="form-group col-md-8">								
								<label for="name">이름</label>
								<input type="text" name="name" id="name" class="form-control"/>
								<div class="invalid-feedback">
								한글만 입력해주세요.
								</div>					
							</div>
							<div class="form-group col-md-8">								
								<label for="email">이메일</label>
								<input type="text" name="email" id="email" class="form-control" placeholder="네이버 이메일 주소만 지원합니다.."/>
								<small class="form-text text-muted">ex)이메일 주소 전체를 적어주세요. ex)qq1@naver.com</small>
								<div class="invalid-feedback" id="fake">
								네이버 이메일 아이디와 형식을 맞춰주세요.
								</div>					
								<a href="javascript:" class="btn btn-outline-info" id="emailConfirm">이메일 중복확인 및 인증</a>
								<div id="ctForm">
								<input type="text" id="inputRdNum" class="form-control" placeholder="인증번호를 입력해주세요.."/>
								<a class="btn btn-outline-info" id="ctEmail">확인하기</a>
								</div>
							</div>
							<div class="form-group col-md-8">
								<label for="phone">휴대전화</label>
								<input type="text" name="phone" id="phone" class="form-control"/>
								<small class="form-text text-muted">- 는 뺴고 입력 바랍니다. ex)01011112222</small>
								<div class="invalid-feedback">
									휴대폰 번호 형식을 맞춰주세요.
								</div>
							</div>
							<div class="form-group col-md-10">
								<label for="addr">주소</label>
								<input type="text" name="addr" id="addr" class="form-control"/>
							</div>
							<hr/>
							<button type="submit" class="btn btn-outline-primary">회원가입</button>
						</form>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class="card">
					<div class="card-body">
						<h1 style="text-align : center; margin-bottom : 20px;">회원 가입</h1>
						<form action="${pageContext.request.contextPath }/users/signup.do" method="post">
							<div class="alert alert-success" role="alert">
							  네이버 간편로그인에서의 회원 가입은
							비밀번호, 휴대폰 번호, 주소만 입력하시면 됩니다.
							</div>
							<input type="hidden" name="id" id="naverId"/>
							<input type="hidden" name="name" id="naverName"/>
							<input type="hidden" name="email" id="naverEmail"/>
							<input type="hidden" name="naveremail" id="naveremail"/>
							<input type="hidden" name="uniqid" id="uniqid"/>
							<div class="form-group col-md-8">								
								<label for="pwd">비밀번호</label>
								<input type="password" name="pwd" id="pwd" class="form-control" />
								<small class="form-text text-muted">비밀번호는 8자 이상이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함</small>
								<div class="invalid-feedback">
								비밀번호 형식을 맞춰주세요!
								</div>								
							</div>
							<div class="form-group col-md-8">
								<label for="pwd2">비밀번호 확인</label>
								<input type="password" name="pwd2" id="pwd2" class="form-control" />
								<div class="invalid-feedback">
								비밀번호를 다시 확인해 주세요.
								</div>
								<div class="valid-feedback">
								비밀번호가 일치합니다.
								</div>
							</div>
							<div class="form-group col-md-8">
								<label for="phone">휴대전화</label>
								<input type="text" name="phone" id="phone" class="form-control"/>
								<small class="form-text text-muted">- 는 뺴고 입력 바랍니다. ex)01011112222</small>
								<div class="invalid-feedback">
									휴대폰 번호 형식을 맞춰주세요.
								</div>
							</div>
							<div class="formg-roup col-md-10">
								<label for="addr">주소</label>
								<input type="text" name="addr" id="addr" class="form-control"/>
							</div>
							<hr/>
							<button type="submit" class="btn btn-outline-primary">회원가입</button>
						</form>
					</div>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
<script>
	//간편 로그인 시 디폴트 값 넣어주기
	var naverEmail = "${naveremail}";
	var uniqid = "${uniqid}";
	var naverName = "${name}";

	$('#naverId, #naverEmail, #naveremail').val(naverEmail);
	$('#uniqid').val(uniqid);
	$('#naverName').val(naverName);
	
	//myForm의 검증을 위해 코드를 다 작성하고 boolean값 도출해내기
	//id 검증
	var isIdValid = false;
	//pwd 검증
	var isPwdValid = false;
	//이름 검증
	var isNameValid = false;
	//이메일 검증
	var isEmailValid = false;
	//이메일 중복 및 인증 검증
	var isEmailValid2 = false;
	//휴대폰 검증
	var isPhoneValid = false;
	
	//myForm 제출
	$('#myForm').on('submit',function(){
		var allValid = isIdValid && isPwdValid && isNameValid && isEmailValid && isEmailValid2 && isPhoneValid;
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
			}else if(!isEmailValid2){
				alert("이메일 인증을 해주세요.");
				$('#email').focus();
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
	var reg_email = /^[A-Za-z0-9_\.\-]+@naver.com+/;
	
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
	
	//비밀번호 확인
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
	
	
	var inputEmail = '';
	//이메일 검증
	$('#email').on('input',function(){
		inputEmail = $('#email').val();
		
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
	
	//이메일 인증
	
	$('#emailConfirm').on('click',function(){
		if(isEmailValid){
			$.ajax({
				url : '${pageContext.request.contextPath }/users/sendRdNum.do',
				method : 'get',
				data : {email : inputEmail},
				success : function(data){
					var isExist = data.isExist;
					var rdNum = data.rdNum;
					
					if(isExist){ //true이면 이메일 중복
						alert("이메일이 중복되었습니다!!!");
						$('#email').val("");
						$('#email').focus();
					}else{
						alert("이메일 인증번호가 : "+inputEmail+"로 전송되었습니다!" + rdNum);
						$('#ctForm').css('display','block');
						console.log(rdNum);
						var inputRdNum = '';
						
						$('#inputRdNum').on('input',function(){
							inputRdNum = $('#inputRdNum').val();
						});
						
						$('#ctEmail').on('click',function(){
							if(rdNum == inputRdNum){
								alert("이메일 인증이 확인되었습니다!");
								$('#ctForm').css('display','none');
							}else{
								alert("인증번호가 맞지 않습니다. 다시 한번 입력해 주세요.");
								$('#inputRdNum').val("");
								$('#inputRdNum').focus();
							}
						});
						isEmailValid2 = true;
					}
				}
			});
		}else{
			alert("이메일 형식을 맞춰주세요!");
			$('#email').focus();
		}
	});
</script>
</body>
</html>