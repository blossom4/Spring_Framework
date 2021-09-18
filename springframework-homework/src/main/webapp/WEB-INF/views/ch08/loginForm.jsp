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
	
		<!-- ch02/login 화면 기본구성 -->
		<div class="container col-4" style="margin-top: 15vh;">
		    <div class="mb-3 d-flex">
				<h2>🔑 로그인 - ch02/login</h2>
		    </div>
			<hr>
			<h3 class="mb-3">Login</h3>
			<div class="card-header">
				Login Form	
			</div>
			<div class="card-body">
				<form method="post" action="login">
					<div class="input-group">
						<div class="input-group-prepend"><span class="input-group-text">mid</span></div>
						<input type="text" name="mid" class="form-control">
					</div>
					<div class="input-group">
						<div class="input-group-prepend"><span class="input-group-text">mpassword</span></div>
						<input type="password" name="mpassword" class="form-control">
					</div>
					<div class="mt-2">
						<input class="btn btn-info btn-sm" type="submit" value="로그인" />
						<input class="btn btn-info btn-sm" type="reset" value="다시작성" />
						<a class="btn btn-info btn-sm" href="content">취소</a>		
					</div>
				</form>
			</div>

		</div>

	
</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>