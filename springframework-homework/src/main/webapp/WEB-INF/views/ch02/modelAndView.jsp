<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 네이게이션 바 -->
<%@ include file="/WEB-INF/views/common/navbar.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<!-- ch02/modelAndView 화면 기본구성 -->
		<div class="container col-4" style="margin-top: 15vh;">
		    <div class="mb-3 d-flex">
				<h2>✖ 예시 화면 - ch02/modelAndView</h2>
		    </div>
		    <!-- 입력 폼 / 버튼 -->
		    <div class="input-group mt-3 mb-4">
		      <input class="form-control" type="text" placeholder="내용을 추가해주세요.">
		      <button class="btn btn-dark" type="button" id="button-addon2">Add</button>
		    </div>
		    <!-- 목록 -->
		    <div class="text-center" style="margin-top: 15vh;">
   				<h3>There is no content.</h3>
		    </div>
			
	    </div>

</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>