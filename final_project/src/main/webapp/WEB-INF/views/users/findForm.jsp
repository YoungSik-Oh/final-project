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
	body{
		background-image : url("https://www.swiftdigital.com.au/wp-content/uploads/2020/05/Frenchie1-min-1024x576-1.png");
		background-size : cover;
	}

	.container{
		width : 500px;
	}
	
	.findName{
		text-align : center;
		color : green;
		margin-top : 10px;
		margin-bottom : 20px;
	}
	
	.card{
		margin-bottom : 30px;
		padding : 20px;
	}
	
	#btn{
		margin-bottom : 15px;
	}
	
	.form-control{
		height : 50px;
		margin-top : 5px;
		margin-bottom : 5px;
	}
	
	#logo{
		display : block;
		text-align : center;
		margin-top : 20px;
		margin-bottom : 20px;
	}
</style>
</head>
<body>
	<div class="container">
		<a href="${pageContext.request.contextPath }/" id="logo">
			<img class="img-fluid" src="${pageContext.request.contextPath }/resources/images/logo_umarket.png" alt="Acorn ShoppingMall Logo" />
		</a>
		<div class="card">
			<h1 class="findName">아이디 찾기</h1>
			<div class="form-group">
				<input type="text" name="name" id="name" class="form-control" placeholder="이름"/>
			</div>
			<div class="form-group">
				<input type="text" name="phone" id="phone" class="form-control" placeholder="휴대폰 번호"/>
			</div>
			<button class="btn btn-outline-info form-control btn" id="idBtn">아이디 찾기</button>
		</div>
		<hr>
		<div class="card">
			<div class="alert alert-warning" role="alert">
			  	비밀번호 찾기는 이메일로 받은  인증번호로 새 비밀번호를 설정할 수 있습니다.
			</div>
			<div class="alert alert-danger" role="alert">
			  	현재 네이버 이메일만 지원합니다.
			</div>
			<h1 class="findName">비밀번호 찾기</h1>
			<div class="form-group">
				<input type="text" name="id" id="id" class="form-control" placeholder="아이디"/>
			</div>
			<div class="form-group">
				<input type="text" name="email" id="email" class="form-control" placeholder="이메일"/>
			</div>
			<button class="btn btn-outline-info form-control btn" id="pwdBtn">비밀번호 찾기</button>
			<p id="fake"></p>
		</div>
	</div>
<script>
	var name = '';
	var email = '';
	var phone = '';
	var id = '';
	$('#name, #email, #phone, #id').on('input',function(){
		name = $('#name').val();
		email = $('#email').val();
		phone = $('#phone').val();
		id = $('#id').val();
	});
	
	//아이디 찾기
	$('#idBtn').on('click',function(){
		$.ajax({
			url : '${pageContext.request.contextPath }/users/findId.do',
			method : 'get',
			data : {name : name, phone : phone},
			success : function(data){
				var isExist = data.isExist;
				var findId = data.findId;
				
				if(isExist){  //true이면 넣은 정보에 대한 아이디가 존재하므로
					alert("입력한 정보에 대한 아이디는 : "+findId+" 입니다.");
				}else{
					alert("해당 정보에 대한 검색된 아이디가 없습니다.");
				}
				$('#name').val("");
				$('#phone').val("");
			}
		});
	});
	
	//인증번호를 위한 필드 생성
	var rdNum = '';
	
	//비밀번호 찾기
	$('#pwdBtn').on('click',function(){
		$.ajax ({
			url : '${pageContext.request.contextPath }/users/findPwd.do',
			method : 'get',
			data : {id : id, email : email},
			success : function(data){
				var isExist = data.isExist;
				rdNum = data.rdNum;
				if(isExist){
					alert("인증메일이 "+email+"로 발송되었습니다. 입력란에 정확히 입력해 주세요.");
					$('#fake').empty();
					$('#fake').append("<input type='text' id='ctPwd' class='form-control' placeholder='인증번호를 입력해주세요.'/><button class='btn btn-outline-info' id='confirmPwd'>인증</button>");
					
					var ctPwd = '';
					$('#ctPwd').off().on('input',function(){
						ctPwd = $('#ctPwd').val();
					});
					
					$('#confirmPwd').off().on('click',function(){
						if(rdNum == ctPwd){
							alert("인증이 완료되었습니다. 새로운 비밀번호를 입력해주세요!");
							var url = "${pageContext.request.contextPath }/users/findPwdForm.do?email="+email;
							var pop = window.open(url, "", "width=500, height=500, left=500, top=200");
						} 		
					});
				}else{
					alert("해당 입력 정보에 대한 회원가입 내역이 존재하지 않습니다. 입력란을 확인하여 주세요.");
				}
				$('#id').val("");
				$('#email').val("");
			}
		});
	});	
</script>
</body>
</html>