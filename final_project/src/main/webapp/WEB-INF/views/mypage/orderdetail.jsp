<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문상세</title>
<!-- 부트스트랩 CSS import -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/bootstrap-grid.css" />
</head>
<body>
	<div class="container">
		<div class="container border mt-3">
			<div class="row">
				<div class="col">
					<h2>주문상세</h2>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<b>주문일자 : 20201007</b> <b>주문번호 : 20abcdef</b>
					<button class="btn btn-danger">주문내역삭제</button>
				</div>
			</div>
			<div class="container border mt-3">
				<div class="row">
					<div class="col">
						<img class="img-thumbnail"
							src="${pageContext.request.contextPath }/resources/images/product_thumbnail1.jpeg"
							alt="상품이미지 썸네일" />
					</div>
					<div class="col">
						<p>상품명 :</p>
						<span>금액 : </span><br /> <span>갯수 : </span>
					</div>
					<div class="col">
						<p>배송상태 :</p>
						<p>도착 예정 일자</p>
					</div>
				</div>
			</div>
			<div class="container border mt-3">
				<div class="row">
					<div class="col">
						<h2>받는사람 정보</h2>
						<table class="table table-hover">
							<thead>
							</thead>
							<tbody>
								<tr>
									<th scope="col">받는사람</th>
									<th scope="col">김지훈</th>
								</tr>
								<tr>
									<th scope="col">연락처</th>
									<th scope="col">010-7390-4780</th>
								</tr>
								<tr>
									<th scope="col">받는주소</th>
									<th scope="col">성북구</th>
								</tr>
								<tr>
									<th scope="col">배송요청사항</th>
									<th scope="col">부재시 문앞에 두고가주세요 :D</th>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="container border mt-3">
				<div class="row">
					<div class="col">
						<h2>결제정보</h2>
						<table class="table table-hover">
							<thead>
							</thead>
							<tbody>
								<tr>
									<th scope="col">결제수단</th>
									<th scope="col"></th>
									<th scope="col"></th>
									<th scope="col"></th>
								</tr>
								<tr>
									<th scope="col">CASH</th>
									<th scope="col">50,000원</th>
									<th scope="col">총 상품 가격</th>
									<th scope="col">50,000원</th>
								</tr>
								<tr>
									<th scope="col"></th>
									<th scope="col"></th>
									<th scope="col">할인금액</th>
									<th scope="col">0원</th>
								</tr>
								<tr>
									<th scope="col"></th>
									<th scope="col"></th>
									<th scope="col">배송비</th>
									<th scope="col">0원</th>
								</tr>
								<tr>
									<th scope="col"></th>
									<th scope="col"></th>
									<th scope="col">총 결제금액</th>
									<th scope="col">50,000원</th>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="container text-center mt-3">
				<button type="button" onclick="location.href='orderlist.do'" class="btn btn-primary">주문목록으로 돌아가기</button>
			</div>
		</div>
	</div>
</body>
</html>