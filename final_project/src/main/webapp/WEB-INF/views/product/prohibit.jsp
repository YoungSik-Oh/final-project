<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 부트스트랩 CSS import -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap-grid.css" />
	<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
</head>

<style>
	div{
	margin: 0px;
	    padding: 0px;
	    border: 0px;
	    font: inherit;
	    vertical-align: baseline;
    }
    
	.gzvyOi {
	    display: flex;
	    -webkit-box-pack: center;
	    justify-content: center;
	}
	
	.gBbWcX {
    width: 1024px;
    background: rgb(255, 255, 255);
    padding: 2rem 1rem 4rem;
	}
	.iBcdnp {
	    padding-bottom: 2rem;
	    border-bottom: 1px solid rgb(238, 238, 238);
	    display:block;
	    -webkit-box-align: center;
   		align-items: center;
		}
		.iBcdnp h1 {
		    text-align: center;
		    font-size: 2rem;
		    font-weight: 700;
		    line-height: 1.2;
		    margin-bottom: 1rem;
		}
		.iBcdnp h1 span {
		    color: rgb(255, 80, 88);
		}
		.iBcdnp p {
		    text-align: center;
		    color: rgb(136, 136, 136);
		}
	.gfUvqt {
	    display: block;
	    padding: 2rem 0px;
	    list-style: none;
	}
</style>
<body>
<!-- Top Contents -->
		<%@ include file="/include/header.jsp" %>
		<!-- Top Contents End -->
	<div class="gzvyOi">
		<div class="gBbWcX">
			<section class="iBcdnp">
				<h1>
					<span>중고장터</span> <br> "거래 금지 품목 안내"
				</h1>
				<p>
					인터넷에서 거래 시 법에 저촉되는 모든 상품에 대해서는 거래를 포함한 나눔까지 모두 제재 대상이 됩니다. <br>
					<br> 수제 음식 및 식품을 판매하는 상점에서는 상점 메인에 반드시 운영진이 확인 가능한 식품 제조 허가증과
					사업자등록증 번호를 기재해 주시기 바랍니다.
				</p>
			</section>
			<ul class="gfUvqt">
				<li>주민등록증 (각종 신분증)</li>
				<li>담배 (전자담배)</li>
				<li>주류</li>
				<li>의약품</li>
				<li>수제 (음식, 화장품 등)</li>
				<li>소분판매 (식품, 화장품 등)</li>
				<li>불법도박글 (토토)</li>
				<li>타투 (불법시술)</li>
				<li>개통 불가 휴대폰</li>
				<li>온라인게임 계정</li>
				<li>성인용품 (콘돔제외)</li>
				<li>대포차</li>
				<li>대포통장</li>
				<li>불법 소프트웨어 복제품</li>
				<li>암표</li>
				<li>판매가 불가능한 각종 티켓 (비매품/증정용)</li>
				<li>렌즈</li>
				<li>화장품 샘플</li>
				<li>랜덤박스 (비공개/반공개박스)</li>
				<li>온누리상품권, 지역사랑상품권, 지역화폐 등</li>
				<li>재난기본소득 등으로 지급받은 선불카드, 지역화폐카드 등</li>
				<li>유사군복류(전투복, 전투모, 전투화, 계급장, 야전상의, 방한복, 비행복, 특전복 등)</li>
				<li>군용장구(권총집, 수통, 야전삽, 천막류, 침낭, 모포, 방탄모, 방탄복, 배낭 등)</li>
				<li>건강기능식품</li>
				<li>도수 있는 안경, 콘택트렌즈 및 썬글라스</li>
				<li>상표권 침해 물품</li>
				<li>저작권 침해 물품</li>
				<li>모의총포</li>
				<li>안전인증표시 없는 안전인증대상제품</li>
				<li>음란물</li>
				<li>불법현금융통 목적의 상품</li>
				<li>청소년유해매체물, 청소년유해약물, 청소년유해물건</li>
				<li>총포·도검·화약류·분사기·전자충격기·석궁</li>
				<li>유해화학물질</li>
				<li>반려동물(무료 분양도 금지합니다.)</li>
				<li>응모권</li>
				<li>적합성 평가를 받지 않은 불법방송통신기자재</li>
				<li>개인 사용 목적으로 해외직구한 전자제품</li>
				<li>휴대폰 소액결제(통신과금서비스)를 통한 자금 융통 목적의 상품</li>
				<li>그외 법률을 위반하는 모든 상품</li>
			</ul>
		</div>
	</div>
		<!-- Footer Contents -->
	<%@ include file="/include/footer.jsp" %>
	<!-- Footer Contents End -->
</body>
</html>