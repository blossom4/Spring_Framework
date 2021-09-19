<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    
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
	
		<!-- ch08/content 화면 기본구성 -->
		<div class="container col-4" style="margin-top: 15vh;">
		    <div class="mb-3 d-flex">
				<h2>🍪 Session Support - ch08/content</h2>
		    </div>
		    <hr class="my-3">
	
			<h4 class="my-3">세션 원리: JSESSIONID 쿠키</h4>

				<h6 class="mt-4">•서버: 세션생성-> JSESSIONID 쿠키 발생</h6>
				<h6 class="my-3">•브라우저: JSESSIONID 쿠키 전송 -> 세션 객체 찾음 -> 세션 이름</h6>
				
				<a href="javascript:saveData()" class="btn btn-dark btn-sm">세션에 데이터 저장</a>
				<a href="javascript:readData()" class="btn btn-dark btn-sm">세션에 데이터 읽기</a>


			
			<h4 class="my-3">form을 통한 login 처리</h4>
			<div class="">
				<c:if test="${sessionMid == null}">
					<a href="login" class="btn btn-dark btn-sm">로그인 폼 요청</a>
				</c:if>
				<c:if test="${sessionMid != null}">
					<a href="logout" class="btn btn-dark btn-sm">로그아웃</a>
				</c:if>
			</div>

			<h4 class="my-3">AJAX를 통한 login 처리</h4>
			<div class="">
				<c:if test="${sessionMid == null}">
					<form>
						<div class="input-group">
							<div class="input-group-prepend"><span class="input-group-text">mid</span></div>
							<input id="mid" type="text" name="mid" class="form-control">
							<span id="mid-error" class="error"></span>
						</div>
						<div class="input-group">
							<div class="input-group-prepend"><span class="input-group-text">mpassword</span></div>
							<input id="mpassword" type="password" name="mpassword" class="form-control">
							<span id="mpassword-error" class="error"></span>
						</div>
					</form>
				</c:if>
				<div class="mt-2">
					<c:if test="${sessionMid == null}">
						<a href="javascript:login()" class="btn btn-dark btn-sm">로그인</a>
					</c:if>
					<c:if test="${sessionMid != null}">
						<a href="javascript:logout()" class="btn btn-dark btn-sm">로그아웃</a>
					</c:if>
				</div>
				
			<h4 class="my-3">@SessionAttribute를 이용한 다단계 입력 처리</h4>
			<div class="">
				<a href="inputStep1" class="btn btn-dark btn-sm">1단계 입력</a>
			</div>

			</div>
		</div>
				
		<script>
		
			function saveData() {
				$.ajax({
					url: "saveData",
					data: {name: "Youngshin Jo"}
				}).
				done((data) => {
					console.log(data);
				});
			}
			
			function readData() {
				$.ajax({
					url: "readData"
				}).
				done((data) => {
					console.log(data); //{name:"홍길동"}
					console.log(data.name);
				});
			}
			
			function login() {
				let mid = $("#mid").val();
				let mpassword = $("#mpassword").val();
				
				$.ajax({
					url: "loginAjax",
					data: {mid, mpassword},
					method: "post"
				}).done((data) => {
					// data = {result: "success"} 로그인 성공 시
					// data = {result: "wrongMid"} 로그인 실패 시 아이디 원인일 경우
					// data = {result: "wrongMpassword"} 로그인 실패 시 비밀번호 원인일 경우
					
					const midError = $("#mid-error");
					const mpasswordError = $("#mpassword-error");
					midError.html("");
					mpasswordError.html("");
					
					if(data.result === "success") {
						// 현재 페이지 전체를 다시 서버에서 받아오도록 함
						window.location.reload();
					} else if(data.result === "wrongMid") {
						midError.html("ID를 다시 확인해주세요.");
					} else if(data.result === "wrongMpassword") {
						mpasswordError.html("비밀번호를 다시 확인해주세요.");
					}			
					});
			}
			
			function logout() {
				$.ajax({
					url: "logoutAjax"
				}).done((data) => {
					//data = {result:"success"}
					window.location.reload();
				})
			}
			
		</script>

</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>