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

	<!-- ch06/forward 화면 기본구성 -->
	<div class="container col-4" style="margin-top: 15vh;">
	    <div class="mb-3 d-flex">
			<h2>➡ Forward방식과 Redirect방식 - ch06/content</h2>
	    </div>

	    <div class="text-center" style="margin-top: 15vh; margin-bottom: 10vh;">
			<h3>Forward Request Success :)</h3>
	    </div>
	    
	    <div class="d-flex justify-content-center my-5">
	    	<a href="/ch06/content" class="btn btn-dark col-3">Go Back</a>
	    </div>
		
    </div>
	
</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>