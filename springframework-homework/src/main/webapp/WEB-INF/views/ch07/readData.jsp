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
	
		<!-- ch07/readData 화면 기본구성 -->
		<div class="container col-4" style="margin-top: 15vh;">
		    <div class="mb-3 d-flex">
				<h2>🚀 Data Delivery - ch07/readData</h2>
		    </div>
			<hr class="mt-3 mb-4">

			<h3 class="mb-4">객체(데이터) 사용 범위</h3>
			<h4 class="my-3">1. Request범위에서 읽기: ${requestData}</h4>
			<h4 class="my-3">2. Session범위에서 읽기: ${sessionData}</h4>
			<h4 class="my-3">3. Application범위에서 읽기: ${applicationData}</h4>			

	    </div>
	
</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>