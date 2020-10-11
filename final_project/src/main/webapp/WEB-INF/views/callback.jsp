<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>NaverLoginSDK</title>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
</head>

<body>

<!-- 	callback 처리중입니다. 이 페이지에서는 callback을 처리하고 바로 main으로 redirect하기때문에 이 메시지가 보이면 안됩니다. -->

	<!-- (1) LoginWithNaverId Javscript SDK -->
	<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>


	<!-- (2) LoginWithNaverId Javscript 설정 정보 및 초기화 -->
	<script>
		var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "ILYl0Vs0gvAUfJYTrqnl",
				callbackUrl: "http://localhost:8888/acornshop/callback.jsp",
				isPopup: true,
				callbackHandle: true
				/* callback 페이지가 분리되었을 경우에 callback 페이지에서는 callback처리를 해줄수 있도록 설정합니다. */
			}
		);

		/* (3) 네아로 로그인 정보를 초기화하기 위하여 init을 호출 */
		naverLogin.init();
		var naveremail = "";
		var uniqid = "";
		var name = "";
		/* (4) Callback의 처리. 정상적으로 Callback 처리가 완료될 경우 main page로 redirect(또는 Popup close) */
		window.addEventListener('load', function () {
			
			naverLogin.getLoginStatus(function (status) {
				if (status) {
					/* (5) 필수적으로 받아야하는 프로필 정보가 있다면 callback처리 시점에 체크 */
					naveremail = naverLogin.user.getEmail();
					name = naverLogin.user.getName();
					uniqid = naverLogin.user.getId();
					
					if( naveremail == undefined || naveremail == null) {
						alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
						/* (5-1) 사용자 정보 재동의를 위하여 다시 네아로 동의페이지로 이동함 */
						naverLogin.reprompt();
						return;
					}
					
					loginProcess();
					
					//window.opener.top.location.href = "${pageContext.request.contextPath}/home.do";
					//window.close();

					//window.location.replace("http://" + window.location.hostname + ( (location.port==""||location.port==undefined)?"":":" + location.port) + "/minseok/home.do");
				} else {
					console.log("callback 처리에 실패하였습니다.");
				}
			});
		});
		
		function loginProcess(){
			$.ajax({
				url : "${pageContext.request.contextPath}/users/loginProcess.do",
				data : {naveremail: naveremail, uniqid: uniqid, name : name},
				success : function(data){
					var isExist = data.isExist;
					alert(isExist);
					//data.isExist 가 true이면 회원가입을 한 적이 있고 false이면 회원가입을 한 적이 없다.
					if(isExist){
						window.opener.top.location.href = "${pageContext.request.contextPath}/main.do?id="+naveremail;
					}else{
						alert("네이버 로그인 시 최초 한번 가입해야 합니다.");
						window.opener.top.location.href = "${pageContext.request.contextPath}/users/certification.do?login=naverLogin";
					}
					window.close();
				}
			});
		}
	</script>
</body>

</html>