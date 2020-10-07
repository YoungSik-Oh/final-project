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
	}
	
	.card{
		margin-top : 50px;
		padding : 20px;
	}
	
	.form-control{
		margin-top : 10px;
		margin-bottom : 10px;
	}
	
	body{
		background-color : #EEEFF1;
	}
	
	.form-control{
		height : 50px;
	}
	
	h5{
		margin-bottom : 20px;
	}
	
	button{
		margin-top :10px;
		margin-bottom : 10px;
	}
</style>
</head>
<body>
	<div class="container">
		<form action="${pageContext.request.contextPath }/users/private/out.do" method="post" id="myForm">
			<div class="card">
			  <h5 class="card-header">회원탈퇴</h5>
			  <div class="card-body">
			    <h5 class="card-title">회원탈퇴를 위해 비밀번호를 입력해주세요.</h5>
			    <input type="password" name="pwd" class="form-control"/>
			    <button type="submit" class="btn btn-outline-danger">탈퇴하기</button>
			  </div>
			</div>
		</form>
	</div>
<script>
	$('#myForm').on('submit',function(){
		var isDelete = confirm("정말로 회원탈퇴를 하시겠습니까?");
		
		if(!isDelete){
			window.close();
			return false;
		}
	});
</script>
</body>
</html>