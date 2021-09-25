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
	
		<!-- ch11/content 화면 기본구성 -->
		<div class="container col-4" style="margin-top: 15vh;">
		    <div class="mb-3 d-flex">
				<h2>🔖 String Tag Library - ch11/content</h2>
		    </div>
			<hr class="mt-3 mb-4">
			<div class="d-flex justify-content-between my-3">
				<h5>1. DTO 객체(Command Object)와 폼 연결</h5>
				<a href="form1" class="btn btn-dark btn-sm">form1</a>
			</div>
			<div class="d-flex justify-content-between my-3">
				<h5>2. DTO 객체의 필드값을 양식의 드롭다운리스트(select 태그)로 세팅</h5>
				<a href="form2" class="btn btn-dark btn-sm">form2</a>
			</div>
			<div class="d-flex justify-content-between my-3">
				<h5>3. DTO 객체의 필드값을 양식의 드롭다운리스트(checkbox 태그)로 세팅</h5>
				<a href="form3" class="btn btn-dark btn-sm">form3</a>
			</div>
			<div class="d-flex justify-content-between my-3">
				<h5>4. DTO 객체의 필드값을 양식의 드롭다운리스트(radio 태그)로 세팅</h5>
				<a href="form4" class="btn btn-dark btn-sm">form4</a>
			</div>
			<div class="d-flex justify-content-between my-3">
				<h5>5. 국제화를 적용한 폼</h5>
				<a href="form5" class="btn btn-dark btn-sm">form5</a>
			</div>
	    </div>
	
</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>