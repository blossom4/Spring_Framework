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
		    <!-- 입력 폼 / 버튼 -->
		    <div class="input-group mt-3 mb-4">
		      <input class="form-control" type="text" placeholder="내용을 추가해주세요.">
		      <button class="btn btn-dark" type="button" id="button-addon2">Add</button>
		    </div>
		    
			<div class="card-header">
				요청 HTTP 헤더 정보 읽기
			</div>
			<div class="card-body">
				<a href="getHeaderValue" class="btn btn-danger btn-sm">요청</a>
			</div>
		</div>
		<div class="card m-2">
			<div class="card-header">
				쿠기 저장 및 읽기
			</div>
			<div class="card-body">
				<a href="createCookie" class="btn btn-danger btn-sm">🍪 쿠키 생성</a>
				<a href="getCookie1" class="btn btn-danger btn-sm">쿠기 읽기(서버)</a>
				<a href="getCookie2" class="btn btn-danger btn-sm">쿠기 읽기(서버)</a>
				<a href="#" class="btn btn-danger btn-sm" onclick="getCookie()">쿠기 읽기(JavaScript)</a>
				<hr/>
				<a href="createJsonCookie" class="btn btn-danger btn-sm">JSON 쿠기 생성</a>	
				<a href="getJsonCookie" class="btn btn-danger btn-sm">JSON 쿠기 읽기</a>	
				<hr/>
				<a href="createJwtCookie" class="btn btn-danger btn-sm">JWT 쿠기 생성</a>	
				<a href="getJwtCookie" class="btn btn-danger btn-sm">JWT 쿠기 읽기</a>				
			</div>
			<script>
				function getCookie() {
					console.log(document.cookie);
				}
			</script>
		</div>


</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>