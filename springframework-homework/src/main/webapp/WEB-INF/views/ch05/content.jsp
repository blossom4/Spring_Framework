<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 네이게이션 바 -->
<%@ include file="/WEB-INF/views/common/navbar.jsp"%>

<html>
<head>
	<title>Index</title>
</head>
<body>
		<!-- ch05/content 화면 기본구성 -->
		<div class="container col-4" style="margin-top: 15vh;">
		    <div class="mb-3 d-flex">
				<h2>📝 HTTP 정보 읽기 및 설정 - ch05/content</h2>
		    </div>
			
			<hr class="my-3">
		    
			<h4 class="my-3">요청 HTTP 헤더 정보 읽기</h4>
			<ul>
				<li>Method</li>
				<li>Request URI</li>
				<li>Client IP</li>
				<li>Context Root</li>
				<li>User Agent</li>
				<li>Client OS</li>
				<li>Client Browser</li>
			</ul>
			<div class="d-flex justify-content-center">
				<a href="getHeaderValue" class="btn btn-danger col-3">요청</a>
			</div>
			

			<h4 class="mt-5 mb-3">쿠키 저장 및 읽기</h4>
			<a href="createCookie" class="btn btn-danger">쿠키 생성</a>
			<a href="getCookie1" class="btn btn-danger">쿠키 읽기1 (서버)</a>
			<a href="getCookie2" class="btn btn-danger">쿠키 읽기2 (서버)</a>
			<a href="#" class="btn btn-danger" onclick="getCookie()">쿠키 읽기 (Console.log)</a>
			<hr/>
			<a href="createJsonCookie" class="btn btn-danger">JSON 쿠키 생성</a>	
			<a href="getJsonCookie" class="btn btn-danger">JSON 쿠키 읽기</a>	
			<hr/>
			<a href="createJwtCookie" class="btn btn-danger">JWT 쿠키 생성</a>	
			<a href="getJwtCookie" class="btn btn-danger">JWT 쿠키 읽기</a>				
		</div>
		
		<script>
			function getCookie() {
				console.log(document.cookie);
			}
		</script>



</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>