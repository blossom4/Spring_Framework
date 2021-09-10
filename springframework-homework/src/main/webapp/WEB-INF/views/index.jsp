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
		    <!-- 목록 -->
			<div class="d-flex justify-content-between">
				<h3><a class="text-decoration-none text-dark fs-4 my-1" href="${pageContext.request.contextPath}/ch01/content">1. ch01</a></h3>
				<a class="text-decoration-none text-dark fs-4 my-1" href="${pageContext.request.contextPath}/ch01/content">></a>
			</div>
			<div class="d-flex justify-content-between">
				<h3><a class="text-decoration-none text-dark fs-4 my-1" href="${pageContext.request.contextPath}/ch02/content">2. ch02</a></h3>
				<a class="text-decoration-none text-dark fs-4 my-1" href="${pageContext.request.contextPath}/ch02/content">></a>
			</div>
			<div class="d-flex justify-content-between">
				<h3><a class="text-decoration-none text-dark fs-4 my-1" href="${pageContext.request.contextPath}/ch03/content">3. ch03</a></h3>
				<a class="text-decoration-none text-dark fs-4 my-1" href="${pageContext.request.contextPath}/ch03/content">></a>
			</div>
			<div class="d-flex justify-content-between">
				<h3><a class="text-decoration-none text-dark fs-4 my-1" href="${pageContext.request.contextPath}/ch04/content">4. ch04</a></h3>
				<a class="text-decoration-none text-dark fs-4 my-1" href="${pageContext.request.contextPath}/ch04/content">></a>
			</div>
			<div class="d-flex justify-content-between">
				<h3><a class="text-decoration-none text-dark fs-4 my-1" href="${pageContext.request.contextPath}/ch05/content">5. ch05</a></h3>
				<a class="text-decoration-none text-dark fs-4 my-1" href="${pageContext.request.contextPath}/ch05/content">></a>
			</div>
			 
	    </div>


</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>