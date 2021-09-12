<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 네이게이션 바 -->
<%@ include file="/WEB-INF/views/common/navbar.jsp"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
	
		<!-- ch04/content 화면 기본구성 -->
		<div class="container col-4" style="margin-top: 15vh;">
		    <div class="mb-3 d-flex">
				<h2>💡 유효성 검사 - ch04/content</h2>
		    </div>
		    <!-- 입력 폼 / 버튼 -->
		    <div class="input-group mt-3 mb-4">
		      <input class="form-control" type="text" placeholder="내용을 추가해주세요.">
		      <button class="btn btn-dark" type="button" id="button-addon2">Add</button>
		    </div>
		    <!-- 목록 -->
		    <div class="text-center" style="margin-top: 15vh;">
   				<h3>There is no content.</h3>
		    </div>
			
	    </div>
	    
<div class="card m-2">
	<div class="card-header">	
		(Browser 1차) 유효성 검사
	</div>
	<div class="card-body">
	
		<div class="card m-2">
			<div class="card-header">
				POST 방식으로 요청
			</div>
			<div class="card-body">
				<form id="form0" method="post" action="method1" onsubmit="checkData(this)">
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text">param1</span>
						</div>
						<input type="text" name="param1" class="form-control" value="">
						<span class="param1-error text-danger"></span>
					</div>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text">param2</span>
						</div>
						<input type="text" name="param2" class="form-control" value="">
						<span class="param2-error text-danger"></span>
					</div>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text">param3</span>
						</div>
						<input type="text" name="param3" class="form-control" value="">
						<span class="param3-error text-danger"></span>
					</div>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text">param4</span>
						</div>
						<div class="btn-group btn-group-toggle" data-toggle="buttons">
							<label class="btn btn-secondary active">
								<input type="radio" name="param4" checked value="true"> true
							</label>
							<label class="btn btn-secondary"> 
								<input type="radio" name="param4" value="false"> false
							</label>
						</div>
					</div>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text">param5</span>
						</div>
						<input type="date" name="param5" class="form-control">
						<span class="param5-error text-danger"></span>
					</div>
					<input class="mt-2 btn btn-info btn-sm" type="submit" value="요청" />
				</form>
			</div>
			<script>
				function checkData(form) {
					// form의 제출 기능을 off
					event.preventDefault();
					
					// 유효성 검사 결과 변수
					let checkResult = true;
					
					// 입력 길이 체크
					let param1 = form.param1.value;
					const param1Error = document.querySelector("#form0 .param1-error");
					param1Error.innerHTML = "";
					if(param1 === "") {
						param1Error.innerHTML = "필수 입력 사항";
						checkResult = false;
					} else {
						if(param1.length < 8 || param1.length > 15) {
							param1Error.innerHTML = "8자 이상, 15자 이하로 입력";	
							checkResult = false;
						}
					}
					
					// 정규 표현식을 이용한 전화번호 형식 체크
					let param2 = form.param2.value;
					const param2Error = document.querySelector("#form0 .param2-error");
					param2Error.innerHTML = "";
					if(param2 === "") {
						param2Error.innerHTML = "필수 입력 사항";
						checkResult = false;
					} else {
						const pattern = /(010|011)-[0-9]{3,4}-[0-9]{4}/i; // {}괄호 안에 띄어쓰기X
						const result = pattern.test(param2);
						if(result === false) {
							param2Error.innerHTML = "전화번호 형식이 아님";
							checkResult = false;
						}
					}
					
					// 정규 표현식을 이용한 이메일 형식 체크
					let param3 = form.param3.value;
					const param3Error = document.querySelector("#form0 .param3-error");
					param3Error.innerHTML = "";
					if(param3 === "") {
						param3Error.innerHTML = "필수 입력 사항";
						checkResult = false;
					} else {
						const pattern = /([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)/i;
						const result = pattern.test(param3);
						if(result === false) {
							param3Error.innerHTML = "이메일 형식이 아님";
							checkResult = false;
						}
					}
					
					// 날짜가 비었는지 체크
					let param5 = form.param5.value;
					const param5Error = document.querySelector("#form0 .param5-error");
					param5Error.innerHTML = "";
					if(param1 === "") {
						param5Error.innerHTML = "필수 입력 사항";
						checkResult = false;
					}
					
					// 서버로 제출할지 말지 결정
					if(checkResult) {
						form.submit();
					}
					
				} //checkData() end
			</script>
		</div>

		<div class="card m-2">
			<div class="card-header">AJAX로 요청</div>
			<div class="card-body">
				<form id="form1" name="form1">
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text">param1</span>
						</div>
						<input type="text" id="param1" name="param1" class="form-control" value="">
						<span class="param1-error text-danger"></span>
					</div>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text">param2</span>
						</div>
						<input type="text" id="param2" name="param2" class="form-control" value="">
						<span class="param2-error text-danger"></span>
					</div>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text">param3</span>
						</div>
						<input type="text" id="param3" name="param3" class="form-control" value="">
						<span class="param3-error text-danger"></span>
					</div>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text">param4</span>
						</div>
						<div class="btn-group btn-group-toggle" data-toggle="buttons">
							<label class="btn btn-secondary active"> 
								<input type="radio" id="radio1" name="param4" checked value="true"> true
							</label> 
							<label class="btn btn-secondary"> 
								<input type="radio"	id="radio2" name="param4" value="false"> false
							</label>
						</div>
					</div>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text">param5</span>
						</div>
						<input type="date" id="param5" name="param5" class="form-control" value="">
						<span class="param5-error text-danger"></span>
					</div>
				</form>
 				<div class="mt-2">
					<button class="btn btn-info btn-sm" onclick="requestPost()">POST 방식 요청</button>
				</div>
			</div>
			
			<script>
				function requestPost() {
					let checkResult = true; // 유효성 검사 결과 변수
					
					const param1 = $("#param1").val(); // 주민번호: xxxxxx-(1,2,3,4)xxxxxx
					const param2 = $("#param2").val(); // 년월일: 19970331
					const param3 = $("#param3").val(); // 패스워드: 알파벳시작 최소8자 최대10자
					const param4 = $("#form1 input[name=param4]:checked").val();
					const param5 = $("#param5").val();
					
					const param1Error = $("#form1 .param1-error"); // jQuery 객체
					param1Error.html("");
					if(param1 === "") {
						param1Error.html("필수 입력 사항");
						checkData = false;
					} else {
						const pattern = /\d{2}([0]\d|[1][0-2])([0][1-9]|[1-2]\d|[3][0-1])[-]*[1-4]\d{6}/;
						const result = pattern.test(param1);
						if(result === false) {
							param1Error.html("주민번호 형식이 아님");
							checkData = false;
						}
					}
					
					const param2Error = $("#form1 .param2-error");
					param2Error.html("");
					if(param2 === "") {
						param2Error.html("필수 입력 사항");
						checkData = false;
					} else {
						const pattern = /^(19|20)\d{2}[-]*(0[1-9]|1[012])[-]*(0[1-9]|[12][0-9]|3[0-1])$/;
						const result = pattern.test(param2)
						if(result == false) {
							param2Error.html("년월일 형식이 아님");
							checkData = false;
						}
						
					}
					
					const param3Error = $("#form1 .param3-error");
					param3Error.html("");
					if(param3 === "") {
						param3Error.html("필수 입력 사항");
						checkData = false;
					} else {
						const pattern = /^[a-z]/i;
						const result = pattern.test(param3)
						if(result == false) {
							param3Error.html("패스워드 형식이 아님");
							checkData = false;
						} else if(param3.length < 8 || param3.length > 15) {
							param3Error.html("패스워드 형식이 아님");
							checkData = false;
						}
					}		 		
					
					if(checkData) {
						$.ajax({
							url:"method1",
							method:"get",
							data: {param1, 
								   param2, 
								   param3, 
								   param4, 
								   param5
							}
						})
						.done(() => {});
					}
	
				}
			</script>
		</div>
		
		<div class="card m-2">
			<div class="card-header">
				서버측 유효성 검사
			</div>
			<div class="card-body">
				<div class="card m-2">
					<div class="card-header">
						회원 가입 폼
					</div>
					<div class="card-body">
			
						<form method="post" action="join">
		                	<div class="input-group">
		                    	<div class="input-group-prepend">
		                        	<span class="input-group-text">mid</span>
		                        </div>
		                        <input type="text" name="mid" class="form-control" value="${joinForm.mid}" autocapitalize="username">
		                        <!-- ▼ Spring에서 제공하는 태그, 접두사..? -->
		                        <form:errors cssClass="text-danger" path="joinForm.mid"/>
		                	</div>
		                    <div class="input-group">
		                        <div class="input-group-prepend">
		                        	<span class="input-group-text">mpassword</span>
		                     	</div>
		                        <input type="password" name="mpassword" class="form-control" value="${joinForm.mpassword}">
		                        <form:errors cssClass="text-danger" path="joinForm.mpassword"/>
		                    </div>
		                    <div class="input-group">
		                        <div class="input-group-prepend">
		                        	<span class="input-group-text">memail</span>
		                        </div>
		                        <input type="text" name="memail" class="form-control" value="${joinForm.memail}">
		                        <form:errors cssClass="text-danger" path="joinForm.memail"/>
		                    </div>
		                    <div class="input-group">
		                        <div class="input-group-prepend">
		                        	<span class="input-group-text">mtel</span>
		                        </div>
		                        <input type="text" name="mtel" class="form-control" value="${joinForm.mtel}">
		                        <form:errors cssClass="danger" path="joinForm.mtel"/>
		                    </div>
		                	<input class="btn btn-info" type="submit" value="가입"/>
		            	</form>
                	</div>
				</div>

				<div class="card m-2">
					<div class="card-header">
						로그인 폼
					</div>
					<div class="card-body">
						<form method="post" action="login">
                     		<div class="input-group">
                       			<div class="input-group-prepend"><span class="input-group-text">mid</span></div>
                        		<input type="text" name="mid" class="form-control" value="${loginForm.mid}">
                        		<form:errors cssClass="error" path="loginForm.mid"/>
                     		</div>
                     		<div class="input-group">
                        		<div class="input-group-prepend"><span class="input-group-text">mpassword</span></div>
                        		<input type="password" name="mpassword" class="form-control" value="${loginForm.mpassword}">
                        		<form:errors cssClass="error" path="loginForm.mpassword"/>
                     		</div>
                     		<input class="btn btn-info" type="submit" value="로그인"/>
                  		</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	
</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>