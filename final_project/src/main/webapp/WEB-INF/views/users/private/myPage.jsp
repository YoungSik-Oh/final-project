<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<style>
	.card{
		margin-top : 30px;
	}

	.card-body{
		text-align : center;
	}

	#privacy{
     	display : none;      
		width : 550px;
		margin-left : auto;
		margin-right : auto;
		margin-bottom : 30px;
		margin-top : 30px;
	}
	
	.btn{
		margin-left : 10px;
		margin-right : 10px;
	}
</style>
</head>
<body>
	<div class="container">
		<a href="${pageContext.request.contextPath }/main.do" class="btn btn-outline-primary">메인페이지</a>
		<h1>마이페이지에서 개인정보 클릭 시 보여지는 임시 개인정보 페이지 입니다.</h1>
		
<!-- 		네이버 간편 로그인에서는 비밀번호가 고유식별번호로 들어가서 개인정보를 확일할 수 없으므로 비밀번호도 입력란에 입력시키게 한다. -->
		
		<div class="card">
		  <div class="card-body">
		    <h5 class="card-title">개인정보 페이지 입니다. 비밀번호를 입력해 주세요.</h5>
		    <input type="password" class="card-text" id="pwd" style="height : 35px;"/>
		    <a href="javascript:" class="btn btn-primary" id="pwdConfirm">확인</a>
		  </div>
		</div>
		
		<div id="privacy">
			<h1 style="text-align : center; margin-bottom : 30px;">개인정보</h1>
			<table class="table table-striped">
				<tr>
					<th scope="col">아이디</th>
				</tr>
				<tr>
					<td scope="col">${dto.id }</td>
				</tr>
				<tr>
					<th scope="col">이름</th>
				</tr>
				<tr>
					<td scope="col">${dto.name }</td>
				</tr>
				<tr>
					<th scope="col">휴대폰 번호</th>
				</tr>
				<tr>
					<td scope="col">${dto.phone }</td>
				</tr>
				<tr>
					<th scope="col">주소</th>
				</tr>
				<tr>
					<td scope="col">${dto.addr }</td>
				</tr>
				<tr>
					<th scope="col">이메일</th>
				</tr>
				<tr>
					<td scope="col">${dto.email }</td>
				</tr>
				<tr>
					<th scope="col">가입날짜</th>
				</tr>
				<tr>
					<td scope="col">${dto.regdate }</td>
				</tr>
			</table>
			<hr>
			<a href="${pageContext.request.contextPath }/users/private/personalInformationForm.do" class="btn btn-outline-primary">개인정보 수정하기</a>
			<a href="javascript:" id="popUpPwd" class="btn btn-outline-info">비밀번호 변경하기</a>
			<a href="javascript:" id="popUpOut" class="btn btn-outline-danger">탈퇴</a>
		</div>
	</div>
<script>
	$('#pwdConfirm').on('click',function(){
		//개인정보를 보기 위해 입력받은 pwd
		var pwd = $('#pwd').val();
		
		$.ajax({
			url : '${pageContext.request.contextPath }/users/pwdConfirm.do',
			data : {pwd : pwd},
			success : function(data){
				console.log(data.isValid);
				var isValid = data.isValid;
				
				if(isValid){
					$('.card').css('display','none');
					$('#privacy').css('display','block');
				}else{
					alert("비밀번호를 다시 입력해주세요!");
					$('#pwd').val("");
					$('#pwd').focus();
				}
			}
		});
	});
	
	//비밀번호 수정 팝업창
	$('#popUpPwd').on('click',function(){
		var url = "${pageContext.request.contextPath }/users/private/updatePwdForm.do";
		var pop = window.open(url, "", "width=500, height=500, left=500, top=200");
	});
	
	//탈퇴 팝업창
	$('#popUpOut').on('click',function(){
		var isConfirm = confirm("회원탈퇴를 하시겠습니까?");
		
		if(isConfirm){
			var url = "${pageContext.request.contextPath }/users/private/outForm.do";
			var pop = window.open(url, "", "width=500, height=400, left=500, top=200");
		}
	});
</script>
</body>
</html>