<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
</head>
<body>
<h4>배송지 선택 아직 미완성</h4>
<hr />
	<div class="txtBox">
		<div id="privacy">
			<table class="table table-striped">
				<tr>
					<th>이름</th>
				</tr>
				<tr>
					<td>${dto.name }</td>
				</tr>
				<tr>
					<th>휴대폰 번호</th>
				</tr>
				<tr>
					<td>${dto.phone }</td>
				</tr>
				<tr>
					<th>주소</th>
				</tr>
				<tr>
					<td>${dto.addr }</td>
				</tr>
			</table>
		</div>
		<button>수정</button>
		<button>선택</button>
	</div>
	<a href="ruf.jsp">배송지 추가</a>
</body>
</html>