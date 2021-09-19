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
	
		<!-- ch08/inputStep1 화면 기본구성 -->
		<div class="container col-4" style="margin-top: 15vh;">
		    <div class="mb-3 d-flex">
				<h2>✖ @SessionAttribute - ch08/inputStep1</h2>
		    </div>
			<hr class="my-3">
			<h4 class="my-3">1단계 입력</h4>
			<div class="">
				<form method="post" action="inputStep2">
				   <div class="input-group">
				      <div class="input-group-prepend"><span class="input-group-text">data1</span></div>
				      <input type="text" id="data1" name="data1" class="form-control" value="${inputForm.data1}">
				   </div>   
				   
				   <div class="input-group">
				      <div class="input-group-prepend"><span class="input-group-text">data2</span></div>
				      <input type="text" id="data2" name="data2" class="form-control" value="${inputForm.data2}">
				   </div>
				   <input class="btn btn-dark btn-sm my-3" type="submit" value="2단계 입력으로 이동"/>
				</form>
			</div>

	    </div>
	
</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>