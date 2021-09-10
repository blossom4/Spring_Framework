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
	
		<!-- ch02/login 화면 기본구성 -->
		<div class="container col-4" style="margin-top: 15vh;">
		    <div class="mb-3 d-flex">
				<h2>🔑 로그인 - ch02/login</h2>
		    </div>
			<hr>
			<h3 class="mb-3">Login</h3>

			<form method="POST" action="${pageContext.request.contextPath}/">
				<div class="form-group mb-3">
					<label for="exampleInputEmail1" class="fs-6 mb-1">Email address</label>
					<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
					<h5 class="text-muted fs-6 mt-1">▪ ID @ example.com</h5>					
					<h5 class="text-muted fs-6 mt-1">▪ We'll never share your email with anyone else.</h5>
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1" class="fs-6 mb-1">Password</label>
					<input type="password" class="form-control" id="exampleInputPasswod1">
				</div>
				<h5 class="text-muted fs-6 mt-1">▪ The password must be at least 8 digits.</h5>
				<div class="form-group form-check">
					<input type="checkbox" class="form-check-input" id="exampleCheck1">
					<label class="form-Check-label text-muted" for="exampleCheck1">Check me out!</label>
				</div>
				<div class="d-flex justify-content-center">
					<button type="submit" class="btn btn-dark col-3 mt-5">로그인</button>
				</div>

			</form>

		</div>

	
</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>