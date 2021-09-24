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
	
		<!-- ch10/content 화면 기본구성 -->
		<div class="container col-4" style="margin-top: 15vh;">
		    <div class="mb-3 d-flex">
				<h2>🚨 예외 처리 - ch10/content</h2>
		    </div>
			<hr class="my-3">
			<h4 class="my-3">try-catch를 이용한 예외 처리</h4>
			<a href="handlingException1" class="btn btn-danger btn-sm">예외 처리 - NullPointerException</a>
			
			<h4 class="my-3">예외 처리 클래스 이용한 예외 처리</h4>
			<a href="handlingException2" class="btn btn-danger btn-sm mb-2">예외 처리 - NullPointerException</a>
			<br>
			<a href="handlingException3" class="btn btn-danger btn-sm mb-2">예외 처리 - ClassCastException</a>
			<br>
			<a href="handlingException4" class="btn btn-danger btn-sm">예외 처리 - ArrayIndexOutOfBoundsException</a>
			
			<h4 class="my-3">사용자 정의 예외 처리</h4>
			<a href="handlingException5" class="btn btn-danger btn-sm">예외 처리</a>
	    </div>
	
</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>