<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0" /> <meta http-equiv="X-UA-Compatible" content="ie=edge" />

<title>Insert title here</title>
<script src="${pageContext.request.contextPath }/js/jquery-3.5.1.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/css/bootstrap.css"></script>

<style>	
input[type="file"] {
  display: block;
}
.imageThumb {
  max-height: 75px;
  border: 2px solid;
  padding: 1px;
  cursor: pointer;
}
.pip {
  display: inline-block;
  margin: 10px 10px 0 0;
}
.remove {
  display: block;
  background: #444;
  border: 1px solid black;
  color: white;
  text-align: center;
  cursor: pointer;
}
.remove:hover {
  background: white;
  color: black;
}
 
	.ingcsn{
		background:rgb(255,255,255);
		font-size:16px;
		position:relative;
	}
	.jaasqo{
	display:block;
	width:1024px;
	margin:auto;
	}
	.cqxrjl{
		margin-bottom: 3rem;
	}
	.cqxrjl h2{
		height:100px;
		font-size:26px;
		display:flex;
		-webkit-box-align:center;
		align-items:center;
		border-bottom:2px solid rgb(30,29,41);
	}
</style>																																							
</head>

<body>
	<div class="ingcsn">
		<main class="jaasqo">
			<section class="cqxrjl">
				<h2>
					기본정보 <span>*필수항목</span>
				</h2>
				<ul class="jpvjjj">
					<li class="cucgoe">
						<div class="devaac">
							상품이미지 <span>*</span> <small>(0/4)</small>
						</div>
						<div class="jotnbb">
						<!-- 사진등록 코딩 -->
						 <span id="counter">0 files selected</span>
  						<input type="file" id="files" name="files[]" multiple /><br>

						</div>

						<div class="bosbtl">
							<b>* 상품 이미지는 640x640에 최적화 돼있습니다.</b> - 이미지를 클릭 할 경우 원본 이미지를 확인할 수
							있습니다.<br />
						</div>
					</li>
					<li class="cucgoe">
						<div class="xcogd"> 제목
							<span>*</span>
						</div>
						<div class="jotnbb">
							<div class="ftsrar">
								<div class="gfyssx">
									<input type="text" placeholder="상품 제목을 입력해주세요." class="elddfb"/>
								</div>
								<div class="kafmg">0/40</div>
							</div>
						</div>
					</li>
					<li class="cucgoe">
						<div class="jjwyhf">
							카테고리
							<span>*</span>
						</div>
						<div class="jotnbb">
							<div class="fvizim">
								<div class="gvhxen">
									<ul class="grupyz">
										<li class="jfpvqh">
											<button type="button" class="euicfi">여성의류</button>
										</li>
										<li>	
											<button type="button" class="sc-bWjmDF iLcOjH">남성의류</button>
										</li>
										<li>	
											<button type="button" class="sc-bWjmDF iLcOjH">패션잡화</button>
										</li>	
											<button type="button" class="sc-bWjmDF iLcOjH">디지털/가전</button>
										<li>	
											<button type="button" class="sc-bWjmDF iLcOjH">번개나눔</button>
										</li>
									</ul>
								</div>
								<div class="sc-hDgvsYgRWfdb">
									<div class="sc-gtXRHabDJqQc">
										<ul class="sc-fyjYeEbbhgyc">
											<li class="sc-ixltIzhSnwvd">
												<button type="button" class="sc-bWjmDF iLcOjH">여성의류</button>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<h3 class="sc-kvkilB irPMvF">
								선택한 카테고리 : <b></b>
							</h3>
						</div>
					</li>
					<li class="cucgoe">
						<div class="sc-cIwbeI ARRyx">거래지역
							<span>*</span>
						</div>
						<div class="sc-dUcZlc hlFTup">
							<div class="sc-fAfrNB aBcHt">
								<button type="button" class="sc-MKjYC jsHzay">내 위치</button>
								<button type="button" class="sc-MKjYC jsHzay">최근 지역</button>
								<button type="button" class="sc-MKjYC jsHzay">주소 검색</button>
							</div>
							<input readonly placeholder="선호 거래 지역을 검색해 주세요." class="sc-bQduHl hBSjWw"/>
						</div>
					</li>
					<li class="cucgoe">
						<div class="sc-cIwbeI jteEHH">
							상태
							<span>*</span>
						</div>
						<div class="sc-dUcZlc hlFTup">
							<div class="sc-TFwJa gYXGne">
								<label for="중고상품" class="sc-bHwgHz dEfXyc"></label>
								<label for="새 상품" class="sc-bHwgHz jIZTty"></label>
							</div>
						</div>
					</li>
					<li class="sc-eetwQk ckiDtq" >
						<div class="sc-cIwbeI jteEHH">
							교환
							<span>*</span>
						</div>
						<div class="sc-dUcZlc hlFTup">
							<div class="sc-TFwJa gYXGne">
								<label for="교환불가" class="sc-bHwgHz dEfXyc"></label>
								<label for="교환가능" class="sc-bHwgHz jIZTty"></label>
							</div>
						</div>
					</li>
					<li class="sc-eetwQK cKiDtq">
						<div class="sc-cIwbeI ARRyx">
							가격
							<span>*</span>
						</div>
						<div class="sc-dUcZlc hlFTup">
							<div class="sc-iUpOdG hjdIGm">
								<input type="text" placeholder="숫자만 입력해 주세요."
								class="sc-kGeDwz Lveim" />원
							</div>
							<div class="sc-hgeeVt fMNbTr">
								<div clas="sc-cKZAiZ ghCodw">
									<label for="freesShipping" class="sc-gwZsXD dFuaDv">
										<input id="freesShipping" type="checkbox" />
										배송비 포함
									</label>
								</div>
								<div class="sc-cKZAiZ gjCodw">
									<label for="contactHope" class="sc-gwZsXD dFuaDv">
										<input id="contactHope" type="checkbox" />
										가격협의 가능
									</label>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div>
							<textarea placeholder="상품 설명을 입력해주세요." rows="6"
							class="sc-fepxGN hhfdcn"></textarea>
							<div>
								<a target="_black" href="">거래금지품목</a>
								<div class="sc-csuNZv jCfdzD">
								0/2000
								</div>
							</div>
						</div>
					</li>
					<li class="sc-hokXgN cuCGoe">
						<div class="sc-fxmata jzkUba">수량</div>
						<div class="sc-boCWhm jOTRnbB">
							<div class="sc-eghKGU dPwjHq">
								<input type="text" class="sc-fUKzqW cBcIqU" value="1" />개
							</div>
						</div>	
					</li>
				</ul>
			</section>
		</main>
		<footer class="sc-kwclOP hOXeFS">
			<div class="sc-bWKBrx gWeWCD">
				<button type="button" class="sc-cxZfpC cWsru">
				</button>
			</div>
		</footer>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function() {

    	  var myFiles = [];
    	  
    	  $("#files").on("change", function(e) {
    	    var files = e.target.files, file;

    	    for (var i = 0; i < files.length; i++) {
    	      file = files[i];
    	      myFiles.push(file); 
    	      $('<span class="pip">' +
    	        '<img class="imageThumb" ' +
    	        'src="' + URL.createObjectURL(file) + '" ' +
    	        'title="' + file.name + '"/>' +
    	        '<br/>' +
    	        '<span class="remove">Remove image</span>' +
    	        '</span>')
    	      .insertAfter("#files")
    	      .find(".remove").click(removeFile.bind(null, file));
    	    }
    	    updateCounters();
    	  });
    	  $('form').on('submit', upload);
    	  function removeFile(file, evt) {
    	    $(evt.target).parent(".pip").remove();
    	    myFiles.splice(myFiles.indexOf(file), 1);
    	    updateCounters();
    	  }

    	  function updateCounters() {
    	    $('#counter').text(myFiles.length + ' files selected');
    	  }

    	  function upload(evt) {
    	    evt.preventDefault(); 
    	    var fd = new FormData(); 
    	    for (var i = 0; i < myFiles.length; i++) {
    	      fd.append('files[]', myFiles[i]); 
    	    }
 
    	    var xhr = new XMLHttpRequest();
    	    xhr.open('POST', 'YOUR_FORM_ACTION_URL');
    	    xhr.send(fd);
    	  }
    	});
 </script>


</body>
</html>