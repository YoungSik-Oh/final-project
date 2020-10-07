<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<style>
	#logo{
		display : block;
		text-align : center;
		margin-bottom : 20px;
	}
	
	.container{
		width : 500px;
	}
	
	.card{
		padding : 20px;
	}
	
	.form-control{
		height : 55px;
	}
	
	#naverIdLogin{
		text-align : center;
	}
</style>
</head>
<body>
	<div class="container">
		<div class="card">
		  <div class="card-body">
		  	<a href="${pageContext.request.contextPath }/" id="logo">
				<img class="img-fluid" src="${pageContext.request.contextPath }/resources/images/logo_umarket.png" alt="Acorn ShoppingMall Logo" />
			</a>
		  	<form action="${pageContext.request.contextPath }/users/login.do" method="post" class="form" id="myForm">
		    <div class="form-group">
				<input type="text" name="id" class="form-control" id="id" placeholder="아이디"/>
			</div>
			<div class="form-group">
				<input type="password" name="pwd"  class="form-control" id="pwd" placeholder="비밀번호"/>
			</div>
			<button type="submit" class="btn btn-outline-primary form-control" id="login">로그인</button>
			</form>
		  </div>
<!-- 		간편 로그인 버튼 -->
		  <div id="naverIdLogin"></div>
		  <a href="${pageContext.request.contextPath }/users/certification.do" class="btn btn-outline-warning" style="margin-top : 15px; margin-bottom : 15px;">회원가입</a>
		  <a href="${pageContext.request.contextPath }/users/findForm.do" class="btn btn-outline-danger">아이디/비밀번호 찾기</a>
		  </div>
		  
		  <h5>네이버 간편 로그인은 실제 운영되는 사이트가 아니면 등록된 아이디만 간편 로그인 할 수 있습니다. 등록하려면 저한테 말해주세요!</h5>
		  <hr/>
		  <h5>간편 로그인 지금 url이 엉켜서 잘 안됩니다. 테스트 하실 때 일반 로그인으로 해주세요</h5>
	</div>
<script>
	$('#myForm').on('submit',function(){
		var id = $('#id').val();
		var pwd = $('#pwd').val();
		
		if(id == "" || pwd == ""){
			alert("로그인 정보를 입력해주세요!");
			return false;
		}
	});
</script>

<!-- 네이버아디디로로그인 초기화 Script -->
<script type="text/javascript">
	var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "ILYl0Vs0gvAUfJYTrqnl",
			callbackUrl: "http://localhost:8888/minseok/callback.do",
			isPopup: true, /* 팝업을 통한 연동처리 여부 */
			loginButton: {color: "green", type: 3, height: 60} /* 로그인 버튼의 타입을 지정 */
		}
	);
	
	/* 설정정보를 초기화하고 연동을 준비 */
	naverLogin.init();
	
	$('#logout').on('click',function(){
		sessionStorage.clear();
	});
</script>
</body>
</html>