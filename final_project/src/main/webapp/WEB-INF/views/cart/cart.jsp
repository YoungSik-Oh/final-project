<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>

<script>
	

</script>
<style>
	.center{
		text-align: center;
	}
	.btn{
		width:216px;
		text-align: center;
	}
	.txtBox{
		border-style: solid;
		border-width: 2px;
		padding: 12px;
		word-break: break-all;
		border-color: lightgray;
	}
	.self{
		width:50px;
	}
	.made{
		margin:0px;
	}
</style>
</head>
<body ng-app="myApp">
<div class="container" ng-controller="one">
	<div>
		<h1>장바구니</h1>
	</div>
	<form name="cartform" action="${pageContext.request.contextPath }/cart/payment.do">
	<table class="table table-striped table-sm">
		<thead>
			<tr>
				<th>
					<input type="checkbox" class="chk" id="c1" name="chksum" value="0" checked/>
					전체 선택
				</th>
				<th>상품정보</th>
				<th>삭제</th>
				<th>상품금액</th>
			</tr>
		</thead>
		<tbody>
		<c:set var = "total" value = "0" />
		<c:forEach var="tmp" items="${clist}">
			<tr>
				<td class="self">
					<input type="checkbox" class="chk" id="${tmp.cartId }" name="chksum" value="${tmp.pPrice }" checked/>
					상품이미지
				</td>
				<td>
					<div>${tmp.pTitle }</div>
					<div class="float-left"></div>
					<hr class="made" />
					<div>
						상품수량
						<input type="text" ng-model="stock" oninput="this.value = this.value.replace(/[^0-9]/g, '');"/>
					</div>
				</td>
				<td>
					<a href="javascript:deleteConfirm();">삭제</a>
				</td>
				<td>
					${tmp.pPrice }<span>원</span>
				</td>
			</tr>
			<c:set var= "total" value="${total + tmp.pPrice}"/>
		</c:forEach>
			<tr>
				<td>
					<div><p id="asdf">총 주문금액 : <c:out value="${total}"/></p></div>
				</td>
			</tr>	
		</tbody>
	</table>
	<div>
	<p></p>
		<a href="javascript:ddd();">input요소의 아이디의 값 가져오기 하고싶어서</a>
		<a href="#">모두삭제</a>
	</div>
	<div class="txtBox">
		<ul>
			<li>구매 가능 수량이 1개로 제한된 상품은 주문 취소 시, 24시간 내 가상계좌 재주문이 불가합니다.</li>
			<li>해외배송 상품은 배송료가 추가로 발생될 수 있습니다.</li>
			<li>2개 이상 물건을 주문하신 경우, 각각 개별 배송됩니다.
			<li>장바구니에 담은 시점과 현재의 판매 가격이 달라질 수 있습니다.</li>
			<li>결제 시 각종 할인 적용이 달라질 수 있습니다.</li>
			<li>수량 제한 상품의 경우, 가상계좌를 통한 주문은 최대 2건까지만 가능합니다.(미입금 주문 기준, 기존 주문 합산)</li>
		</ul>
	</div>
	<div class="center">
		<a href="../main.do" class="btn btn-outline-primary btn-lg">계속 쇼핑하기</a>
		<a href="payment.do" class="btn btn-primary btn-lg">주문하기</a>
	</div>
	</form>
</div>
<script>

//checkbox체크한 것들의 가격 불러오기
$('#c1, .chk').click(function(){ 
    var sum = 0;
    $('.chk').each(function(){ 
        if ($(this).is(":checked") == true) {
    var chksum=parseInt($(this).parents('tr').find('input[name=chksum]').val());
            sum = sum + chksum;
        }
    $('#asdf').text('총 주문 금액 : '+sum);
    $('')
    });
    console.log(sum);
});

//전체선택 및 해제
$('#c1').click(function(){
 if($('#c1').is(':checked')){
  $('.chk').prop("checked", true);
 }	else {
  $('.chk').prop("checked", false);
 }
});
//하나라도 체크 안 되면 전체선택 체크박스 해제
$('.chk').click(function(){
	if($('.chk:checked').length == $('.chk').length){
		$('#c1').prop('checked', true);
	}else{
		$('#c1').prop('checked', false);
	}
});
//상품 삭제
function deleteConfirm(){
	//나중에는 선택삭제를 할 수 있을까싶어서 남겨둠
	//var ischeck=0;
	//	$('.chk').each(function(){ 
    //   if ($(cartform).is(":checked") == true) {
    //        var hap=parseInt($(cartform).parents('tr').find('input[name=chksum]').id());
    //    }
    //그냥 삭제 =
	var isDelete=confirm("이 상품을 삭제 하시겠습니까?");
	if(isDelete){
		location.href="delete.do?cartId=${cartId}";
	}
}
//input요소 아이디의 값 가져오기 미완성
function dddd(){
	var isOrder=[];
	
	$('.chk').each(function(){ 
       if ($(document).forms["cartform"].find('tr').is(":checked") == true) {
            var as=parseInt($(this).find('input[name=chksum]').attr('id'));
            isOrder.push('as');
       }
       console.log('isOrder');
	});
}
</script>
</body>
</html>