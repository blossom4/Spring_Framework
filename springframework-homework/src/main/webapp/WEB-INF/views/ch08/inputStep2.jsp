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
	
		<!-- ch08/inputStep2 화면 기본구성 -->
		<div class="container col-4" style="margin-top: 15vh;">
		    <div class="mb-3 d-flex">
				<h2>✖ @SessionAttribute - ch08/inputStep2</h2>
		    </div>
			<hr class="my-3">
				<h4 class="my-3">2단계 입력</h4>
				<div class="">
					<form method="post" action="inputDone">
						<div class="input-group">
							<div class="input-group-prepend"><span class="input-group-text">data3</span></div>
							<input type="text" id="data3" name="data3" class="form-control" value="${inputForm.data3}">
						</div>
			
						<div class="input-group">
							<div class="input-group-prepend"><span class="input-group-text">data4</span></div>
							<input type="text" id="data4" name="data4" class="form-control" value="${inputForm.data4}">
						</div>
						<div class="my-3">
							<a class="btn btn-dark btn-sm" href="inputStep1">뒤로가기</a>
							<input class="btn btn-dark btn-sm" type="submit" value="완료"/>
						</div>
					</form>
				</div>

			
	    </div>
	
</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>