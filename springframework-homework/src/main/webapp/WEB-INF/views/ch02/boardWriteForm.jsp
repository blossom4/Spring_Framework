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
	
		<!-- ch02/boardWriteForm 화면 기본구성 -->
		<div class="container col-4" style="margin-top: 15vh;">
		    <div class="mb-3 d-flex">
				<h2>💬 게시물 작성 - ch02/boardWriteForm</h2>
		    </div>
		    <hr class="mb-3">
		    
			<h3 class="mb-3">게시물 작성</h3>
			<form method="POST" action="${pageContext.request.contextPath}/ch02/boardwrite">
				<div class="form-group my-4">
					<h5 class="fs-6">제목</h5>
					<input type="text" class="form-control" id="title" placeholder="Title">
				</div>
				<div class="form-group">
					<h5 class="fs-6">내용</h5>
					<textarea class="form-control" id="content" placeholder="Content"></textarea>
				</div>

				<div class="d-flex my-3 justify-content-end">
					<button type="submit" class="btn btn-dark col-2">저장</button>
				</div>
			</form>
		</div>

</body>
</html>

<!-- 하단 고정 footer -->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>