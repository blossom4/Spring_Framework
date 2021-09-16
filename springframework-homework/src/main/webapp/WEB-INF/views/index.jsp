<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 네이게이션 바 -->
<%@ include file="/WEB-INF/views/common/navbar.jsp"%>

<%-- Redirecdt method 
<%response.sendRedirect("/ch01/content");%>
--%>
<html>
<head>
	<title>Index</title>
	<style>
  	
	  	.paginator {
		  transition: 0.1s;
		  cursor: pointer;
	  	}
	  	.paginator:active {
		  transform: scale(0.1);
		  opacity: 0.5;
	  	}
	  	
  	
    </style>
</head>
<body>
		<!-- index 화면 기본구성 -->
		<div class="container col-4" style="margin-top: 15vh;">
		    <div class="mb-3 d-flex">
				<h2>🍏 스프링 프레임워크 연습목록 - index</h2>
		    </div>
		    <!-- 입력 폼 / 버튼 -->
		    <div class="input-group mt-3 mb-4">
		      <input class="form-control" type="text" placeholder="내용을 추가해주세요.">
		      <button class="btn btn-dark" type="button" id="button-addon2">Add</button>
		    </div>
		    <!-- Index Page 1 -->
		    <div id="page1" style="display: block;">
			<div class="d-flex justify-content-between">
				<h3><a class="text-decoration-none text-dark fs-4 my-1" href="${pageContext.request.contextPath}/ch01/content">ch01. ✖ 예시 화면</a></h3>
				<a class="text-decoration-none text-dark fs-4 my-1" href="${pageContext.request.contextPath}/ch01/content">></a>
			</div>
			<div class="d-flex justify-content-between">
				<h3><a class="text-decoration-none text-dark fs-4 my-1" href="${pageContext.request.contextPath}/ch02/content">ch02. 💠 방식별 메소드 매핑</a></h3>
				<a class="text-decoration-none text-dark fs-4 my-1" href="${pageContext.request.contextPath}/ch02/content">></a>
			</div>
			<div class="d-flex justify-content-between">
				<h3><a class="text-decoration-none text-dark fs-4 my-1" href="${pageContext.request.contextPath}/ch03/content">ch03. 📢 매개변수 요청</a></h3>
				<a class="text-decoration-none text-dark fs-4 my-1" href="${pageContext.request.contextPath}/ch03/content">></a>
			</div>
			<div class="d-flex justify-content-between">
				<h3><a class="text-decoration-none text-dark fs-4 my-1" href="${pageContext.request.contextPath}/ch04/content">ch04. 💡 유효성 검사</a></h3>
				<a class="text-decoration-none text-dark fs-4 my-1" href="${pageContext.request.contextPath}/ch04/content">></a>
			</div>
			<div class="d-flex justify-content-between">
				<h3><a class="text-decoration-none text-dark fs-4 my-1" href="${pageContext.request.contextPath}/ch05/content">ch05. 📝 HTTP 정보 읽기 및 설정</a></h3>
				<a class="text-decoration-none text-dark fs-4 my-1" href="${pageContext.request.contextPath}/ch05/content">></a>
			</div>
			</div>
			
			<!-- Index Page 2 -->
			<div id="page2" style="display: none;">
			<div class="d-flex justify-content-between">
				<h3><a class="text-decoration-none text-dark fs-4 my-1" href="${pageContext.request.contextPath}/ch06/content">ch06. ➡ Forward방식과 Redirect방식</a></h3>
				<a class="text-decoration-none text-dark fs-4 my-1" href="${pageContext.request.contextPath}/ch06/content">></a>
			</div>
			<div class="d-flex justify-content-between">
				<h3><a class="text-decoration-none text-dark fs-4 my-1" href="${pageContext.request.contextPath}/ch07/content">ch07. 💾 객체(데이터) 사용 범위</a></h3>
				<a class="text-decoration-none text-dark fs-4 my-1" href="${pageContext.request.contextPath}/ch07/content">></a>
			</div>
			</div>			
			
	    </div>
	    
		<div class="mt-5 d-flex justify-content-center fixed-bottom" style="margin-bottom: 10vh;">
			<h2 class="paginator" onclick="changePage1()">1</h2>
			<div class="mx-1">&nbsp;</div>
			<h2 class="paginator" onclick="changePage2()">2</h2>
		</div>
	    
	    <script>
	    	function changePage1() {
	    		const movePage1 = document.getElementById("page1");
	    		const movePage2 = document.getElementById("page2");

	    		console.log("page1 Click")
	    		if (movePage1.style.display == "none") {
	    			movePage1.style.display = "block";
	    			movePage2.style.display = "none";
	    		} 

	    	}
	    	
	    	function changePage2() {
	    		const movePage1 = document.getElementById("page1");
	    		const movePage2 = document.getElementById("page2");

	    		console.log("page2 Click")
	    		if (movePage2.style.display == "none") {
	    			movePage2.style.display = "block";
	    			movePage1.style.display = "none";
	    		} 

	    	}
	    </script>


</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>