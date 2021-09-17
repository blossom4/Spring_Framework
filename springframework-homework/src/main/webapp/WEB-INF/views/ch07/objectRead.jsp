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
	
		<!-- ch07/objectRead 화면 기본구성 -->
		<div class="container col-4" style="margin-top: 15vh;">
		    <div class="mb-3 d-flex">
				<h2>🚀 Data Delivery - ch07/objectRead</h2>
		    </div>
			<hr class="mt-3 mb-4">
			<h3 class="mb-4">Expressions Language - Object 데이터 출력</h3>
			<h4 class="my-3">•방법: ${member.method}</h4>
			<h4 class="my-3">•이름: ${member.name}</h4>
			<h4 class="my-3">•나이: ${member.age}</h4>
			<h4 class="my-3">•직업: ${member.job}</h4>	
			<h4 class="my-3">•도시: ${member.city.name}</h4>	
			
	    </div>
	
</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>