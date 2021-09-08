<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/views/common/navbar.jsp"%>
    
<%-- Redirecdt method 
<%response.sendRedirect("/ch01/content");%>
--%>
<html>
<head>
	<title>Index</title>
</head>
<body>

		<div class="container col-4" style="margin-top: 15vh;">
		    <div class="mb-3 d-flex">
				<h2>🍏 프로젝트 생성 및 실행 - Index</h2>
		    </div>
		    <div class="input-group mt-3 mb-4">
		      <input class="form-control" type="text" placeholder="목록을 추가해주세요.">
		      <button class="btn btn-outline-secondary" type="button" id="button-addon2">Add</button>
		    </div>
		    <div>
				<h5>1. sts설치</h5>
				<h5>2. 플러그인 설치</h5>
				<h5>3. 프로젝트 생성</h5>
				<h5>4. 프로젝트 설정</h5>
				<h5>5. 버전 확인</h5>
		    </div>
    	</div>



</body>
</html>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>