<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/bootstrap-grid.css" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
	integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
	crossorigin="anonymous"></script>
<style>
div {
	margin: 0px;
	padding: 0px;
	border: 0px;
	font: inherit;
	vertical-align: baseline;
}

}
#notice {
	margin-top: 20px;
	margin-bottom: 20px;
}

.kPQrGe {
	width: 196px;
	margin-right: 11px;
	margin-bottom: 11px;
}

.fACOIQ {
	position: relative;
	width: 100%;
	height: 194px;
}

.kmMbIN {
	padding: 15px 10px;
	height: 80px;
}

.kmMbIN jKZagR {
	position: relative;
	font-size: 14px;
	padding-bottom: 20px;
	text-overflow: ellipsis;
	white-space: nowrap;
	overflow: hidden;
}

.kmMbIN kZVnBR {
	display: flex;
	-webkit-box-pack: justify;
	justify-content: space-between;
	-webkit-box-align: center;
	align-items: center;
	height: 20px;
}

.lbKFnR {
	margin-bottom: 40px;
	display: flex;
}

.bIBRdK {
	margin: 50px 0px 24px;
	width: 100%;
	-webkit-box-pack: justify;
	justify-content: space-between;
	-webkit-box-align: center;
	align-items: center;
}
 
.lTHfT {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	color: red;
	height: 100px;
    font-size: 26px;
    border-bottom: 2px solid rgb(30, 29, 41);
}
}

</style>
</head>
<body>
	<!-- Top Contents -->
	<%@ include file="/include/header.jsp" %>
	<!-- Top Contents End -->

	 <div class="container">
		<div class="bIBRdK">
			<div class="lTHfT">검색결과</div>
		</div>
		<c:forEach var="tmp" items="${plist }">
			<div style="float: left; width: 25%; text-align: center;">
				<div class="row mt-3">
					<div class="col-3">
						<div class="kPQrGe">
							<img class="fACOIQ"
								src="${pageContext.request.contextPath }/upload/${tmp.saveFileName }">
							<div class="jKZagR">${tmp.pTitle }</div>
							<div class="kZVnBR">${tmp.pPrice }</div>
							<div class="btn btn-primary">구매하기</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	<!-- Footer Contents -->
	<%@ include file="/include/footer.jsp" %>
	<!-- Footer Contents End -->
</body>
</html>