<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 페이지 장바구니 페이지에서 넘어오게는 아직 미완성</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<script src="../resources/js/angular.min.js"></script>
<script>
	//myApp 이라는 모듈 만들기 
	var myApp=angular.module("myApp", []);
	myApp.controller("one", function($scope){
		$scope.showMe = false;
		$scope.myFunc = function() {
	        $scope.showMe = !$scope.showMe;
	    }
	});
	
	function popup(){
		var url="destination.do";
		var name="popup test";
		var option="width=500px, height=500px"
		window.open(url, name, option);
	}
</script>
</head>
<style>
	.line{
		display:inline;
	}
	h2{
		display:inline;
	}
	.self{
		width:200px;
	}
</style>
<body ng-app="myApp">
<div class="container" ng-controller="one">
	<div>
		<h1>주문/결제</h1>
		<hr />
	</div>
	<div>
		<h2>받는 사람 정보</h2><a href="javascript:popup()">배송지 변경</a>
		<table class="table table-striped table-sm">
			<tbody>
				<tr>
					<th class="self">이름</th>
					<td>${dto.name }</td>
				</tr>
				<tr>
					<th class="self">배송주소</th>
					<td>${dto.addr }</td>
				</tr>
				<tr>
					<th class="self">연락처</th>
					<td>${dto.phone }</td>
				</tr>
				<tr>
					<th class="self">배송 요청사항</th>
					<td>문앞</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	<div>
		<h2>상품 정보</h2>
		<table class="table table-striped table-sm">
		<thead>
			<tr>
				<th>상품정보</th>
				<th>상품수량</th>
				<th>상품금액</th>
			</tr>
		</thead>
		<c:forEach var="tmp" items="${clist2}">
		<tbody>
			<tr>
				<td>
					<div>${tmp.pTitle }</div>
				</td>
				<td>몇개</td>
				<td>${tmp.pPrice }</td>
			</tr>
		</c:forEach>
			<tr>
				<td>주문금액(총합)</td>
			</tr>
		</tbody>
	</table>
	</div>
	
	<div>
		<h2>결제 정보</h2>
		<table class="table table-striped table-sm">
			<tbody>
				<tr>
					<th class="self">총상품가격(총합)</th>
					<td>가격</td>
				</tr>
				<tr>
					<th class="self">할인 쿠폰 및 포인트</th>
					<td>0원</td>
				</tr>
				<tr>
					<th class="self">회원 등급 할인</th>
					<td>0원</td>
				</tr>
				<tr>
					<th class="self">할인 적용 후의 금액</th>
					<td>0원</td>
				</tr>
				<tr>
					<th class="self">결제수단</th>
					<td>
						<input id="bank" name="way" type="radio" />계좌이체
						<input id="card" name="way" type="radio" />신용카드
						<input id="pcash" name="way" type="radio" />휴대폰
						<input id="ip" name="way" type="radio" />무통장입금
						<input id="kakao" name="way" type="radio" />카카오페이					
					</td>
				</tr>
				<tr>
					<th class="self">주문자 동의</th>
					<td>
						<input type="checkbox" />구매조건 확인 및 결제대행 서비스 약관 동의
						<div class="line">
							<button ng-click="myFunc()">보기</button>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<div ng-show="showMe">
			<p class="line">서비스 이용 약관 동의</p><button>보기</button>
			<p>개인정보 수집 및 이용 동의</p>
			<p>개인정보 제공 및 위탁 동의</p>
		</div>
	</div>
	<div>
		<a href="#" ng-disabled="" class="btn btn-primary btn-lg">결제하기</a>
	</div>
	
</div>
</body>
</html>