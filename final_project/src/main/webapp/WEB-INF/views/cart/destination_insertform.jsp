<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
</head>
<style>
	h4{
		text-align:center;
	}
	.txtBox{
		border-style: solid;
		border-width: 2px;
		padding: 12px;
		word-break: break-all;
		border-color: blue;
	}
</style>
<body>
<%
	//로그인된 회원의 아이디 읽어오기 
	String id=(String)session.getAttribute("id");
%>
	<div class="txtBox">
	<div class="container">
		<div class="card">
			<h4>배송지 수정 페이지</h4>
			<div class="card-body">
				<form action="${pageContext.request.contextPath }/cart/destination_insert.do" method="post" id="myForm">
					<div class="form-group col-md-5">
					<input class="form-control" type="hidden" value="<%=id %>"/>
						<label for="id">이름</label>
						<input type="text" class="form-control" value="${dto.name }" disabled/>
					</div>
					<div class="form-group col-md-5">
						<label for="phone">휴대전화</label>
						<input type="text" name="phone" id="phone" class="form-control" value="${dto.phone }"/>
						<small class="form-text text-muted">- 는 뺴고 입력 바랍니다. ex)01011112222</small>
						<div class="invalid-feedback">
							휴대폰 번호 형식을 맞춰주세요.
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
	</div>
</body>
</html>