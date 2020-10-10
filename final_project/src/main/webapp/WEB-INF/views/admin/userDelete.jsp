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
	.container{
		margin-top : 50px;
	}

	.card{
		padding : 10px;
	}
	
	h1{
		margin-top : 15px;
		margin-bottom : 15px;
		text-align : center;
		color : green;
	}
	
	.form-control{
		height : 50px;
	}
</style>
<%
	String userId = request.getParameter("userId");
	if(userId != null){
		session.setAttribute("userId", userId);
	}
%>
</head>
<body>
	<div class="container">
		<div class="card">
			<h1>회원 정지 폼 입니다.</h1>
			<div class="alert alert-warning" role="alert">
			  회원을 정지시키기 전 관리자 비밀번호를 입력해주세요.
			</div>
			<div class="input-group mb-3">
			  <input type="password" id="inputPwd" class="form-control" placeholder="관리자 비밀번호 입력.." aria-label="Recipient's username" aria-describedby="basic-addon2">
			  <div class="input-group-append">
			    <button class="btn btn-outline-secondary" type="button" id="adminPwd">확인</button>
			  </div>
			</div>
		</div>
	</div>
<script>
	$('#adminPwd').on('click',function(){
		var inputPwd = $('#inputPwd').val()
		
		$.ajax({
			url : '${pageContext.request.contextPath }/admin/inputPwd.do',
			method : 'get',
			data : {pwd : inputPwd},
			success : function(data){
				console.log("isvalid : "+data.isvalid);
				var isvalid = data.isvalid;
				if(isvalid){
					var isConfirm = confirm("확인되었습니다");
					
					if(isConfirm){
						var userId = "${userId}";
						console.log("userId : "+userId);
						
						$.ajax({
							url : '${pageContext.request.contextPath }/admin/deleteUsers.do',
							method : 'get',
							data : {id : userId},
							success : function(data){
								var setDisabled = data.setDisabled;
								
								if(setDisabled == 'yes'){
									alert("회원이 정지되었습니다.");
									window.opener.location.href = "${pageContext.request.contextPath }/admin/userAdmin.do";
									window.close();
								}else{
									alert("setDisabled를 설정하는데서 문제가 발생하였습니다.");
								}
							}
						});
					}else{
						window.close();
					}
				}else{
					alert("비밀번호가 잘못되었습니다. 다시 입력해 주세요.");
					$('#inputPwd').val("");
					$('#inputPwd').focus();
				}
			}
		});
	});
</script>
</body>
</html>