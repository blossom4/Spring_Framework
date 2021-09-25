<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 네이게이션 바 -->
<%@ include file="/WEB-INF/views/common/navbar.jsp"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
	
		<!-- ch11/form1 화면 기본구성 -->
		<div class="container col-4" style="margin-top: 15vh;">
		    <div class="mb-3 d-flex">
				<h2>🔖 String Tag Library - ch11/form1</h2>
		    </div>
			<hr class="my-3">
			<h4 class="my-3">1. DTO 객체(Command Object)와 폼 연결</h4>
			<form:form method="post" modelAttribute="member">
			  <div class="form-group  mb-2">
			    <label for="mid">아이디</label>
			    <form:input type="text" class="form-control" path="mid"/> <!-- path 태그가 id와 name을 자동 생성함 -->
			  </div>
			  <div class="form-group  mb-2">
			    <label for="mname">이름</label>
			    <form:input type="text" class="form-control" id="mname" name="mname" path="mname"/>
			  </div>
			  <div class="form-group  mb-2">
			    <label for="mpassword">비밀번호</label>
			    <form:password class="form-control" id="mpassword" path="mpassword"/>
			  </div>
			  <div class="form-group  mb-2">
			    <label for="mnation">국가</label>
			    <form:input type="text" class="form-control" id="mnation" path="mnation"/>
			  </div>
			  <div class="d-flex justify-content-end mt-2">
			  	<button type="submit" class="btn btn-dark">제출</button>
			  </div>
			</form:form>

	    </div>
	
</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>